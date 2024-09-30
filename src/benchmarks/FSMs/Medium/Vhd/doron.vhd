library ieee;
use ieee.std_logic_1164.all;

entity doron is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y11,y12,y13,y14,y15,y37,
	y38,y44,y45,y46,y47,y54,y56,y57,y58,y59,y60,y62,y63,y64,y65,
	y67,y68,y71,y73,y74,y77,y78,y79,y80,y81,y84,y86,y88,y90,y91,
	y92,y93,y94,y95,y96,y97,y98,y99,y100,y102,y110 : out std_logic );
end doron;

architecture ARC of doron is

   type states_doron is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49 );
   signal current_doron : states_doron;

begin
   process (clk , rst)
   procedure proc_doron is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;
	y14  <= '0' ;	y15  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;
	y44  <= '0' ;	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;
	y54  <= '0' ;	y56  <= '0' ;	y57  <= '0' ;	y58  <= '0' ;
	y59  <= '0' ;	y60  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;
	y64  <= '0' ;	y65  <= '0' ;	y67  <= '0' ;	y68  <= '0' ;
	y71  <= '0' ;	y73  <= '0' ;	y74  <= '0' ;	y77  <= '0' ;
	y78  <= '0' ;	y79  <= '0' ;	y80  <= '0' ;	y81  <= '0' ;
	y84  <= '0' ;	y86  <= '0' ;	y88  <= '0' ;	y90  <= '0' ;
	y91  <= '0' ;	y92  <= '0' ;	y93  <= '0' ;	y94  <= '0' ;
	y95  <= '0' ;	y96  <= '0' ;	y97  <= '0' ;	y98  <= '0' ;
	y99  <= '0' ;	y100 <= '0' ;	y102 <= '0' ;	y110 <= '0' ;


   case current_doron is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y9 <= '1' ;
         current_doron <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_doron <= s3;

      else
         current_doron <= s1;

      end if;

   when s2 =>
         y11 <= '1' ;
         current_doron <= s4;

   when s3 =>
         y2 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s5;

   when s4 =>
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s6;

   when s5 =>
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s7;

   when s6 =>
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_doron <= s1;

   when s7 =>
      if ( x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s8;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y63 <= '1' ;
         current_doron <= s9;

      end if;

   when s8 =>
         y4 <= '1' ;
         y62 <= '1' ;
         y63 <= '1' ;
         current_doron <= s9;

   when s9 =>
      if ( x4 and x22 and x21 ) = '1' then
         y6 <= '1' ;
         current_doron <= s11;

      elsif ( x4 and x22 and not x21 ) = '1' then
         y6 <= '1' ;
         current_doron <= s10;

      elsif ( x4 and not x22 ) = '1' then
         y6 <= '1' ;
         current_doron <= s11;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         current_doron <= s12;

      end if;

   when s10 =>
      if ( x21 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( x21 and not x6 ) = '1' then
         current_doron <= s1;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s13;

      end if;

   when s11 =>
      if ( x22 and x21 and x10 and x14 ) = '1' then
         y13 <= '1' ;
         current_doron <= s14;

      elsif ( x22 and x21 and x10 and not x14 ) = '1' then
         y57 <= '1' ;
         current_doron <= s14;

      elsif ( x22 and x21 and not x10 and x11 and x14 and x8 ) = '1' then
         y6 <= '1' ;
         current_doron <= s10;

      elsif ( x22 and x21 and not x10 and x11 and x14 and not x8 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x22 and x21 and not x10 and x11 and x14 and not x8 and x6 and not x7 ) = '1' then
         current_doron <= s1;

      elsif ( x22 and x21 and not x10 and x11 and x14 and not x8 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( x22 and x21 and not x10 and x11 and not x14 and x7 ) = '1' then
         y6 <= '1' ;
         current_doron <= s10;

      elsif ( x22 and x21 and not x10 and x11 and not x14 and not x7 and x6 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x22 and x21 and not x10 and x11 and not x14 and not x7 and x6 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( x22 and x21 and not x10 and x11 and not x14 and not x7 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( x22 and x21 and not x10 and not x11 and x14 ) = '1' then
         y60 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y67 <= '1' ;
         y68 <= '1' ;
         current_doron <= s14;

      elsif ( x22 and x21 and not x10 and not x11 and not x14 ) = '1' then
         y58 <= '1' ;
         y59 <= '1' ;
         y60 <= '1' ;
         y62 <= '1' ;
         current_doron <= s14;

      elsif ( x22 and not x21 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x22 and not x21 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x22 and not x21 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( x22 and not x21 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x22 and x12 and x21 and x11 ) = '1' then
         y7 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y93 <= '1' ;
         current_doron <= s14;

      elsif ( not x22 and x12 and x21 and not x11 ) = '1' then
         y7 <= '1' ;
         y62 <= '1' ;
         y74 <= '1' ;
         y110 <= '1' ;
         current_doron <= s15;

      elsif ( not x22 and x12 and not x21 and x10 ) = '1' then
         y7 <= '1' ;
         y62 <= '1' ;
         y90 <= '1' ;
         y92 <= '1' ;
         current_doron <= s14;

      elsif ( not x22 and x12 and not x21 and not x10 ) = '1' then
         y7 <= '1' ;
         y62 <= '1' ;
         y92 <= '1' ;
         y93 <= '1' ;
         y97 <= '1' ;
         current_doron <= s14;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s13;

      end if;

   when s12 =>
      if ( x5 ) = '1' then
         y8 <= '1' ;
         current_doron <= s3;

      elsif ( not x5 and x21 and x22 and x10 and x14 ) = '1' then
         y13 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and x22 and x10 and not x14 ) = '1' then
         y57 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and x14 and x8 ) = '1' then
         y6 <= '1' ;
         current_doron <= s10;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and x14 and not x8 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and x14 and not x8 and x6 and not x7 ) = '1' then
         current_doron <= s1;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and x14 and not x8 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and not x14 and x7 ) = '1' then
         y6 <= '1' ;
         current_doron <= s10;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and not x14 and not x7 and x6 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and not x14 and not x7 and x6 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x5 and x21 and x22 and not x10 and x11 and not x14 and not x7 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x5 and x21 and x22 and not x10 and not x11 and x14 ) = '1' then
         y60 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y67 <= '1' ;
         y68 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and x22 and not x10 and not x11 and not x14 ) = '1' then
         y58 <= '1' ;
         y59 <= '1' ;
         y60 <= '1' ;
         y62 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and not x22 and x9 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s16;

      elsif ( not x5 and x21 and not x22 and not x9 and x10 and x11 and x14 ) = '1' then
         y37 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and not x22 and not x9 and x10 and x11 and not x14 ) = '1' then
         y38 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and not x22 and not x9 and x10 and not x11 and x14 ) = '1' then
         y100 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and not x22 and not x9 and x10 and not x11 and not x14 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y90 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and not x22 and not x9 and not x10 and x11 and x14 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y90 <= '1' ;
         y95 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and not x22 and not x9 and not x10 and x11 and not x14 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y93 <= '1' ;
         y94 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and x21 and not x22 and not x9 and not x10 and not x11 and x14 ) = '1' then
         y46 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y73 <= '1' ;
         y95 <= '1' ;
         current_doron <= s17;

      elsif ( not x5 and x21 and not x22 and not x9 and not x10 and not x11 and not x14 ) = '1' then
         y74 <= '1' ;
         current_doron <= s18;

      elsif ( not x5 and not x21 and x22 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s16;

      elsif ( not x5 and not x21 and not x22 and x9 and x10 and x11 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y90 <= '1' ;
         current_doron <= s19;

      elsif ( not x5 and not x21 and not x22 and x9 and x10 and not x11 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s16;

      elsif ( not x5 and not x21 and not x22 and x9 and not x10 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s20;

      elsif ( not x5 and not x21 and not x22 and not x9 and x10 and x11 ) = '1' then
         y65 <= '1' ;
         y90 <= '1' ;
         y92 <= '1' ;
         y93 <= '1' ;
         current_doron <= s14;

      elsif ( not x5 and not x21 and not x22 and not x9 and x10 and not x11 ) = '1' then
         y65 <= '1' ;
         y92 <= '1' ;
         y94 <= '1' ;
         y95 <= '1' ;
         current_doron <= s14;

      else
         y65 <= '1' ;
         y90 <= '1' ;
         y91 <= '1' ;
         y92 <= '1' ;
         y93 <= '1' ;
         current_doron <= s14;

      end if;

   when s13 =>
      if ( x9 and x21 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s21;

      elsif ( x9 and not x21 and x22 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s22;

      elsif ( x9 and not x21 and not x22 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s23;

      elsif ( not x9 and x21 and x13 and x10 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y90 <= '1' ;
         current_doron <= s24;

      elsif ( not x9 and x21 and x13 and not x10 and x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s22;

      elsif ( not x9 and x21 and x13 and not x10 and x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( not x9 and x21 and x13 and not x10 and not x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s26;

      elsif ( not x9 and x21 and x13 and not x10 and not x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y74 <= '1' ;
         current_doron <= s27;

      elsif ( not x9 and x21 and not x13 ) = '1' then
         y9 <= '1' ;
         y65 <= '1' ;
         y84 <= '1' ;
         y86 <= '1' ;
         y91 <= '1' ;
         current_doron <= s28;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and x10 and not x11 and x19 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and not x10 and x11 and x17 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and x14 and not x10 and not x11 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s23;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and x10 and not x11 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x9 and not x21 and x13 and x22 and not x14 and not x10 and not x11 ) = '1' then
         y102 <= '1' ;
         current_doron <= s14;

      elsif ( not x9 and not x21 and x13 and not x22 and x10 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s20;

      elsif ( not x9 and not x21 and x13 and not x22 and not x10 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s16;

      else
         y9 <= '1' ;
         y65 <= '1' ;
         y84 <= '1' ;
         y86 <= '1' ;
         y91 <= '1' ;
         current_doron <= s28;

      end if;

   when s14 =>
      if ( x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   when s15 =>
      if ( x15 ) = '1' then
         y44 <= '1' ;
         y45 <= '1' ;
         current_doron <= s14;

      elsif ( not x15 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   when s16 =>
      if ( x21 and x10 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y90 <= '1' ;
         current_doron <= s24;

      elsif ( x21 and not x10 and x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s22;

      elsif ( x21 and not x10 and x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( x21 and not x10 and not x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s26;

      elsif ( x21 and not x10 and not x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y74 <= '1' ;
         current_doron <= s27;

      elsif ( not x21 and x22 and x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and x19 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and x17 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and not x11 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and not x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s23;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and not x11 ) = '1' then
         y102 <= '1' ;
         current_doron <= s14;

      else
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      end if;

   when s17 =>
      if ( x15 ) = '1' then
         y46 <= '1' ;
         y47 <= '1' ;
         current_doron <= s14;

      elsif ( not x15 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   when s18 =>
      if ( x15 ) = '1' then
         y44 <= '1' ;
         y45 <= '1' ;
         current_doron <= s14;

      elsif ( not x15 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   when s19 =>
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s21;

   when s20 =>
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s22;

   when s21 =>
      if ( x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s29;

      elsif ( not x3 and x21 ) = '1' then
         y4 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s30;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s31;

      end if;

   when s22 =>
      if ( x21 and x3 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y79 <= '1' ;
         current_doron <= s32;

      elsif ( x21 and not x3 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y71 <= '1' ;
         y90 <= '1' ;
         current_doron <= s32;

      elsif ( not x21 and x22 and x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s33;

      elsif ( not x21 and x22 and not x3 ) = '1' then
         y4 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s30;

      elsif ( not x21 and not x22 and x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s34;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s35;

      end if;

   when s23 =>
      if ( x21 and x3 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y96 <= '1' ;
         current_doron <= s36;

      elsif ( x21 and not x3 ) = '1' then
         y60 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y79 <= '1' ;
         current_doron <= s36;

      elsif ( not x21 and x22 and x3 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s37;

      elsif ( not x21 and x22 and not x3 ) = '1' then
         y62 <= '1' ;
         y81 <= '1' ;
         current_doron <= s37;

      elsif ( not x21 and not x22 and x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s38;

      else
         y4 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s30;

      end if;

   when s24 =>
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s39;

   when s25 =>
      if ( x21 and x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s33;

      elsif ( x21 and not x3 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y93 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s38;

      elsif ( not x21 and x22 and not x3 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s31;

      elsif ( not x21 and not x22 and x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s33;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s40;

      end if;

   when s26 =>
      if ( x21 and x3 ) = '1' then
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s41;

      elsif ( x21 and not x3 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y79 <= '1' ;
         y88 <= '1' ;
         y102 <= '1' ;
         current_doron <= s41;

      elsif ( not x21 and x3 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y96 <= '1' ;
         current_doron <= s36;

      else
         y60 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y79 <= '1' ;
         current_doron <= s36;

      end if;

   when s27 =>
      if ( x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s34;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y73 <= '1' ;
         current_doron <= s42;

      end if;

   when s28 =>
      if ( x21 and x10 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y90 <= '1' ;
         current_doron <= s24;

      elsif ( x21 and not x10 and x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s22;

      elsif ( x21 and not x10 and x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( x21 and not x10 and not x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s26;

      elsif ( x21 and not x10 and not x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y74 <= '1' ;
         current_doron <= s27;

      elsif ( not x21 and x22 and x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and x19 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and x10 and not x11 and not x19 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and x17 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and x11 and not x17 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x14 and not x10 and not x11 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and not x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s23;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and x10 and not x11 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and x16 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and x11 and not x16 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x14 and not x10 and not x11 ) = '1' then
         y102 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and not x22 and x10 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s20;

      else
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s16;

      end if;

   when s29 =>
      if ( x21 ) = '1' then
         y4 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s30;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s31;

      end if;

   when s30 =>
      if ( x21 and x13 and x10 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y90 <= '1' ;
         current_doron <= s24;

      elsif ( x21 and x13 and not x10 and x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s22;

      elsif ( x21 and x13 and not x10 and x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( x21 and x13 and not x10 and not x11 and x14 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s26;

      elsif ( x21 and x13 and not x10 and not x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y74 <= '1' ;
         current_doron <= s27;

      elsif ( x21 and not x13 ) = '1' then
         y9 <= '1' ;
         y65 <= '1' ;
         y84 <= '1' ;
         y86 <= '1' ;
         y91 <= '1' ;
         current_doron <= s28;

      elsif ( not x21 and x13 and x22 and x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s25;

      elsif ( not x21 and x13 and x22 and x14 and x10 and not x11 and x19 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and x10 and not x11 and not x19 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and not x10 and x11 and x17 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and not x10 and x11 and not x17 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and x14 and not x10 and not x11 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x13 and x22 and not x14 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s23;

      elsif ( not x21 and x13 and x22 and not x14 and x10 and not x11 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and x10 and not x11 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and x18 ) = '1' then
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and x16 and not x18 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and x11 and not x16 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x13 and x22 and not x14 and not x10 and not x11 ) = '1' then
         y102 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x13 and not x22 and x10 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s20;

      elsif ( not x21 and x13 and not x22 and not x10 ) = '1' then
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y94 <= '1' ;
         current_doron <= s16;

      else
         y9 <= '1' ;
         y65 <= '1' ;
         y84 <= '1' ;
         y86 <= '1' ;
         y91 <= '1' ;
         current_doron <= s28;

      end if;

   when s31 =>
      if ( x22 ) = '1' then
         y54 <= '1' ;
         current_doron <= s24;

      else
         y60 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y92 <= '1' ;
         current_doron <= s43;

      end if;

   when s32 =>
         y80 <= '1' ;
         current_doron <= s44;

   when s33 =>
      if ( x21 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y93 <= '1' ;
         current_doron <= s14;

      elsif ( not x21 and x22 ) = '1' then
         y4 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s30;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s40;

      end if;

   when s34 =>
      if ( x21 and x15 ) = '1' then
         y44 <= '1' ;
         y45 <= '1' ;
         current_doron <= s14;

      elsif ( x21 and not x15 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and not x15 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and not x15 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( x21 and not x15 and not x6 ) = '1' then
         current_doron <= s1;

      else
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s35;

      end if;

   when s35 =>
         y65 <= '1' ;
         y90 <= '1' ;
         y92 <= '1' ;
         y98 <= '1' ;
         y99 <= '1' ;
         current_doron <= s14;

   when s36 =>
      if ( x21 ) = '1' then
         y80 <= '1' ;
         current_doron <= s45;

      else
         y80 <= '1' ;
         current_doron <= s44;

      end if;

   when s37 =>
         y80 <= '1' ;
         current_doron <= s45;

   when s38 =>
      if ( x21 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y93 <= '1' ;
         current_doron <= s46;

      elsif ( not x21 and x22 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         current_doron <= s31;

      else
         y4 <= '1' ;
         y9 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         current_doron <= s30;

      end if;

   when s39 =>
      if ( x21 and x3 ) = '1' then
         y5 <= '1' ;
         current_doron <= s38;

      elsif ( x21 and not x3 ) = '1' then
         y4 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y93 <= '1' ;
         current_doron <= s46;

      elsif ( not x21 and x22 and x3 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y96 <= '1' ;
         current_doron <= s36;

      elsif ( not x21 and x22 and not x3 ) = '1' then
         y60 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y79 <= '1' ;
         current_doron <= s36;

      elsif ( not x21 and not x22 and x3 ) = '1' then
         y62 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y96 <= '1' ;
         current_doron <= s37;

      else
         y60 <= '1' ;
         y62 <= '1' ;
         y65 <= '1' ;
         y79 <= '1' ;
         current_doron <= s37;

      end if;

   when s40 =>
         y60 <= '1' ;
         y65 <= '1' ;
         y78 <= '1' ;
         y92 <= '1' ;
         current_doron <= s24;

   when s41 =>
         y80 <= '1' ;
         current_doron <= s47;

   when s42 =>
      if ( x15 ) = '1' then
         y44 <= '1' ;
         y45 <= '1' ;
         current_doron <= s14;

      elsif ( not x15 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   when s43 =>
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s26;

   when s44 =>
      if ( x21 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( x21 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and x20 ) = '1' then
         y6 <= '1' ;
         current_doron <= s11;

      elsif ( not x21 and x22 and not x20 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x20 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and x22 and not x20 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 and not x20 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and not x22 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and not x22 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and not x22 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   when s45 =>
      if ( x21 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( x21 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      elsif ( x21 and not x6 ) = '1' then
         current_doron <= s1;

      elsif ( not x21 and x22 ) = '1' then
         y56 <= '1' ;
         current_doron <= s48;

      elsif ( not x21 and not x22 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and not x22 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x21 and not x22 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   when s46 =>
         y3 <= '1' ;
         y77 <= '1' ;
         current_doron <= s23;

   when s47 =>
         y74 <= '1' ;
         current_doron <= s49;

   when s48 =>
         y12 <= '1' ;
         y62 <= '1' ;
         y64 <= '1' ;
         y65 <= '1' ;
         current_doron <= s14;

   when s49 =>
      if ( x15 ) = '1' then
         y46 <= '1' ;
         y47 <= '1' ;
         current_doron <= s14;

      elsif ( not x15 and x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         current_doron <= s1;

      elsif ( not x15 and x6 and not x7 and not x8 ) = '1' then
         current_doron <= s1;

      else
         current_doron <= s1;

      end if;

   end case;
   end proc_doron;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;
	y14  <= '0' ;	y15  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;
	y44  <= '0' ;	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;
	y54  <= '0' ;	y56  <= '0' ;	y57  <= '0' ;	y58  <= '0' ;
	y59  <= '0' ;	y60  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;
	y64  <= '0' ;	y65  <= '0' ;	y67  <= '0' ;	y68  <= '0' ;
	y71  <= '0' ;	y73  <= '0' ;	y74  <= '0' ;	y77  <= '0' ;
	y78  <= '0' ;	y79  <= '0' ;	y80  <= '0' ;	y81  <= '0' ;
	y84  <= '0' ;	y86  <= '0' ;	y88  <= '0' ;	y90  <= '0' ;
	y91  <= '0' ;	y92  <= '0' ;	y93  <= '0' ;	y94  <= '0' ;
	y95  <= '0' ;	y96  <= '0' ;	y97  <= '0' ;	y98  <= '0' ;
	y99  <= '0' ;	y100 <= '0' ;	y102 <= '0' ;	y110 <= '0' ;

	current_doron <= s1;
      elsif (clk'event and clk ='1') then
        proc_doron;
      end if;
   end process;
end ARC;
