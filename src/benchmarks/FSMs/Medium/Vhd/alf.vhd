library ieee;
use ieee.std_logic_1164.all;

entity alf is
   port ( clk,rst,x4,x5,x6,x7,x8,x9,x10,x11,x13,x14,x15,x16,x17,x18,x19,
	x20,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y27,y28,y29,y30,y31,y32,
	y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,y47,y48,
	y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,y61,y62,y63,
	y64,y65,y66,y67,y68,y69,y70,y71,y72,y73,y74 : out std_logic );
end alf;

architecture ARC of alf is

   type states_alf is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60
	 );
   signal current_alf : states_alf;

begin
   process (clk , rst)
   procedure proc_alf is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y27  <= '0' ;	y28  <= '0' ;	y29  <= '0' ;	y30  <= '0' ;
	y31  <= '0' ;	y32  <= '0' ;	y33  <= '0' ;	y34  <= '0' ;
	y35  <= '0' ;	y36  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;
	y39  <= '0' ;	y40  <= '0' ;	y41  <= '0' ;	y42  <= '0' ;
	y43  <= '0' ;	y44  <= '0' ;	y45  <= '0' ;	y47  <= '0' ;
	y48  <= '0' ;	y49  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;
	y52  <= '0' ;	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;
	y56  <= '0' ;	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;
	y60  <= '0' ;	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;
	y64  <= '0' ;	y65  <= '0' ;	y66  <= '0' ;	y67  <= '0' ;
	y68  <= '0' ;	y69  <= '0' ;	y70  <= '0' ;	y71  <= '0' ;
	y72  <= '0' ;	y73  <= '0' ;	y74  <= '0' ;

   case current_alf is
   when s1 =>
      if ( x6 ) = '1' then
         y1 <= '1' ;
         current_alf <= s2;

      else
         current_alf <= s1;

      end if;

   when s2 =>
         y2 <= '1' ;
         current_alf <= s3;

   when s3 =>
         y3 <= '1' ;
         y4 <= '1' ;
         current_alf <= s4;

   when s4 =>
      if ( x29 and x5 and x4 ) = '1' then
         y5 <= '1' ;
         current_alf <= s5;

      elsif ( x29 and x5 and not x4 ) = '1' then
         y7 <= '1' ;
         current_alf <= s5;

      elsif ( x29 and not x5 and x4 ) = '1' then
         y6 <= '1' ;
         current_alf <= s5;

      elsif ( x29 and not x5 and not x4 ) = '1' then
         y8 <= '1' ;
         current_alf <= s5;

      elsif ( not x29 and x30 and x4 and x31 and x15 and x5 ) = '1' then
         y28 <= '1' ;
         current_alf <= s6;

      elsif ( not x29 and x30 and x4 and x31 and x15 and not x5 ) = '1' then
         y15 <= '1' ;
         current_alf <= s7;

      elsif ( not x29 and x30 and x4 and x31 and not x15 and x16 ) = '1' then
         y28 <= '1' ;
         current_alf <= s6;

      elsif ( not x29 and x30 and x4 and x31 and not x15 and not x16 and x5 ) = '1' then
         y47 <= '1' ;
         current_alf <= s8;

      elsif ( not x29 and x30 and x4 and x31 and not x15 and not x16 and not x5 ) = '1' then
         y48 <= '1' ;
         current_alf <= s8;

      elsif ( not x29 and x30 and x4 and not x31 and x5 ) = '1' then
         y52 <= '1' ;
         current_alf <= s9;

      elsif ( not x29 and x30 and x4 and not x31 and not x5 ) = '1' then
         y19 <= '1' ;
         current_alf <= s10;

      elsif ( not x29 and x30 and not x4 and x5 ) = '1' then
         y27 <= '1' ;
         current_alf <= s11;

      elsif ( not x29 and x30 and not x4 and not x5 and x31 and x15 ) = '1' then
         y34 <= '1' ;
         current_alf <= s12;

      elsif ( not x29 and x30 and not x4 and not x5 and x31 and not x15 and x16 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      elsif ( not x29 and x30 and not x4 and not x5 and x31 and not x15 and not x16 ) = '1' then
         y35 <= '1' ;
         current_alf <= s14;

      elsif ( not x29 and x30 and not x4 and not x5 and not x31 ) = '1' then
         y23 <= '1' ;
         current_alf <= s15;

      elsif ( not x29 and not x30 and x31 and x4 and x5 and x13 ) = '1' then
         y29 <= '1' ;
         current_alf <= s16;

      elsif ( not x29 and not x30 and x31 and x4 and x5 and not x13 ) = '1' then
         y28 <= '1' ;
         current_alf <= s6;

      elsif ( not x29 and not x30 and x31 and x4 and not x5 and x8 ) = '1' then
         y13 <= '1' ;
         current_alf <= s17;

      elsif ( not x29 and not x30 and x31 and x4 and not x5 and not x8 ) = '1' then
         y11 <= '1' ;
         current_alf <= s18;

      elsif ( not x29 and not x30 and x31 and not x4 and x5 ) = '1' then
         y12 <= '1' ;
         current_alf <= s19;

      elsif ( not x29 and not x30 and x31 and not x4 and not x5 ) = '1' then
         y14 <= '1' ;
         current_alf <= s19;

      elsif ( not x29 and not x30 and not x31 and x4 and x5 and x8 ) = '1' then
         y13 <= '1' ;
         current_alf <= s17;

      elsif ( not x29 and not x30 and not x31 and x4 and x5 and not x8 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      elsif ( not x29 and not x30 and not x31 and x4 and not x5 ) = '1' then
         y12 <= '1' ;
         current_alf <= s19;

      elsif ( not x29 and not x30 and not x31 and not x4 and x5 ) = '1' then
         y14 <= '1' ;
         current_alf <= s19;

      elsif ( not x29 and not x30 and not x31 and not x4 and not x5 and x9 ) = '1' then
         y23 <= '1' ;
         current_alf <= s15;

      elsif ( not x29 and not x30 and not x31 and not x4 and not x5 and not x9 and x7 ) = '1' then
         y14 <= '1' ;
         current_alf <= s20;

      else
         y16 <= '1' ;
         current_alf <= s5;

      end if;

   when s5 =>
      if ( x7 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s6 =>
      if ( x30 and x4 ) = '1' then
         y9 <= '1' ;
         current_alf <= s13;

      elsif ( x30 and not x4 ) = '1' then
         y9 <= '1' ;
         current_alf <= s22;

      elsif ( not x30 and x15 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s7 =>
         y22 <= '1' ;
         current_alf <= s13;

   when s8 =>
      if ( x20 ) = '1' then
         y22 <= '1' ;
         current_alf <= s13;

      elsif ( not x20 and x19 ) = '1' then
         y28 <= '1' ;
         current_alf <= s6;

      else
         y19 <= '1' ;
         current_alf <= s10;

      end if;

   when s9 =>
      if ( x10 ) = '1' then
         y9 <= '1' ;
         current_alf <= s22;

      else
         y19 <= '1' ;
         current_alf <= s10;

      end if;

   when s10 =>
      if ( x31 and x5 ) = '1' then
         y23 <= '1' ;
         y51 <= '1' ;
         y58 <= '1' ;
         current_alf <= s23;

      elsif ( x31 and not x5 and x22 ) = '1' then
         y51 <= '1' ;
         current_alf <= s24;

      elsif ( x31 and not x5 and not x22 ) = '1' then
         y44 <= '1' ;
         y45 <= '1' ;
         current_alf <= s25;

      elsif ( not x31 and x5 ) = '1' then
         y65 <= '1' ;
         current_alf <= s26;

      else
         y71 <= '1' ;
         current_alf <= s27;

      end if;

   when s11 =>
      if ( x31 and x15 ) = '1' then
         y34 <= '1' ;
         current_alf <= s12;

      elsif ( x31 and not x15 and x16 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      elsif ( x31 and not x15 and not x16 ) = '1' then
         y35 <= '1' ;
         current_alf <= s14;

      else
         y23 <= '1' ;
         current_alf <= s15;

      end if;

   when s12 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s13 =>
         y11 <= '1' ;
         current_alf <= s18;

   when s14 =>
      if ( x17 ) = '1' then
         y18 <= '1' ;
         current_alf <= s28;

      elsif ( not x17 and x14 ) = '1' then
         y38 <= '1' ;
         y39 <= '1' ;
         current_alf <= s29;

      else
         y36 <= '1' ;
         y37 <= '1' ;
         current_alf <= s30;

      end if;

   when s15 =>
      if ( x30 and x8 ) = '1' then
         y21 <= '1' ;
         current_alf <= s31;

      elsif ( x30 and not x8 ) = '1' then
         y20 <= '1' ;
         current_alf <= s32;

      else
         y17 <= '1' ;
         current_alf <= s33;

      end if;

   when s16 =>
      if ( x14 and x15 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      elsif ( x14 and not x15 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      else
         y30 <= '1' ;
         current_alf <= s34;

      end if;

   when s17 =>
      if ( x7 and x31 ) = '1' then
         y9 <= '1' ;
         current_alf <= s22;

      elsif ( x7 and not x31 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s18 =>
         y63 <= '1' ;
         current_alf <= s1;

   when s19 =>
      if ( x31 and x15 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      elsif ( x31 and not x15 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      elsif ( not x31 and x7 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s20 =>
         y23 <= '1' ;
         current_alf <= s15;

   when s21 =>
         y10 <= '1' ;
         current_alf <= s13;

   when s22 =>
      if ( x30 ) = '1' then
         y11 <= '1' ;
         current_alf <= s18;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s23 =>
      if ( x24 ) = '1' then
         y59 <= '1' ;
         current_alf <= s35;

      else
         y60 <= '1' ;
         current_alf <= s36;

      end if;

   when s24 =>
         y53 <= '1' ;
         current_alf <= s37;

   when s25 =>
      if ( x19 ) = '1' then
         y28 <= '1' ;
         current_alf <= s6;

      elsif ( not x19 and x4 and x22 ) = '1' then
         y51 <= '1' ;
         current_alf <= s24;

      elsif ( not x19 and x4 and not x22 ) = '1' then
         y44 <= '1' ;
         y45 <= '1' ;
         current_alf <= s25;

      elsif ( not x19 and not x4 and x18 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      else
         y44 <= '1' ;
         y45 <= '1' ;
         current_alf <= s25;

      end if;

   when s26 =>
         y20 <= '1' ;
         current_alf <= s32;

   when s27 =>
         y23 <= '1' ;
         y65 <= '1' ;
         y72 <= '1' ;
         current_alf <= s38;

   when s28 =>
      if ( x31 and x30 and x8 ) = '1' then
         y42 <= '1' ;
         current_alf <= s39;

      elsif ( x31 and x30 and not x8 ) = '1' then
         y40 <= '1' ;
         current_alf <= s40;

      elsif ( x31 and not x30 and x7 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      elsif ( x31 and not x30 and not x7 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      elsif ( not x31 and x7 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s29 =>
      if ( x16 and x15 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      elsif ( x16 and not x15 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      else
         y35 <= '1' ;
         current_alf <= s14;

      end if;

   when s30 =>
      if ( x15 ) = '1' then
         y34 <= '1' ;
         current_alf <= s12;

      else
         y35 <= '1' ;
         current_alf <= s14;

      end if;

   when s31 =>
      if ( x4 and x5 ) = '1' then
         y22 <= '1' ;
         current_alf <= s13;

      elsif ( x4 and not x5 ) = '1' then
         y69 <= '1' ;
         y73 <= '1' ;
         current_alf <= s41;

      else
         y18 <= '1' ;
         current_alf <= s28;

      end if;

   when s32 =>
      if ( x11 and x4 ) = '1' then
         y21 <= '1' ;
         current_alf <= s42;

      elsif ( x11 and not x4 ) = '1' then
         y14 <= '1' ;
         y24 <= '1' ;
         current_alf <= s5;

      elsif ( not x11 and x4 ) = '1' then
         y21 <= '1' ;
         current_alf <= s31;

      elsif ( not x11 and not x4 and x7 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s33 =>
         y18 <= '1' ;
         current_alf <= s28;

   when s34 =>
         y31 <= '1' ;
         current_alf <= s43;

   when s35 =>
         y60 <= '1' ;
         current_alf <= s36;

   when s36 =>
         y56 <= '1' ;
         current_alf <= s44;

   when s37 =>
      if ( x11 ) = '1' then
         y50 <= '1' ;
         current_alf <= s45;

      else
         y49 <= '1' ;
         current_alf <= s46;

      end if;

   when s38 =>
      if ( x27 ) = '1' then
         y21 <= '1' ;
         current_alf <= s31;

      else
         y69 <= '1' ;
         y73 <= '1' ;
         current_alf <= s41;

      end if;

   when s39 =>
      if ( x11 and x18 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      elsif ( x11 and not x18 ) = '1' then
         y44 <= '1' ;
         y45 <= '1' ;
         current_alf <= s25;

      else
         y43 <= '1' ;
         current_alf <= s47;

      end if;

   when s40 =>
      if ( x11 ) = '1' then
         y14 <= '1' ;
         y41 <= '1' ;
         current_alf <= s48;

      elsif ( not x11 and x15 ) = '1' then
         y9 <= '1' ;
         current_alf <= s13;

      elsif ( not x11 and not x15 and x18 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      else
         y44 <= '1' ;
         y45 <= '1' ;
         current_alf <= s25;

      end if;

   when s41 =>
      if ( x26 ) = '1' then
         y74 <= '1' ;
         current_alf <= s49;

      elsif ( not x26 and x27 ) = '1' then
         y21 <= '1' ;
         current_alf <= s31;

      else
         y69 <= '1' ;
         y73 <= '1' ;
         current_alf <= s41;

      end if;

   when s42 =>
         y66 <= '1' ;
         current_alf <= s50;

   when s43 =>
         y32 <= '1' ;
         current_alf <= s51;

   when s44 =>
      if ( x23 and x25 ) = '1' then
         y57 <= '1' ;
         current_alf <= s52;

      elsif ( x23 and not x25 and x5 ) = '1' then
         y61 <= '1' ;
         current_alf <= s53;

      elsif ( x23 and not x25 and not x5 ) = '1' then
         y57 <= '1' ;
         current_alf <= s52;

      elsif ( not x23 and x5 and x24 ) = '1' then
         y59 <= '1' ;
         current_alf <= s35;

      elsif ( not x23 and x5 and not x24 ) = '1' then
         y60 <= '1' ;
         current_alf <= s36;

      else
         y53 <= '1' ;
         current_alf <= s37;

      end if;

   when s45 =>
      if ( x11 ) = '1' then
         y55 <= '1' ;
         current_alf <= s36;

      else
         y54 <= '1' ;
         current_alf <= s36;

      end if;

   when s46 =>
         y54 <= '1' ;
         current_alf <= s36;

   when s47 =>
      if ( x20 ) = '1' then
         y22 <= '1' ;
         current_alf <= s13;

      elsif ( not x20 and x18 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      else
         y44 <= '1' ;
         y45 <= '1' ;
         current_alf <= s25;

      end if;

   when s48 =>
      if ( x18 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      else
         y44 <= '1' ;
         y45 <= '1' ;
         current_alf <= s25;

      end if;

   when s49 =>
      if ( x28 ) = '1' then
         y9 <= '1' ;
         current_alf <= s21;

      else
         y10 <= '1' ;
         current_alf <= s13;

      end if;

   when s50 =>
      if ( x11 ) = '1' then
         y20 <= '1' ;
         current_alf <= s54;

      else
         y67 <= '1' ;
         current_alf <= s55;

      end if;

   when s51 =>
         y33 <= '1' ;
         current_alf <= s12;

   when s52 =>
      if ( x18 ) = '1' then
         y10 <= '1' ;
         current_alf <= s13;

      else
         y44 <= '1' ;
         current_alf <= s56;

      end if;

   when s53 =>
      if ( x20 ) = '1' then
         y22 <= '1' ;
         current_alf <= s13;

      else
         y62 <= '1' ;
         current_alf <= s52;

      end if;

   when s54 =>
      if ( x11 ) = '1' then
         y21 <= '1' ;
         current_alf <= s57;

      else
         y68 <= '1' ;
         current_alf <= s57;

      end if;

   when s55 =>
         y68 <= '1' ;
         current_alf <= s57;

   when s56 =>
      if ( x19 ) = '1' then
         y28 <= '1' ;
         current_alf <= s6;

      else
         y45 <= '1' ;
         current_alf <= s52;

      end if;

   when s57 =>
         y69 <= '1' ;
         current_alf <= s58;

   when s58 =>
      if ( x26 ) = '1' then
         y70 <= '1' ;
         current_alf <= s59;

      else
         y66 <= '1' ;
         current_alf <= s50;

      end if;

   when s59 =>
         y64 <= '1' ;
         current_alf <= s60;

   when s60 =>
      if ( x7 ) = '1' then
         y69 <= '1' ;
         current_alf <= s58;

      else
         y9 <= '1' ;
         current_alf <= s21;

      end if;

   end case;
   end proc_alf;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y27  <= '0' ;	y28  <= '0' ;	y29  <= '0' ;	y30  <= '0' ;
	y31  <= '0' ;	y32  <= '0' ;	y33  <= '0' ;	y34  <= '0' ;
	y35  <= '0' ;	y36  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;
	y39  <= '0' ;	y40  <= '0' ;	y41  <= '0' ;	y42  <= '0' ;
	y43  <= '0' ;	y44  <= '0' ;	y45  <= '0' ;	y47  <= '0' ;
	y48  <= '0' ;	y49  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;
	y52  <= '0' ;	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;
	y56  <= '0' ;	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;
	y60  <= '0' ;	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;
	y64  <= '0' ;	y65  <= '0' ;	y66  <= '0' ;	y67  <= '0' ;
	y68  <= '0' ;	y69  <= '0' ;	y70  <= '0' ;	y71  <= '0' ;
	y72  <= '0' ;	y73  <= '0' ;	y74  <= '0' ;
	current_alf <= s1;
      elsif (clk'event and clk ='1') then
        proc_alf;
      end if;
   end process;
end ARC;
