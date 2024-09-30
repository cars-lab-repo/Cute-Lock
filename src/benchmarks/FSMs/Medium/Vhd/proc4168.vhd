library ieee;
use ieee.std_logic_1164.all;

entity proc4168 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56 : out std_logic );
end proc4168;

architecture ARC of proc4168 is

   type states_proc4168 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67 );
   signal current_proc4168 : states_proc4168;

begin
   process (clk , rst)
   procedure proc_proc4168 is
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


   case current_proc4168 is
   when s1 =>
      if ( x7 and x6 and x16 and x17 ) = '1' then
         y37 <= '1' ;
         y38 <= '1' ;
         current_proc4168 <= s2;

      elsif ( x7 and x6 and x16 and not x17 ) = '1' then
         y37 <= '1' ;
         current_proc4168 <= s3;

      elsif ( x7 and x6 and not x16 and x17 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_proc4168 <= s1;

      elsif ( x7 and x6 and not x16 and not x17 ) = '1' then
         y39 <= '1' ;
         y41 <= '1' ;
         current_proc4168 <= s1;

      elsif ( x7 and not x6 and x5 ) = '1' then
         y34 <= '1' ;
         y35 <= '1' ;
         current_proc4168 <= s4;

      elsif ( x7 and not x6 and not x5 ) = '1' then
         y51 <= '1' ;
         y54 <= '1' ;
         current_proc4168 <= s5;

      else
         current_proc4168 <= s1;

      end if;

   when s2 =>
         y46 <= '1' ;
         y55 <= '1' ;
         current_proc4168 <= s6;

   when s3 =>
         y46 <= '1' ;
         y47 <= '1' ;
         current_proc4168 <= s7;

   when s4 =>
         y46 <= '1' ;
         y55 <= '1' ;
         current_proc4168 <= s8;

   when s5 =>
         y22 <= '1' ;
         current_proc4168 <= s9;

   when s6 =>
         y49 <= '1' ;
         current_proc4168 <= s10;

   when s7 =>
         y49 <= '1' ;
         current_proc4168 <= s11;

   when s8 =>
         y49 <= '1' ;
         current_proc4168 <= s12;

   when s9 =>
      if ( x11 and x12 and x15 and x13 and x10 ) = '1' then
         y22 <= '1' ;
         current_proc4168 <= s13;

      elsif ( x11 and x12 and x15 and x13 and not x10 and x9 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( x11 and x12 and x15 and x13 and not x10 and x9 and not x19 ) = '1' then
         current_proc4168 <= s1;

      elsif ( x11 and x12 and x15 and x13 and not x10 and not x9 ) = '1' then
         current_proc4168 <= s1;

      elsif ( x11 and x12 and x15 and not x13 and x14 ) = '1' then
         y15 <= '1' ;
         current_proc4168 <= s14;

      elsif ( x11 and x12 and x15 and not x13 and not x14 and x10 ) = '1' then
         y3 <= '1' ;
         current_proc4168 <= s15;

      elsif ( x11 and x12 and x15 and not x13 and not x14 and not x10 ) = '1' then
         current_proc4168 <= s9;

      elsif ( x11 and x12 and not x15 and x13 and x9 ) = '1' then
         y22 <= '1' ;
         current_proc4168 <= s13;

      elsif ( x11 and x12 and not x15 and x13 and not x9 and x10 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( x11 and x12 and not x15 and x13 and not x9 and x10 and not x19 ) = '1' then
         current_proc4168 <= s1;

      elsif ( x11 and x12 and not x15 and x13 and not x9 and not x10 ) = '1' then
         current_proc4168 <= s1;

      elsif ( x11 and x12 and not x15 and not x13 and x14 ) = '1' then
         y16 <= '1' ;
         current_proc4168 <= s14;

      elsif ( x11 and x12 and not x15 and not x13 and not x14 and x9 ) = '1' then
         y13 <= '1' ;
         y3 <= '1' ;
         y14 <= '1' ;
         current_proc4168 <= s16;

      elsif ( x11 and x12 and not x15 and not x13 and not x14 and not x9 ) = '1' then
         current_proc4168 <= s9;

      elsif ( x11 and not x12 and x14 ) = '1' then
         y3 <= '1' ;
         current_proc4168 <= s15;

      elsif ( x11 and not x12 and not x14 and x3 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4168 <= s17;

      elsif ( x11 and not x12 and not x14 and not x3 ) = '1' then
         y5 <= '1' ;
         current_proc4168 <= s18;

      elsif ( not x11 and x12 and x8 and x3 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4168 <= s17;

      elsif ( not x11 and x12 and x8 and not x3 ) = '1' then
         y5 <= '1' ;
         current_proc4168 <= s18;

      elsif ( not x11 and x12 and not x8 and x3 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4168 <= s17;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and x10 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and x10 and not x19 ) = '1' then
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and not x10 and x9 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and not x10 and x9 and not x19 ) = '1' then
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and not x10 and not x9 ) = '1' then
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and not x15 ) = '1' then
         y5 <= '1' ;
         current_proc4168 <= s18;

      elsif ( not x11 and not x12 and x13 ) = '1' then
         y3 <= '1' ;
         current_proc4168 <= s15;

      elsif ( not x11 and not x12 and not x13 and x3 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4168 <= s17;

      else
         y5 <= '1' ;
         current_proc4168 <= s18;

      end if;

   when s10 =>
         y46 <= '1' ;
         y56 <= '1' ;
         current_proc4168 <= s1;

   when s11 =>
         y46 <= '1' ;
         y48 <= '1' ;
         current_proc4168 <= s19;

   when s12 =>
         y46 <= '1' ;
         y56 <= '1' ;
         current_proc4168 <= s20;

   when s13 =>
         y22 <= '1' ;
         current_proc4168 <= s14;

   when s14 =>
      if ( x10 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( x10 and not x19 ) = '1' then
         current_proc4168 <= s1;

      elsif ( not x10 and x9 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( not x10 and x9 and not x19 ) = '1' then
         current_proc4168 <= s1;

      else
         current_proc4168 <= s1;

      end if;

   when s15 =>
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc4168 <= s21;

   when s16 =>
         y26 <= '1' ;
         y27 <= '1' ;
         current_proc4168 <= s22;

   when s17 =>
         y22 <= '1' ;
         current_proc4168 <= s23;

   when s18 =>
      if ( x2 ) = '1' then
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc4168 <= s24;

      elsif ( not x2 and x14 and x11 ) = '1' then
         y26 <= '1' ;
         y27 <= '1' ;
         current_proc4168 <= s22;

      elsif ( not x2 and x14 and not x11 ) = '1' then
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc4168 <= s24;

      else
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc4168 <= s24;

      end if;

   when s19 =>
         y36 <= '1' ;
         current_proc4168 <= s1;

   when s20 =>
         y32 <= '1' ;
         y15 <= '1' ;
         y33 <= '1' ;
         current_proc4168 <= s1;

   when s21 =>
         y28 <= '1' ;
         current_proc4168 <= s25;

   when s22 =>
         y28 <= '1' ;
         current_proc4168 <= s26;

   when s23 =>
      if ( x11 and x4 and x14 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s28;

      elsif ( x11 and x4 and x14 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc4168 <= s29;

      elsif ( x11 and x4 and x14 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc4168 <= s31;

      elsif ( x11 and x4 and not x14 ) = '1' then
         y17 <= '1' ;
         current_proc4168 <= s27;

      elsif ( x11 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s28;

      elsif ( x11 and not x4 and not x2 and x18 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc4168 <= s29;

      elsif ( x11 and not x4 and not x2 and x18 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      elsif ( x11 and not x4 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc4168 <= s31;

      elsif ( not x11 and x12 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         current_proc4168 <= s14;

      elsif ( not x11 and x12 and x8 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s28;

      elsif ( not x11 and x12 and x8 and not x4 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      elsif ( not x11 and x12 and x8 and not x4 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc4168 <= s31;

      elsif ( not x11 and x12 and not x8 and x15 and x10 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and x10 and not x19 ) = '1' then
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and not x10 and x9 and x19 ) = '1' then
         y53 <= '1' ;
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and not x10 and x9 and not x19 ) = '1' then
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and not x10 and not x9 ) = '1' then
         current_proc4168 <= s1;

      elsif ( not x11 and x12 and not x8 and not x15 and x4 ) = '1' then
         y9 <= '1' ;
         current_proc4168 <= s14;

      elsif ( not x11 and x12 and not x8 and not x15 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s28;

      elsif ( not x11 and x12 and not x8 and not x15 and not x4 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      elsif ( not x11 and x12 and not x8 and not x15 and not x4 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc4168 <= s31;

      elsif ( not x11 and not x12 and x4 ) = '1' then
         y3 <= '1' ;
         current_proc4168 <= s15;

      elsif ( not x11 and not x12 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s28;

      elsif ( not x11 and not x12 and not x4 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      else
         y5 <= '1' ;
         current_proc4168 <= s31;

      end if;

   when s24 =>
         y28 <= '1' ;
         current_proc4168 <= s32;

   when s25 =>
         y26 <= '1' ;
         y45 <= '1' ;
         current_proc4168 <= s33;

   when s26 =>
         y26 <= '1' ;
         y31 <= '1' ;
         current_proc4168 <= s34;

   when s27 =>
         y3 <= '1' ;
         current_proc4168 <= s16;

   when s28 =>
         y46 <= '1' ;
         y47 <= '1' ;
         current_proc4168 <= s35;

   when s29 =>
         y46 <= '1' ;
         y55 <= '1' ;
         current_proc4168 <= s36;

   when s30 =>
         y46 <= '1' ;
         y47 <= '1' ;
         current_proc4168 <= s37;

   when s31 =>
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc4168 <= s38;

   when s32 =>
         y26 <= '1' ;
         y45 <= '1' ;
         current_proc4168 <= s39;

   when s33 =>
         y28 <= '1' ;
         current_proc4168 <= s40;

   when s34 =>
         y28 <= '1' ;
         current_proc4168 <= s41;

   when s35 =>
         y49 <= '1' ;
         current_proc4168 <= s42;

   when s36 =>
         y49 <= '1' ;
         current_proc4168 <= s43;

   when s37 =>
         y49 <= '1' ;
         current_proc4168 <= s44;

   when s38 =>
         y28 <= '1' ;
         current_proc4168 <= s45;

   when s39 =>
         y28 <= '1' ;
         current_proc4168 <= s46;

   when s40 =>
         y26 <= '1' ;
         y44 <= '1' ;
         current_proc4168 <= s47;

   when s41 =>
         y26 <= '1' ;
         y30 <= '1' ;
         current_proc4168 <= s48;

   when s42 =>
         y46 <= '1' ;
         y48 <= '1' ;
         current_proc4168 <= s49;

   when s43 =>
         y46 <= '1' ;
         y56 <= '1' ;
         current_proc4168 <= s14;

   when s44 =>
         y46 <= '1' ;
         y48 <= '1' ;
         current_proc4168 <= s50;

   when s45 =>
         y26 <= '1' ;
         y45 <= '1' ;
         current_proc4168 <= s51;

   when s46 =>
         y26 <= '1' ;
         y44 <= '1' ;
         current_proc4168 <= s52;

   when s47 =>
         y28 <= '1' ;
         current_proc4168 <= s53;

   when s48 =>
         y28 <= '1' ;
         current_proc4168 <= s54;

   when s49 =>
         y6 <= '1' ;
         current_proc4168 <= s55;

   when s50 =>
      if ( x11 ) = '1' then
         y3 <= '1' ;
         current_proc4168 <= s16;

      elsif ( not x11 and x12 ) = '1' then
         y10 <= '1' ;
         current_proc4168 <= s14;

      else
         y6 <= '1' ;
         current_proc4168 <= s56;

      end if;

   when s51 =>
         y28 <= '1' ;
         current_proc4168 <= s57;

   when s52 =>
         y28 <= '1' ;
         current_proc4168 <= s58;

   when s53 =>
         y26 <= '1' ;
         y43 <= '1' ;
         current_proc4168 <= s59;

   when s54 =>
         y26 <= '1' ;
         y29 <= '1' ;
         current_proc4168 <= s14;

   when s55 =>
      if ( x18 and x11 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc4168 <= s29;

      elsif ( x18 and x11 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      elsif ( x18 and not x11 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      else
         y5 <= '1' ;
         current_proc4168 <= s31;

      end if;

   when s56 =>
         y3 <= '1' ;
         current_proc4168 <= s15;

   when s57 =>
         y26 <= '1' ;
         y44 <= '1' ;
         current_proc4168 <= s60;

   when s58 =>
         y26 <= '1' ;
         y43 <= '1' ;
         current_proc4168 <= s61;

   when s59 =>
      if ( x11 and x12 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_proc4168 <= s14;

      elsif ( x11 and not x12 ) = '1' then
         y24 <= '1' ;
         current_proc4168 <= s62;

      elsif ( not x11 and x13 and x14 and x15 ) = '1' then
         y21 <= '1' ;
         current_proc4168 <= s63;

      elsif ( not x11 and x13 and x14 and not x15 ) = '1' then
         y20 <= '1' ;
         current_proc4168 <= s63;

      elsif ( not x11 and x13 and not x14 and x15 ) = '1' then
         y12 <= '1' ;
         current_proc4168 <= s63;

      elsif ( not x11 and x13 and not x14 and not x15 ) = '1' then
         y11 <= '1' ;
         current_proc4168 <= s63;

      elsif ( not x11 and not x13 and x14 and x15 ) = '1' then
         y25 <= '1' ;
         current_proc4168 <= s63;

      elsif ( not x11 and not x13 and x14 and not x15 ) = '1' then
         y8 <= '1' ;
         current_proc4168 <= s63;

      else
         y4 <= '1' ;
         current_proc4168 <= s63;

      end if;

   when s60 =>
         y28 <= '1' ;
         current_proc4168 <= s64;

   when s61 =>
      if ( x11 and x2 ) = '1' then
         y6 <= '1' ;
         current_proc4168 <= s65;

      elsif ( x11 and not x2 and x14 ) = '1' then
         y6 <= '1' ;
         current_proc4168 <= s65;

      elsif ( x11 and not x2 and not x14 ) = '1' then
         y3 <= '1' ;
         current_proc4168 <= s16;

      elsif ( not x11 and x12 ) = '1' then
         y10 <= '1' ;
         current_proc4168 <= s14;

      else
         y6 <= '1' ;
         current_proc4168 <= s65;

      end if;

   when s62 =>
      if ( x3 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4168 <= s17;

      else
         y5 <= '1' ;
         current_proc4168 <= s18;

      end if;

   when s63 =>
      if ( x1 ) = '1' then
         y2 <= '1' ;
         current_proc4168 <= s27;

      else
         y1 <= '1' ;
         current_proc4168 <= s27;

      end if;

   when s64 =>
         y26 <= '1' ;
         y43 <= '1' ;
         current_proc4168 <= s66;

   when s65 =>
      if ( x11 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc4168 <= s29;

      elsif ( x11 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      elsif ( not x11 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      else
         y3 <= '1' ;
         current_proc4168 <= s15;

      end if;

   when s66 =>
         y50 <= '1' ;
         current_proc4168 <= s67;

   when s67 =>
      if ( x11 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc4168 <= s29;

      elsif ( x11 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc4168 <= s30;

      else
         y7 <= '1' ;
         current_proc4168 <= s30;

      end if;

   end case;
   end proc_proc4168;

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

	current_proc4168 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc4168;
      end if;
   end process;
end ARC;
