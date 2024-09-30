library ieee;
use ieee.std_logic_1164.all;

entity klain is
   port ( clk,rst,x1,x2,x3,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,
	x17,x18,x20,x21,x22,x23,x24,x25,x26,x27 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,y32,
	y34,y37,y38,y39,y40,y41,y42,y44,y45,y46,y47,y48,y49,y50,y53,
	y54,y55,y56,y57,y58,y59,y60,y61 : out std_logic );
end klain;

architecture ARC of klain is

   type states_klain is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54 );
   signal current_klain : states_klain;

begin
   process (clk , rst)
   procedure proc_klain is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y20  <= '0' ;	y21  <= '0' ;
	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;	y25  <= '0' ;
	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;	y29  <= '0' ;
	y30  <= '0' ;	y32  <= '0' ;	y34  <= '0' ;	y37  <= '0' ;
	y38  <= '0' ;	y39  <= '0' ;	y40  <= '0' ;	y41  <= '0' ;
	y42  <= '0' ;	y44  <= '0' ;	y45  <= '0' ;	y46  <= '0' ;
	y47  <= '0' ;	y48  <= '0' ;	y49  <= '0' ;	y50  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;
	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;	y60  <= '0' ;
	y61  <= '0' ;

   case current_klain is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_klain <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         current_klain <= s3;

      else
         current_klain <= s1;

      end if;

   when s2 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y10 <= '1' ;
         y16 <= '1' ;
         current_klain <= s4;

   when s3 =>
         y1 <= '1' ;
         current_klain <= s5;

   when s4 =>
         y3 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_klain <= s6;

   when s5 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_klain <= s7;

   when s6 =>
         y11 <= '1' ;
         current_klain <= s8;

   when s7 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         current_klain <= s9;

   when s8 =>
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s10;

   when s9 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_klain <= s11;

   when s10 =>
      if ( x17 ) = '1' then
         y3 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_klain <= s12;

      else
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s10;

      end if;

   when s11 =>
         y11 <= '1' ;
         current_klain <= s13;

   when s12 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s14;

   when s13 =>
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y38 <= '1' ;
         current_klain <= s15;

   when s14 =>
         y10 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_klain <= s1;

   when s15 =>
      if ( x17 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_klain <= s16;

      else
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y38 <= '1' ;
         current_klain <= s15;

      end if;

   when s16 =>
      if ( x18 and x26 and x14 and x27 and x6 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y28 <= '1' ;
         current_klain <= s20;

      elsif ( x18 and x26 and x14 and x27 and x6 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y28 <= '1' ;
         current_klain <= s21;

      elsif ( x18 and x26 and x14 and x27 and not x6 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         current_klain <= s17;

      elsif ( x18 and x26 and x14 and x27 and not x6 and not x5 ) = '1' then
         y5 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         current_klain <= s18;

      elsif ( x18 and x26 and x14 and not x27 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y32 <= '1' ;
         current_klain <= s19;

      elsif ( x18 and x26 and x14 and not x27 and not x5 ) = '1' then
         y5 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         current_klain <= s18;

      elsif ( x18 and x26 and not x14 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y28 <= '1' ;
         current_klain <= s20;

      elsif ( x18 and x26 and not x14 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y28 <= '1' ;
         current_klain <= s21;

      elsif ( x18 and not x26 and x27 and x14 and x5 ) = '1' then
         y50 <= '1' ;
         current_klain <= s22;

      elsif ( x18 and not x26 and x27 and x14 and not x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         current_klain <= s17;

      elsif ( x18 and not x26 and x27 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y28 <= '1' ;
         current_klain <= s20;

      elsif ( x18 and not x26 and not x27 and x6 and x7 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and x6 and x7 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and x6 and x7 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and x6 and x7 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and x6 and x7 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and x6 and not x7 and x8 ) = '1' then
         y57 <= '1' ;
         current_klain <= s19;

      elsif ( x18 and not x26 and not x27 and x6 and not x7 and not x8 ) = '1' then
         y56 <= '1' ;
         current_klain <= s19;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and x8 and x15 ) = '1' then
         y10 <= '1' ;
         current_klain <= s19;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and not x8 and x16 ) = '1' then
         y10 <= '1' ;
         current_klain <= s19;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x18 and not x26 and not x27 and not x6 and not x7 and x8 ) = '1' then
         y5 <= '1' ;
         y44 <= '1' ;
         y55 <= '1' ;
         y60 <= '1' ;
         current_klain <= s19;

      elsif ( x18 and not x26 and not x27 and not x6 and not x7 and not x8 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_klain <= s19;

      else
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_klain <= s23;

      end if;

   when s17 =>
      if ( x3 and x21 and x26 and x27 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and x26 and x27 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and x26 and x27 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and x26 and x27 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and x26 and x27 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and x26 and not x27 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y20 <= '1' ;
         current_klain <= s6;

      elsif ( x3 and x21 and not x26 and x6 and x7 and x8 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and x7 and x8 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and x7 and x8 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and x7 and x8 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and x7 and x8 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and x7 and not x8 ) = '1' then
         y11 <= '1' ;
         current_klain <= s8;

      elsif ( x3 and x21 and not x26 and x6 and not x7 and x8 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y42 <= '1' ;
         current_klain <= s24;

      elsif ( x3 and x21 and not x26 and x6 and not x7 and not x8 and x11 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x3 and x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and x6 and not x7 and not x8 and not x11 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and x8 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and x8 and not x9 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and not x8 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and x7 and not x8 and not x10 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x3 and x21 and not x26 and not x6 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x3 and x21 and not x26 and not x6 and not x7 and not x8 ) = '1' then
         y49 <= '1' ;
         current_klain <= s25;

      elsif ( x3 and not x21 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_klain <= s26;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y16 <= '1' ;
         y24 <= '1' ;
         current_klain <= s27;

      end if;

   when s18 =>
      if ( x26 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x26 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x26 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x26 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x26 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x12 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and x12 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and x12 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x12 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x12 and not x22 ) = '1' then
         current_klain <= s1;

      else
         y10 <= '1' ;
         current_klain <= s19;

      end if;

   when s19 =>
      if ( x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x22 and not x23 ) = '1' then
         current_klain <= s1;

      else
         current_klain <= s1;

      end if;

   when s20 =>
      if ( x26 and x27 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y16 <= '1' ;
         current_klain <= s28;

      elsif ( x26 and not x27 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y20 <= '1' ;
         current_klain <= s6;

      elsif ( not x26 and x12 ) = '1' then
         y10 <= '1' ;
         current_klain <= s19;

      elsif ( not x26 and not x12 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and not x12 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and not x12 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x12 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      else
         current_klain <= s1;

      end if;

   when s21 =>
      if ( x27 and x6 and x7 and x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y48 <= '1' ;
         current_klain <= s19;

      elsif ( x27 and x6 and x7 and not x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y47 <= '1' ;
         current_klain <= s19;

      elsif ( x27 and x6 and not x7 and x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y45 <= '1' ;
         current_klain <= s19;

      elsif ( x27 and x6 and not x7 and not x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y46 <= '1' ;
         current_klain <= s19;

      elsif ( x27 and not x6 and x7 and x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_klain <= s19;

      elsif ( x27 and not x6 and x7 and not x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_klain <= s19;

      elsif ( x27 and not x6 and not x7 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_klain <= s19;

      elsif ( not x27 and x7 and x6 and x8 ) = '1' then
         y37 <= '1' ;
         current_klain <= s19;

      elsif ( not x27 and x7 and x6 and not x8 ) = '1' then
         y39 <= '1' ;
         current_klain <= s19;

      elsif ( not x27 and x7 and not x6 and x13 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and x13 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and x13 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and x13 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and x13 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and not x13 and x3 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and not x13 and x3 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and not x13 and x3 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and not x13 and x3 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and not x13 and x3 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x27 and x7 and not x6 and not x13 and not x3 ) = '1' then
         y5 <= '1' ;
         y34 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         current_klain <= s29;

      elsif ( not x27 and not x7 and x6 and x8 ) = '1' then
         y40 <= '1' ;
         current_klain <= s19;

      elsif ( not x27 and not x7 and x6 and not x8 ) = '1' then
         y18 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         current_klain <= s30;

      elsif ( not x27 and not x7 and not x6 and x8 ) = '1' then
         y5 <= '1' ;
         y17 <= '1' ;
         y32 <= '1' ;
         y42 <= '1' ;
         current_klain <= s19;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         current_klain <= s19;

      end if;

   when s22 =>
         y5 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         current_klain <= s18;

   when s23 =>
      if ( x13 ) = '1' then
         y61 <= '1' ;
         current_klain <= s5;

      elsif ( not x13 and x26 and x14 and x27 and x6 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y28 <= '1' ;
         current_klain <= s20;

      elsif ( not x13 and x26 and x14 and x27 and x6 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y28 <= '1' ;
         current_klain <= s21;

      elsif ( not x13 and x26 and x14 and x27 and not x6 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         current_klain <= s17;

      elsif ( not x13 and x26 and x14 and x27 and not x6 and not x5 ) = '1' then
         y5 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         current_klain <= s18;

      elsif ( not x13 and x26 and x14 and not x27 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y32 <= '1' ;
         current_klain <= s19;

      elsif ( not x13 and x26 and x14 and not x27 and not x5 ) = '1' then
         y5 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         current_klain <= s18;

      elsif ( not x13 and x26 and not x14 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y28 <= '1' ;
         current_klain <= s20;

      elsif ( not x13 and x26 and not x14 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y28 <= '1' ;
         current_klain <= s21;

      elsif ( not x13 and not x26 and x27 and x14 and x5 ) = '1' then
         y50 <= '1' ;
         current_klain <= s22;

      elsif ( not x13 and not x26 and x27 and x14 and not x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         current_klain <= s17;

      elsif ( not x13 and not x26 and x27 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y28 <= '1' ;
         current_klain <= s20;

      elsif ( not x13 and not x26 and not x27 and x6 and x7 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and x6 and x7 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and x6 and x7 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and x6 and x7 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and x6 and x7 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and x6 and not x7 and x8 ) = '1' then
         y57 <= '1' ;
         current_klain <= s19;

      elsif ( not x13 and not x26 and not x27 and x6 and not x7 and not x8 ) = '1' then
         y56 <= '1' ;
         current_klain <= s19;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and x8 and x15 ) = '1' then
         y10 <= '1' ;
         current_klain <= s19;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and x8 and not x15 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and not x8 and x16 ) = '1' then
         y10 <= '1' ;
         current_klain <= s19;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and x7 and not x8 and not x16 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x13 and not x26 and not x27 and not x6 and not x7 and x8 ) = '1' then
         y5 <= '1' ;
         y44 <= '1' ;
         y55 <= '1' ;
         y60 <= '1' ;
         current_klain <= s19;

      else
         y5 <= '1' ;
         y16 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_klain <= s19;

      end if;

   when s24 =>
         y11 <= '1' ;
         current_klain <= s31;

   when s25 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

   when s26 =>
      if ( x26 and x27 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x26 and x27 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x26 and x27 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x26 and x27 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x26 and x27 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x26 and not x27 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y20 <= '1' ;
         current_klain <= s6;

      elsif ( not x26 and x6 and x7 and x8 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and x6 and x7 and x8 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and x6 and x7 and x8 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x6 and x7 and x8 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x6 and x7 and x8 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x6 and x7 and not x8 ) = '1' then
         y11 <= '1' ;
         current_klain <= s8;

      elsif ( not x26 and x6 and not x7 and x8 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y42 <= '1' ;
         current_klain <= s24;

      elsif ( not x26 and x6 and not x7 and not x8 and x11 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x6 and not x7 and not x8 and not x11 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and x6 and not x7 and not x8 and not x11 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and x8 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and x8 and not x9 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and x8 and not x9 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and not x8 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and not x8 and not x10 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x6 and x7 and not x8 and not x10 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( not x26 and not x6 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      else
         y49 <= '1' ;
         current_klain <= s25;

      end if;

   when s27 =>
         y25 <= '1' ;
         current_klain <= s32;

   when s28 =>
         y25 <= '1' ;
         current_klain <= s33;

   when s29 =>
      if ( x8 ) = '1' then
         y5 <= '1' ;
         y17 <= '1' ;
         y32 <= '1' ;
         y42 <= '1' ;
         current_klain <= s19;

      elsif ( not x8 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x8 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( not x8 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( not x8 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      else
         current_klain <= s1;

      end if;

   when s30 =>
         y11 <= '1' ;
         current_klain <= s34;

   when s31 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y38 <= '1' ;
         current_klain <= s35;

   when s32 =>
         y26 <= '1' ;
         current_klain <= s36;

   when s33 =>
         y26 <= '1' ;
         current_klain <= s37;

   when s34 =>
         y5 <= '1' ;
         y13 <= '1' ;
         y30 <= '1' ;
         y38 <= '1' ;
         current_klain <= s38;

   when s35 =>
      if ( x17 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y18 <= '1' ;
         current_klain <= s39;

      else
         y2 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y38 <= '1' ;
         current_klain <= s35;

      end if;

   when s36 =>
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s40;

   when s37 =>
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s41;

   when s38 =>
      if ( x17 ) = '1' then
         y24 <= '1' ;
         current_klain <= s42;

      else
         y5 <= '1' ;
         y13 <= '1' ;
         y30 <= '1' ;
         y38 <= '1' ;
         current_klain <= s38;

      end if;

   when s39 =>
         y24 <= '1' ;
         current_klain <= s25;

   when s40 =>
      if ( x17 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y16 <= '1' ;
         y27 <= '1' ;
         current_klain <= s43;

      else
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s40;

      end if;

   when s41 =>
      if ( x17 ) = '1' then
         y24 <= '1' ;
         current_klain <= s44;

      else
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s41;

      end if;

   when s42 =>
         y18 <= '1' ;
         y27 <= '1' ;
         y29 <= '1' ;
         y41 <= '1' ;
         current_klain <= s45;

   when s43 =>
      if ( x20 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y17 <= '1' ;
         current_klain <= s46;

      else
         y26 <= '1' ;
         current_klain <= s36;

      end if;

   when s44 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y16 <= '1' ;
         y27 <= '1' ;
         current_klain <= s47;

   when s45 =>
      if ( x20 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x20 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x20 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x20 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x20 and not x22 ) = '1' then
         current_klain <= s1;

      else
         y11 <= '1' ;
         current_klain <= s34;

      end if;

   when s46 =>
      if ( x21 and x26 and x27 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and x26 and x27 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and x26 and x27 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and x26 and x27 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and x26 and x27 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and x26 and not x27 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y20 <= '1' ;
         current_klain <= s6;

      elsif ( x21 and not x26 and x6 and x7 and x8 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and x7 and x8 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and x7 and x8 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and x7 and x8 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and x7 and x8 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and x7 and not x8 ) = '1' then
         y11 <= '1' ;
         current_klain <= s8;

      elsif ( x21 and not x26 and x6 and not x7 and x8 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y42 <= '1' ;
         current_klain <= s24;

      elsif ( x21 and not x26 and x6 and not x7 and not x8 and x11 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and not x7 and not x8 and not x11 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and x6 and not x7 and not x8 and not x11 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and x8 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and x8 and not x9 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and x8 and not x9 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and not x8 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and not x8 and not x10 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and x7 and not x8 and not x10 and not x22 ) = '1' then
         current_klain <= s1;

      elsif ( x21 and not x26 and not x6 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_klain <= s19;

      elsif ( x21 and not x26 and not x6 and not x7 and not x8 ) = '1' then
         y49 <= '1' ;
         current_klain <= s25;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_klain <= s26;

      end if;

   when s47 =>
      if ( x20 and x26 and x27 and x6 and x7 and x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y48 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and x26 and x27 and x6 and x7 and not x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y47 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and x26 and x27 and x6 and not x7 and x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y45 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and x26 and x27 and x6 and not x7 and not x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y46 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and x26 and x27 and not x6 and x7 and x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and x26 and x27 and not x6 and x7 and not x8 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and x26 and x27 and not x6 and not x7 ) = '1' then
         y5 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and x26 and not x27 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         current_klain <= s21;

      elsif ( x20 and not x26 ) = '1' then
         y58 <= '1' ;
         current_klain <= s48;

      else
         y26 <= '1' ;
         current_klain <= s37;

      end if;

   when s48 =>
         y3 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_klain <= s49;

   when s49 =>
         y25 <= '1' ;
         current_klain <= s50;

   when s50 =>
         y26 <= '1' ;
         current_klain <= s51;

   when s51 =>
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s52;

   when s52 =>
      if ( x17 ) = '1' then
         y24 <= '1' ;
         current_klain <= s53;

      else
         y5 <= '1' ;
         y13 <= '1' ;
         y17 <= '1' ;
         y38 <= '1' ;
         current_klain <= s52;

      end if;

   when s53 =>
         y3 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_klain <= s54;

   when s54 =>
      if ( x20 and x12 ) = '1' then
         y10 <= '1' ;
         current_klain <= s19;

      elsif ( x20 and not x12 and x22 and x23 and x24 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x20 and not x12 and x22 and x23 and not x24 and x25 ) = '1' then
         y59 <= '1' ;
         current_klain <= s1;

      elsif ( x20 and not x12 and x22 and x23 and not x24 and not x25 ) = '1' then
         current_klain <= s1;

      elsif ( x20 and not x12 and x22 and not x23 ) = '1' then
         current_klain <= s1;

      elsif ( x20 and not x12 and not x22 ) = '1' then
         current_klain <= s1;

      else
         y26 <= '1' ;
         current_klain <= s51;

      end if;

   end case;
   end proc_klain;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y20  <= '0' ;	y21  <= '0' ;
	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;	y25  <= '0' ;
	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;	y29  <= '0' ;
	y30  <= '0' ;	y32  <= '0' ;	y34  <= '0' ;	y37  <= '0' ;
	y38  <= '0' ;	y39  <= '0' ;	y40  <= '0' ;	y41  <= '0' ;
	y42  <= '0' ;	y44  <= '0' ;	y45  <= '0' ;	y46  <= '0' ;
	y47  <= '0' ;	y48  <= '0' ;	y49  <= '0' ;	y50  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;
	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;	y60  <= '0' ;
	y61  <= '0' ;
	current_klain <= s1;
      elsif (clk'event and clk ='1') then
        proc_klain;
      end if;
   end process;
end ARC;
