library ieee;
use ieee.std_logic_1164.all;

entity codec1_2 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63,y64,y65,y66,y67,y68,y69,y70,y71,y72,y73,y74,y75,
	y76,y77,y78,y79,y80,y81,y82,y83,y84,y85,y86,y87,y88,y89,y90,
	y91,y92,y93,y94,y95,y96,y97,y98,y99,y100,y101,y102,y103,y104,y105,
	y106,y107,y108 : out std_logic );
end codec1_2;

architecture ARC of codec1_2 is

   type states_codec1_2 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,
	s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,
	s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,
	s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,
	s166,s167,s168,s169,s170,s171,s172,s173,s174,s175,s176,s177,s178,s179,s180,
	s181,s182,s183,s184,s185,s186,s187,s188,s189,s190 );
   signal current_codec1_2 : states_codec1_2;

begin
   process (clk , rst)
   procedure proc_codec1_2 is
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
	y73  <= '0' ;	y74  <= '0' ;	y75  <= '0' ;	y76  <= '0' ;
	y77  <= '0' ;	y78  <= '0' ;	y79  <= '0' ;	y80  <= '0' ;
	y81  <= '0' ;	y82  <= '0' ;	y83  <= '0' ;	y84  <= '0' ;
	y85  <= '0' ;	y86  <= '0' ;	y87  <= '0' ;	y88  <= '0' ;
	y89  <= '0' ;	y90  <= '0' ;	y91  <= '0' ;	y92  <= '0' ;
	y93  <= '0' ;	y94  <= '0' ;	y95  <= '0' ;	y96  <= '0' ;
	y97  <= '0' ;	y98  <= '0' ;	y99  <= '0' ;	y100 <= '0' ;
	y101 <= '0' ;	y102 <= '0' ;	y103 <= '0' ;	y104 <= '0' ;
	y105 <= '0' ;	y106 <= '0' ;	y107 <= '0' ;	y108 <= '0' ;


   case current_codec1_2 is
   when s1 =>
      if ( x2 and x1 and x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_codec1_2 <= s1;

      elsif ( x2 and x1 and not x4 ) = '1' then
         y1 <= '1' ;
         current_codec1_2 <= s2;

      elsif ( x2 and not x1 and x3 ) = '1' then
         y12 <= '1' ;
         current_codec1_2 <= s3;

      elsif ( x2 and not x1 and not x3 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         current_codec1_2 <= s4;

      else
         current_codec1_2 <= s1;

      end if;

   when s2 =>
         y1 <= '1' ;
         y2 <= '1' ;
         current_codec1_2 <= s1;

   when s3 =>
         y19 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_codec1_2 <= s5;

   when s4 =>
         y19 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_codec1_2 <= s6;

   when s5 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s7;

   when s6 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s8;

   when s7 =>
         y37 <= '1' ;
         current_codec1_2 <= s9;

   when s8 =>
         y37 <= '1' ;
         current_codec1_2 <= s10;

   when s9 =>
      if ( x11 ) = '1' then
         y17 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         current_codec1_2 <= s11;

      else
         y24 <= '1' ;
         current_codec1_2 <= s5;

      end if;

   when s10 =>
      if ( x11 ) = '1' then
         y15 <= '1' ;
         current_codec1_2 <= s12;

      else
         y24 <= '1' ;
         current_codec1_2 <= s6;

      end if;

   when s11 =>
         y32 <= '1' ;
         current_codec1_2 <= s13;

   when s12 =>
         y21 <= '1' ;
         y61 <= '1' ;
         current_codec1_2 <= s14;

   when s13 =>
         y66 <= '1' ;
         y64 <= '1' ;
         current_codec1_2 <= s15;

   when s14 =>
         y59 <= '1' ;
         current_codec1_2 <= s16;

   when s15 =>
         y94 <= '1' ;
         y95 <= '1' ;
         current_codec1_2 <= s17;

   when s16 =>
         y59 <= '1' ;
         y60 <= '1' ;
         current_codec1_2 <= s18;

   when s17 =>
         y91 <= '1' ;
         current_codec1_2 <= s19;

   when s18 =>
         y52 <= '1' ;
         current_codec1_2 <= s20;

   when s19 =>
         y73 <= '1' ;
         current_codec1_2 <= s21;

   when s20 =>
         y63 <= '1' ;
         y38 <= '1' ;
         y22 <= '1' ;
         current_codec1_2 <= s22;

   when s21 =>
         y59 <= '1' ;
         current_codec1_2 <= s23;

   when s22 =>
         y59 <= '1' ;
         current_codec1_2 <= s24;

   when s23 =>
         y59 <= '1' ;
         y60 <= '1' ;
         current_codec1_2 <= s25;

   when s24 =>
         y59 <= '1' ;
         y60 <= '1' ;
         current_codec1_2 <= s26;

   when s25 =>
         y52 <= '1' ;
         current_codec1_2 <= s27;

   when s26 =>
         y52 <= '1' ;
         current_codec1_2 <= s28;

   when s27 =>
         y104 <= '1' ;
         y105 <= '1' ;
         current_codec1_2 <= s29;

   when s28 =>
      if ( x19 ) = '1' then
         y63 <= '1' ;
         current_codec1_2 <= s30;

      elsif ( not x19 and x18 ) = '1' then
         y38 <= '1' ;
         current_codec1_2 <= s30;

      elsif ( not x19 and not x18 and x12 ) = '1' then
         y23 <= '1' ;
         current_codec1_2 <= s31;

      else
         y22 <= '1' ;
         current_codec1_2 <= s22;

      end if;

   when s29 =>
         y106 <= '1' ;
         current_codec1_2 <= s32;

   when s30 =>
      if ( x12 ) = '1' then
         y23 <= '1' ;
         current_codec1_2 <= s31;

      else
         y22 <= '1' ;
         current_codec1_2 <= s22;

      end if;

   when s31 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s33;

   when s32 =>
      if ( x22 and x23 ) = '1' then
         y92 <= '1' ;
         current_codec1_2 <= s34;

      elsif ( x22 and not x23 ) = '1' then
         y96 <= '1' ;
         current_codec1_2 <= s35;

      else
         y71 <= '1' ;
         current_codec1_2 <= s21;

      end if;

   when s33 =>
         y37 <= '1' ;
         current_codec1_2 <= s36;

   when s34 =>
         y89 <= '1' ;
         current_codec1_2 <= s37;

   when s35 =>
         y90 <= '1' ;
         current_codec1_2 <= s38;

   when s36 =>
         y62 <= '1' ;
         current_codec1_2 <= s39;

   when s37 =>
         y95 <= '1' ;
         current_codec1_2 <= s40;

   when s38 =>
         y93 <= '1' ;
         current_codec1_2 <= s19;

   when s39 =>
         y21 <= '1' ;
         y26 <= '1' ;
         current_codec1_2 <= s41;

   when s40 =>
         y104 <= '1' ;
         y107 <= '1' ;
         current_codec1_2 <= s42;

   when s41 =>
      if ( x21 ) = '1' then
         y68 <= '1' ;
         y69 <= '1' ;
         current_codec1_2 <= s43;

      else
         y67 <= '1' ;
         current_codec1_2 <= s44;

      end if;

   when s42 =>
         y106 <= '1' ;
         current_codec1_2 <= s45;

   when s43 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s46;

   when s44 =>
         y24 <= '1' ;
         current_codec1_2 <= s41;

   when s45 =>
         y63 <= '1' ;
         y38 <= '1' ;
         y98 <= '1' ;
         current_codec1_2 <= s47;

   when s46 =>
         y37 <= '1' ;
         current_codec1_2 <= s48;

   when s47 =>
         y104 <= '1' ;
         y107 <= '1' ;
         current_codec1_2 <= s49;

   when s48 =>
      if ( x9 ) = '1' then
         y28 <= '1' ;
         current_codec1_2 <= s50;

      else
         y14 <= '1' ;
         y57 <= '1' ;
         y58 <= '1' ;
         current_codec1_2 <= s51;

      end if;

   when s49 =>
         y106 <= '1' ;
         current_codec1_2 <= s52;

   when s50 =>
      if ( x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_codec1_2 <= s53;

      else
         y21 <= '1' ;
         y61 <= '1' ;
         current_codec1_2 <= s14;

      end if;

   when s51 =>
      if ( x17 ) = '1' then
         y59 <= '1' ;
         current_codec1_2 <= s54;

      else
         y56 <= '1' ;
         y43 <= '1' ;
         current_codec1_2 <= s51;

      end if;

   when s52 =>
      if ( x19 ) = '1' then
         y63 <= '1' ;
         current_codec1_2 <= s55;

      elsif ( not x19 and x18 ) = '1' then
         y38 <= '1' ;
         current_codec1_2 <= s55;

      elsif ( not x19 and not x18 and x28 ) = '1' then
         y23 <= '1' ;
         current_codec1_2 <= s56;

      else
         y97 <= '1' ;
         current_codec1_2 <= s47;

      end if;

   when s53 =>
      if ( x2 ) = '1' then
         y8 <= '1' ;
         current_codec1_2 <= s57;

      else
         current_codec1_2 <= s53;

      end if;

   when s54 =>
         y59 <= '1' ;
         y60 <= '1' ;
         current_codec1_2 <= s58;

   when s55 =>
      if ( x28 ) = '1' then
         y23 <= '1' ;
         current_codec1_2 <= s56;

      else
         y97 <= '1' ;
         current_codec1_2 <= s47;

      end if;

   when s56 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s59;

   when s57 =>
         y19 <= '1' ;
         y8 <= '1' ;
         current_codec1_2 <= s60;

   when s58 =>
         y52 <= '1' ;
         current_codec1_2 <= s61;

   when s59 =>
         y37 <= '1' ;
         current_codec1_2 <= s62;

   when s60 =>
         y35 <= '1' ;
         current_codec1_2 <= s63;

   when s61 =>
         y31 <= '1' ;
         current_codec1_2 <= s64;

   when s62 =>
         y108 <= '1' ;
         current_codec1_2 <= s65;

   when s63 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s66;

   when s64 =>
         y29 <= '1' ;
         y30 <= '1' ;
         current_codec1_2 <= s67;

   when s65 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s68;

   when s66 =>
         y37 <= '1' ;
         current_codec1_2 <= s69;

   when s67 =>
         y14 <= '1' ;
         current_codec1_2 <= s70;

   when s68 =>
         y37 <= '1' ;
         current_codec1_2 <= s71;

   when s69 =>
      if ( x8 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s72;

      else
         y35 <= '1' ;
         current_codec1_2 <= s63;

      end if;

   when s70 =>
         y47 <= '1' ;
         current_codec1_2 <= s73;

   when s71 =>
         y84 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y87 <= '1' ;
         current_codec1_2 <= s74;

   when s72 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s75;

   when s73 =>
         y45 <= '1' ;
         current_codec1_2 <= s76;

   when s74 =>
         y88 <= '1' ;
         current_codec1_2 <= s77;

   when s75 =>
         y37 <= '1' ;
         current_codec1_2 <= s78;

   when s76 =>
         y42 <= '1' ;
         current_codec1_2 <= s79;

   when s77 =>
         y76 <= '1' ;
         y77 <= '1' ;
         current_codec1_2 <= s80;

   when s78 =>
      if ( x8 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s81;

      else
         y35 <= '1' ;
         current_codec1_2 <= s63;

      end if;

   when s79 =>
      if ( x16 ) = '1' then
         y43 <= '1' ;
         y44 <= '1' ;
         current_codec1_2 <= s82;

      else
         y46 <= '1' ;
         current_codec1_2 <= s83;

      end if;

   when s80 =>
         y75 <= '1' ;
         current_codec1_2 <= s84;

   when s81 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s85;

   when s82 =>
      if ( x15 ) = '1' then
         y55 <= '1' ;
         current_codec1_2 <= s86;

      elsif ( not x15 and x14 and x12 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_codec1_2 <= s53;

      elsif ( not x15 and x14 and x12 and not x6 ) = '1' then
         y21 <= '1' ;
         y61 <= '1' ;
         current_codec1_2 <= s14;

      elsif ( not x15 and x14 and not x12 ) = '1' then
         y22 <= '1' ;
         current_codec1_2 <= s87;

      else
         y47 <= '1' ;
         current_codec1_2 <= s73;

      end if;

   when s83 =>
         y43 <= '1' ;
         y44 <= '1' ;
         current_codec1_2 <= s82;

   when s84 =>
         y83 <= '1' ;
         current_codec1_2 <= s88;

   when s85 =>
         y37 <= '1' ;
         current_codec1_2 <= s89;

   when s86 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s90;

   when s87 =>
         y59 <= '1' ;
         current_codec1_2 <= s54;

   when s88 =>
         y80 <= '1' ;
         y81 <= '1' ;
         current_codec1_2 <= s91;

   when s89 =>
      if ( x8 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s92;

      else
         y35 <= '1' ;
         current_codec1_2 <= s63;

      end if;

   when s90 =>
         y37 <= '1' ;
         current_codec1_2 <= s93;

   when s91 =>
         y82 <= '1' ;
         current_codec1_2 <= s94;

   when s92 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s95;

   when s93 =>
         y49 <= '1' ;
         y48 <= '1' ;
         current_codec1_2 <= s96;

   when s94 =>
         y76 <= '1' ;
         y77 <= '1' ;
         current_codec1_2 <= s97;

   when s95 =>
         y37 <= '1' ;
         current_codec1_2 <= s98;

   when s96 =>
      if ( x14 and x12 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_codec1_2 <= s53;

      elsif ( x14 and x12 and not x6 ) = '1' then
         y21 <= '1' ;
         y61 <= '1' ;
         current_codec1_2 <= s14;

      elsif ( x14 and not x12 ) = '1' then
         y22 <= '1' ;
         current_codec1_2 <= s87;

      else
         y47 <= '1' ;
         current_codec1_2 <= s73;

      end if;

   when s97 =>
         y75 <= '1' ;
         current_codec1_2 <= s99;

   when s98 =>
      if ( x8 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         current_codec1_2 <= s100;

      else
         y35 <= '1' ;
         current_codec1_2 <= s63;

      end if;

   when s99 =>
         y78 <= '1' ;
         current_codec1_2 <= s101;

   when s100 =>
         y35 <= '1' ;
         current_codec1_2 <= s102;

   when s101 =>
         y79 <= '1' ;
         current_codec1_2 <= s103;

   when s102 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s104;

   when s103 =>
         y76 <= '1' ;
         y77 <= '1' ;
         current_codec1_2 <= s105;

   when s104 =>
         y37 <= '1' ;
         current_codec1_2 <= s106;

   when s105 =>
         y75 <= '1' ;
         current_codec1_2 <= s107;

   when s106 =>
         y38 <= '1' ;
         current_codec1_2 <= s108;

   when s107 =>
         y74 <= '1' ;
         current_codec1_2 <= s109;

   when s108 =>
         y35 <= '1' ;
         current_codec1_2 <= s110;

   when s109 =>
         y98 <= '1' ;
         y95 <= '1' ;
         current_codec1_2 <= s111;

   when s110 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s112;

   when s111 =>
         y104 <= '1' ;
         y107 <= '1' ;
         current_codec1_2 <= s113;

   when s112 =>
         y37 <= '1' ;
         current_codec1_2 <= s114;

   when s113 =>
         y106 <= '1' ;
         current_codec1_2 <= s115;

   when s114 =>
         y39 <= '1' ;
         y40 <= '1' ;
         y14 <= '1' ;
         current_codec1_2 <= s116;

   when s115 =>
      if ( x24 and x26 ) = '1' then
         y102 <= '1' ;
         current_codec1_2 <= s117;

      elsif ( x24 and not x26 ) = '1' then
         y99 <= '1' ;
         current_codec1_2 <= s117;

      elsif ( not x24 and x25 ) = '1' then
         y100 <= '1' ;
         current_codec1_2 <= s117;

      else
         y101 <= '1' ;
         current_codec1_2 <= s117;

      end if;

   when s116 =>
         y21 <= '1' ;
         current_codec1_2 <= s118;

   when s117 =>
      if ( x27 ) = '1' then
         y73 <= '1' ;
         current_codec1_2 <= s119;

      else
         y103 <= '1' ;
         current_codec1_2 <= s120;

      end if;

   when s118 =>
      if ( x9 ) = '1' then
         y23 <= '1' ;
         current_codec1_2 <= s121;

      else
         y35 <= '1' ;
         current_codec1_2 <= s122;

      end if;

   when s119 =>
         y72 <= '1' ;
         current_codec1_2 <= s123;

   when s120 =>
         y97 <= '1' ;
         current_codec1_2 <= s111;

   when s121 =>
         y50 <= '1' ;
         y51 <= '1' ;
         y5 <= '1' ;
         current_codec1_2 <= s124;

   when s122 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s125;

   when s123 =>
         y35 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_codec1_2 <= s126;

   when s124 =>
         y52 <= '1' ;
         current_codec1_2 <= s127;

   when s125 =>
         y37 <= '1' ;
         current_codec1_2 <= s128;

   when s126 =>
         y37 <= '1' ;
         current_codec1_2 <= s129;

   when s127 =>
         y22 <= '1' ;
         current_codec1_2 <= s130;

   when s128 =>
         y20 <= '1' ;
         current_codec1_2 <= s131;

   when s129 =>
         y70 <= '1' ;
         current_codec1_2 <= s132;

   when s130 =>
      if ( x10 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         current_codec1_2 <= s1;

      elsif ( x10 and not x5 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s102;

      else
         y23 <= '1' ;
         current_codec1_2 <= s121;

      end if;

   when s131 =>
         y49 <= '1' ;
         current_codec1_2 <= s133;

   when s132 =>
      if ( x22 and x20 ) = '1' then
         y33 <= '1' ;
         current_codec1_2 <= s134;

      elsif ( x22 and not x20 ) = '1' then
         y65 <= '1' ;
         current_codec1_2 <= s15;

      else
         y71 <= '1' ;
         current_codec1_2 <= s119;

      end if;

   when s133 =>
         y47 <= '1' ;
         current_codec1_2 <= s135;

   when s134 =>
      if ( x13 and x7 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_codec1_2 <= s136;

      elsif ( x13 and not x7 ) = '1' then
         y16 <= '1' ;
         current_codec1_2 <= s11;

      else
         y34 <= '1' ;
         current_codec1_2 <= s13;

      end if;

   when s135 =>
         y45 <= '1' ;
         current_codec1_2 <= s137;

   when s136 =>
      if ( x2 ) = '1' then
         y8 <= '1' ;
         current_codec1_2 <= s138;

      else
         current_codec1_2 <= s136;

      end if;

   when s137 =>
         y42 <= '1' ;
         current_codec1_2 <= s139;

   when s138 =>
         y19 <= '1' ;
         y8 <= '1' ;
         current_codec1_2 <= s140;

   when s139 =>
      if ( x16 ) = '1' then
         y43 <= '1' ;
         y44 <= '1' ;
         current_codec1_2 <= s141;

      else
         y46 <= '1' ;
         current_codec1_2 <= s142;

      end if;

   when s140 =>
         y35 <= '1' ;
         current_codec1_2 <= s143;

   when s141 =>
      if ( x14 ) = '1' then
         y41 <= '1' ;
         y14 <= '1' ;
         current_codec1_2 <= s144;

      elsif ( not x14 and x15 and x10 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         current_codec1_2 <= s1;

      elsif ( not x14 and x15 and x10 and not x5 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s102;

      elsif ( not x14 and x15 and not x10 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s122;

      else
         y47 <= '1' ;
         current_codec1_2 <= s135;

      end if;

   when s142 =>
         y43 <= '1' ;
         y44 <= '1' ;
         current_codec1_2 <= s141;

   when s143 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s145;

   when s144 =>
         y50 <= '1' ;
         y51 <= '1' ;
         y5 <= '1' ;
         current_codec1_2 <= s146;

   when s145 =>
         y37 <= '1' ;
         current_codec1_2 <= s147;

   when s146 =>
         y52 <= '1' ;
         current_codec1_2 <= s148;

   when s147 =>
      if ( x8 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s149;

      else
         y35 <= '1' ;
         current_codec1_2 <= s143;

      end if;

   when s148 =>
         y48 <= '1' ;
         y22 <= '1' ;
         current_codec1_2 <= s150;

   when s149 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s151;

   when s150 =>
      if ( x15 and x10 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         current_codec1_2 <= s1;

      elsif ( x15 and x10 and not x5 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s102;

      elsif ( x15 and not x10 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s122;

      else
         y47 <= '1' ;
         current_codec1_2 <= s135;

      end if;

   when s151 =>
         y37 <= '1' ;
         current_codec1_2 <= s152;

   when s152 =>
      if ( x8 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s153;

      else
         y35 <= '1' ;
         current_codec1_2 <= s143;

      end if;

   when s153 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s154;

   when s154 =>
         y37 <= '1' ;
         current_codec1_2 <= s155;

   when s155 =>
      if ( x8 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s156;

      else
         y35 <= '1' ;
         current_codec1_2 <= s143;

      end if;

   when s156 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s157;

   when s157 =>
         y37 <= '1' ;
         current_codec1_2 <= s158;

   when s158 =>
      if ( x8 ) = '1' then
         y17 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         current_codec1_2 <= s159;

      else
         y35 <= '1' ;
         current_codec1_2 <= s143;

      end if;

   when s159 =>
         y32 <= '1' ;
         current_codec1_2 <= s160;

   when s160 =>
         y66 <= '1' ;
         current_codec1_2 <= s161;

   when s161 =>
         y64 <= '1' ;
         current_codec1_2 <= s162;

   when s162 =>
         y35 <= '1' ;
         current_codec1_2 <= s163;

   when s163 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s164;

   when s164 =>
         y37 <= '1' ;
         current_codec1_2 <= s165;

   when s165 =>
         y38 <= '1' ;
         current_codec1_2 <= s166;

   when s166 =>
         y35 <= '1' ;
         current_codec1_2 <= s167;

   when s167 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s168;

   when s168 =>
         y37 <= '1' ;
         current_codec1_2 <= s169;

   when s169 =>
         y39 <= '1' ;
         y40 <= '1' ;
         y14 <= '1' ;
         current_codec1_2 <= s170;

   when s170 =>
         y21 <= '1' ;
         current_codec1_2 <= s171;

   when s171 =>
      if ( x9 ) = '1' then
         y23 <= '1' ;
         current_codec1_2 <= s172;

      else
         y35 <= '1' ;
         current_codec1_2 <= s173;

      end if;

   when s172 =>
         y50 <= '1' ;
         y51 <= '1' ;
         y5 <= '1' ;
         current_codec1_2 <= s174;

   when s173 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec1_2 <= s175;

   when s174 =>
         y52 <= '1' ;
         current_codec1_2 <= s176;

   when s175 =>
         y37 <= '1' ;
         current_codec1_2 <= s177;

   when s176 =>
         y22 <= '1' ;
         current_codec1_2 <= s178;

   when s177 =>
         y20 <= '1' ;
         current_codec1_2 <= s179;

   when s178 =>
      if ( x10 and x20 ) = '1' then
         y33 <= '1' ;
         current_codec1_2 <= s180;

      elsif ( x10 and not x20 ) = '1' then
         y65 <= '1' ;
         current_codec1_2 <= s162;

      else
         y23 <= '1' ;
         current_codec1_2 <= s172;

      end if;

   when s179 =>
         y49 <= '1' ;
         current_codec1_2 <= s181;

   when s180 =>
      if ( x13 and x7 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         current_codec1_2 <= s1;

      elsif ( x13 and not x7 ) = '1' then
         y16 <= '1' ;
         current_codec1_2 <= s159;

      else
         y34 <= '1' ;
         current_codec1_2 <= s160;

      end if;

   when s181 =>
         y47 <= '1' ;
         current_codec1_2 <= s182;

   when s182 =>
         y45 <= '1' ;
         current_codec1_2 <= s183;

   when s183 =>
         y42 <= '1' ;
         current_codec1_2 <= s184;

   when s184 =>
      if ( x16 ) = '1' then
         y43 <= '1' ;
         y44 <= '1' ;
         current_codec1_2 <= s185;

      else
         y46 <= '1' ;
         current_codec1_2 <= s186;

      end if;

   when s185 =>
      if ( x14 ) = '1' then
         y41 <= '1' ;
         y14 <= '1' ;
         current_codec1_2 <= s187;

      elsif ( not x14 and x15 and x10 and x20 ) = '1' then
         y33 <= '1' ;
         current_codec1_2 <= s180;

      elsif ( not x14 and x15 and x10 and not x20 ) = '1' then
         y65 <= '1' ;
         current_codec1_2 <= s162;

      elsif ( not x14 and x15 and not x10 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s173;

      else
         y47 <= '1' ;
         current_codec1_2 <= s182;

      end if;

   when s186 =>
         y43 <= '1' ;
         y44 <= '1' ;
         current_codec1_2 <= s185;

   when s187 =>
         y50 <= '1' ;
         y51 <= '1' ;
         y5 <= '1' ;
         current_codec1_2 <= s188;

   when s188 =>
         y52 <= '1' ;
         current_codec1_2 <= s189;

   when s189 =>
         y48 <= '1' ;
         y22 <= '1' ;
         current_codec1_2 <= s190;

   when s190 =>
      if ( x15 and x10 and x20 ) = '1' then
         y33 <= '1' ;
         current_codec1_2 <= s180;

      elsif ( x15 and x10 and not x20 ) = '1' then
         y65 <= '1' ;
         current_codec1_2 <= s162;

      elsif ( x15 and not x10 ) = '1' then
         y35 <= '1' ;
         current_codec1_2 <= s173;

      else
         y47 <= '1' ;
         current_codec1_2 <= s182;

      end if;

   end case;
   end proc_codec1_2;

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
	y73  <= '0' ;	y74  <= '0' ;	y75  <= '0' ;	y76  <= '0' ;
	y77  <= '0' ;	y78  <= '0' ;	y79  <= '0' ;	y80  <= '0' ;
	y81  <= '0' ;	y82  <= '0' ;	y83  <= '0' ;	y84  <= '0' ;
	y85  <= '0' ;	y86  <= '0' ;	y87  <= '0' ;	y88  <= '0' ;
	y89  <= '0' ;	y90  <= '0' ;	y91  <= '0' ;	y92  <= '0' ;
	y93  <= '0' ;	y94  <= '0' ;	y95  <= '0' ;	y96  <= '0' ;
	y97  <= '0' ;	y98  <= '0' ;	y99  <= '0' ;	y100 <= '0' ;
	y101 <= '0' ;	y102 <= '0' ;	y103 <= '0' ;	y104 <= '0' ;
	y105 <= '0' ;	y106 <= '0' ;	y107 <= '0' ;	y108 <= '0' ;

	current_codec1_2 <= s1;
      elsif (clk'event and clk ='1') then
        proc_codec1_2;
      end if;
   end process;
end ARC;
