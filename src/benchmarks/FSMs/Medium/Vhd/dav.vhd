library ieee;
use ieee.std_logic_1164.all;

entity dav is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61 : out std_logic );
end dav;

architecture ARC of dav is

   type states_dav is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23 );
   signal current_dav : states_dav;

begin
   process (clk , rst)
   procedure proc_dav is
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
	y61  <= '0' ;

   case current_dav is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_dav <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_dav <= s3;

      else
         current_dav <= s1;

      end if;

   when s2 =>
      if ( x18 ) = '1' then
         y11 <= '1' ;
         current_dav <= s4;

      else
         y11 <= '1' ;
         current_dav <= s5;

      end if;

   when s3 =>
         y2 <= '1' ;
         y3 <= '1' ;
         current_dav <= s6;

   when s4 =>
      if ( x18 ) = '1' then
         y12 <= '1' ;
         current_dav <= s7;

      elsif ( not x18 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x18 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x18 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      else
         current_dav <= s1;

      end if;

   when s5 =>
         y12 <= '1' ;
         current_dav <= s7;

   when s6 =>
      if ( x18 and x19 and x3 ) = '1' then
         y1 <= '1' ;
         current_dav <= s8;

      elsif ( x18 and x19 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         current_dav <= s9;

      elsif ( x18 and x19 and not x3 and not x4 and x5 and x12 ) = '1' then
         y54 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and x19 and not x3 and not x4 and x5 and not x12 ) = '1' then
         y55 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and x12 and x11 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and x12 and not x11 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and x12 and not x11 and x9 and not x10 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and x12 and not x11 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and not x12 and x10 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and not x12 and not x10 and x9 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and not x12 and not x10 and x9 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and x6 and not x12 and not x10 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and not x6 and x12 ) = '1' then
         y58 <= '1' ;
         y59 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and x19 and not x3 and not x4 and not x5 and not x6 and not x12 ) = '1' then
         y56 <= '1' ;
         y57 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and not x19 and x17 ) = '1' then
         y53 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and not x19 and not x17 and x3 ) = '1' then
         y1 <= '1' ;
         current_dav <= s8;

      elsif ( x18 and not x19 and not x17 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         current_dav <= s9;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and x6 and x12 ) = '1' then
         y45 <= '1' ;
         current_dav <= s11;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and x6 and not x12 ) = '1' then
         y5 <= '1' ;
         current_dav <= s12;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and x12 and x16 ) = '1' then
         y47 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and x12 and not x16 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and x12 and not x16 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and x12 and not x16 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and x12 and not x16 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and not x12 and x15 ) = '1' then
         y47 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and not x12 and not x15 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and not x12 and not x15 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and not x12 and not x15 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and x5 and not x6 and not x12 and not x15 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and x12 and x14 ) = '1' then
         y47 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and x12 and not x14 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and x12 and not x14 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and x12 and not x14 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and x12 and not x14 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and not x12 and x13 ) = '1' then
         y47 <= '1' ;
         current_dav <= s10;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and not x12 and not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and not x12 and not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and not x12 and not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and x6 and not x12 and not x13 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x18 and not x19 and not x17 and not x3 and not x4 and not x5 and not x6 ) = '1' then
         y47 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and x5 and x19 and x6 and x12 ) = '1' then
         y26 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and x5 and x19 and x6 and not x12 ) = '1' then
         y25 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and x5 and x19 and not x6 and x12 ) = '1' then
         y24 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and x5 and x19 and not x6 and not x12 and x3 ) = '1' then
         y1 <= '1' ;
         current_dav <= s8;

      elsif ( not x18 and x5 and x19 and not x6 and not x12 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         current_dav <= s9;

      elsif ( not x18 and x5 and x19 and not x6 and not x12 and not x3 and not x4 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and x5 and not x19 and x3 ) = '1' then
         y1 <= '1' ;
         current_dav <= s8;

      elsif ( not x18 and x5 and not x19 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         current_dav <= s9;

      elsif ( not x18 and x5 and not x19 and not x3 and not x4 and x6 ) = '1' then
         y18 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and x5 and not x19 and not x3 and not x4 and not x6 ) = '1' then
         y17 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and not x5 and x3 ) = '1' then
         y1 <= '1' ;
         current_dav <= s8;

      elsif ( not x18 and not x5 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         current_dav <= s9;

      elsif ( not x18 and not x5 and not x3 and not x4 and x19 and x6 and x12 ) = '1' then
         y33 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and not x5 and not x3 and not x4 and x19 and x6 and not x12 ) = '1' then
         y30 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and not x5 and not x3 and not x4 and x19 and not x6 and x12 ) = '1' then
         y32 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and not x5 and not x3 and not x4 and x19 and not x6 and not x12 ) = '1' then
         y31 <= '1' ;
         current_dav <= s10;

      else
         y16 <= '1' ;
         current_dav <= s10;

      end if;

   when s7 =>
         y3 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_dav <= s10;

   when s8 =>
         y3 <= '1' ;
         y4 <= '1' ;
         current_dav <= s13;

   when s9 =>
      if ( x5 and x19 and x18 and x12 ) = '1' then
         y54 <= '1' ;
         current_dav <= s10;

      elsif ( x5 and x19 and x18 and not x12 ) = '1' then
         y55 <= '1' ;
         current_dav <= s10;

      elsif ( x5 and x19 and not x18 ) = '1' then
         y27 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_dav <= s10;

      elsif ( x5 and not x19 and x6 and x18 and x12 ) = '1' then
         y16 <= '1' ;
         y50 <= '1' ;
         current_dav <= s14;

      elsif ( x5 and not x19 and x6 and x18 and not x12 ) = '1' then
         y12 <= '1' ;
         y48 <= '1' ;
         current_dav <= s15;

      elsif ( x5 and not x19 and x6 and not x18 ) = '1' then
         y18 <= '1' ;
         current_dav <= s10;

      elsif ( x5 and not x19 and not x6 and x18 and x12 and x16 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and x18 and x12 and not x16 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and x18 and not x12 and x15 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and x18 and not x12 and not x15 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x5 and not x19 and not x6 and not x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( not x5 and x19 and x6 and x18 and x12 and x11 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( not x5 and x19 and x6 and x18 and x12 and not x11 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x5 and x19 and x6 and x18 and x12 and not x11 and x9 and not x10 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and x19 and x6 and x18 and x12 and not x11 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and x19 and x6 and x18 and not x12 and x10 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( not x5 and x19 and x6 and x18 and not x12 and not x10 and x9 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x5 and x19 and x6 and x18 and not x12 and not x10 and x9 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and x19 and x6 and x18 and not x12 and not x10 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and x19 and x6 and not x18 and x12 ) = '1' then
         y36 <= '1' ;
         current_dav <= s10;

      elsif ( not x5 and x19 and x6 and not x18 and not x12 ) = '1' then
         y34 <= '1' ;
         current_dav <= s10;

      elsif ( not x5 and x19 and not x6 and x12 and x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( not x5 and x19 and not x6 and x12 and not x18 ) = '1' then
         y38 <= '1' ;
         current_dav <= s17;

      elsif ( not x5 and x19 and not x6 and not x12 and x18 ) = '1' then
         y56 <= '1' ;
         y57 <= '1' ;
         current_dav <= s10;

      elsif ( not x5 and x19 and not x6 and not x12 and not x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( not x5 and not x19 and x18 and x6 and x12 and x14 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and x6 and x12 and not x14 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and x6 and not x12 and x13 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and x6 and not x12 and not x13 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x5 and not x19 and x18 and not x6 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      else
         y21 <= '1' ;
         current_dav <= s10;

      end if;

   when s10 =>
      if ( x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      else
         current_dav <= s1;

      end if;

   when s11 =>
      if ( x13 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      else
         current_dav <= s1;

      end if;

   when s12 =>
         y12 <= '1' ;
         y48 <= '1' ;
         current_dav <= s18;

   when s13 =>
      if ( x7 and x19 and x5 and x18 and x12 ) = '1' then
         y54 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and x5 and x18 and not x12 ) = '1' then
         y55 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and x5 and not x18 ) = '1' then
         y27 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and x6 and x18 and x12 and x11 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and x6 and x18 and x12 and not x11 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and x19 and not x5 and x6 and x18 and x12 and not x11 and x9 and not x10 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and x19 and not x5 and x6 and x18 and x12 and not x11 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and x19 and not x5 and x6 and x18 and not x12 and x10 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and x6 and x18 and not x12 and not x10 and x9 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and x19 and not x5 and x6 and x18 and not x12 and not x10 and x9 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and x19 and not x5 and x6 and x18 and not x12 and not x10 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and x19 and not x5 and x6 and not x18 and x12 ) = '1' then
         y44 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and x6 and not x18 and not x12 ) = '1' then
         y41 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and not x6 and x12 and x18 ) = '1' then
         y59 <= '1' ;
         y61 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and not x6 and x12 and not x18 ) = '1' then
         y43 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and not x6 and not x12 and x18 ) = '1' then
         y56 <= '1' ;
         y57 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and x19 and not x5 and not x6 and not x12 and not x18 ) = '1' then
         y42 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and x5 and x6 and x18 and x12 ) = '1' then
         y50 <= '1' ;
         y52 <= '1' ;
         current_dav <= s19;

      elsif ( x7 and not x19 and x5 and x6 and x18 and not x12 ) = '1' then
         y6 <= '1' ;
         current_dav <= s20;

      elsif ( x7 and not x19 and x5 and x6 and not x18 ) = '1' then
         y18 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and x12 and x16 ) = '1' then
         y51 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and x12 and not x16 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and x12 and not x16 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and x12 and not x16 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and x12 and not x16 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and not x12 and x15 ) = '1' then
         y51 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and not x12 and not x15 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and x18 and not x12 and not x15 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and x5 and not x6 and not x18 ) = '1' then
         y22 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and x12 and x14 ) = '1' then
         y51 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and x12 and not x14 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and x12 and not x14 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and x12 and not x14 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and x12 and not x14 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and not x12 and x13 ) = '1' then
         y51 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and not x12 and not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and not x12 and not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and not x12 and not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and x6 and not x12 and not x13 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x7 and not x19 and not x5 and x18 and not x6 ) = '1' then
         y51 <= '1' ;
         current_dav <= s10;

      elsif ( x7 and not x19 and not x5 and not x18 ) = '1' then
         y23 <= '1' ;
         current_dav <= s10;

      else
         y6 <= '1' ;
         current_dav <= s21;

      end if;

   when s14 =>
      if ( x13 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      else
         current_dav <= s1;

      end if;

   when s15 =>
         y46 <= '1' ;
         current_dav <= s10;

   when s16 =>
      if ( x18 ) = '1' then
         y59 <= '1' ;
         y60 <= '1' ;
         current_dav <= s10;

      elsif ( not x18 and x19 ) = '1' then
         y37 <= '1' ;
         current_dav <= s10;

      else
         y20 <= '1' ;
         current_dav <= s17;

      end if;

   when s17 =>
         y11 <= '1' ;
         current_dav <= s4;

   when s18 =>
         y46 <= '1' ;
         current_dav <= s10;

   when s19 =>
      if ( x13 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      else
         current_dav <= s1;

      end if;

   when s20 =>
         y12 <= '1' ;
         y48 <= '1' ;
         current_dav <= s22;

   when s21 =>
      if ( x4 ) = '1' then
         y7 <= '1' ;
         current_dav <= s23;

      elsif ( not x4 and x8 and x5 and x19 and x18 and x12 ) = '1' then
         y54 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and x5 and x19 and x18 and not x12 ) = '1' then
         y55 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and x5 and x19 and not x18 ) = '1' then
         y27 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and x5 and not x19 and x6 and x18 and x12 ) = '1' then
         y16 <= '1' ;
         y50 <= '1' ;
         current_dav <= s14;

      elsif ( not x4 and x8 and x5 and not x19 and x6 and x18 and not x12 ) = '1' then
         y12 <= '1' ;
         y48 <= '1' ;
         current_dav <= s15;

      elsif ( not x4 and x8 and x5 and not x19 and x6 and not x18 ) = '1' then
         y18 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and x12 and x16 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and not x12 and x15 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and x5 and not x19 and not x6 and not x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and x12 and x11 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and x12 and not x11 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and x12 and not x11 and x9 and not x10 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and x12 and not x11 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and not x12 and x10 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and not x12 and not x10 and x9 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and not x12 and not x10 and x9 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and x18 and not x12 and not x10 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and not x18 and x12 ) = '1' then
         y36 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and x19 and x6 and not x18 and not x12 ) = '1' then
         y34 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and x19 and not x6 and x12 and x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( not x4 and x8 and not x5 and x19 and not x6 and x12 and not x18 ) = '1' then
         y38 <= '1' ;
         current_dav <= s17;

      elsif ( not x4 and x8 and not x5 and x19 and not x6 and not x12 and x18 ) = '1' then
         y56 <= '1' ;
         y57 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and x19 and not x6 and not x12 and not x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and x12 and x14 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and not x12 and x13 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( not x4 and x8 and not x5 and not x19 and x18 and not x6 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( not x4 and x8 and not x5 and not x19 and not x18 ) = '1' then
         y21 <= '1' ;
         current_dav <= s10;

      else
         y8 <= '1' ;
         current_dav <= s9;

      end if;

   when s22 =>
         y46 <= '1' ;
         current_dav <= s10;

   when s23 =>
      if ( x8 and x5 and x19 and x18 and x12 ) = '1' then
         y54 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and x5 and x19 and x18 and not x12 ) = '1' then
         y55 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and x5 and x19 and not x18 ) = '1' then
         y27 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and x5 and not x19 and x6 and x18 and x12 ) = '1' then
         y16 <= '1' ;
         y50 <= '1' ;
         current_dav <= s14;

      elsif ( x8 and x5 and not x19 and x6 and x18 and not x12 ) = '1' then
         y12 <= '1' ;
         y48 <= '1' ;
         current_dav <= s15;

      elsif ( x8 and x5 and not x19 and x6 and not x18 ) = '1' then
         y18 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and x12 and x16 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and x12 and not x16 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and not x12 and x15 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and x18 and not x12 and not x15 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and x5 and not x19 and not x6 and not x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( x8 and not x5 and x19 and x6 and x18 and x12 and x11 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and x19 and x6 and x18 and x12 and not x11 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and not x5 and x19 and x6 and x18 and x12 and not x11 and x9 and not x10 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and x19 and x6 and x18 and x12 and not x11 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and x19 and x6 and x18 and not x12 and x10 ) = '1' then
         y46 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and x19 and x6 and x18 and not x12 and not x10 and x9 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and not x5 and x19 and x6 and x18 and not x12 and not x10 and x9 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and x19 and x6 and x18 and not x12 and not x10 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and x19 and x6 and not x18 and x12 ) = '1' then
         y36 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and x19 and x6 and not x18 and not x12 ) = '1' then
         y34 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and x19 and not x6 and x12 and x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( x8 and not x5 and x19 and not x6 and x12 and not x18 ) = '1' then
         y38 <= '1' ;
         current_dav <= s17;

      elsif ( x8 and not x5 and x19 and not x6 and not x12 and x18 ) = '1' then
         y56 <= '1' ;
         y57 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and x19 and not x6 and not x12 and not x18 ) = '1' then
         y19 <= '1' ;
         current_dav <= s16;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and x12 and x14 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and x12 and not x14 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and not x12 and x13 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and x10 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and not x10 and x11 ) = '1' then
         y15 <= '1' ;
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and x9 and not x10 and not x11 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and x6 and not x12 and not x13 and not x9 ) = '1' then
         current_dav <= s1;

      elsif ( x8 and not x5 and not x19 and x18 and not x6 ) = '1' then
         y49 <= '1' ;
         current_dav <= s10;

      elsif ( x8 and not x5 and not x19 and not x18 ) = '1' then
         y21 <= '1' ;
         current_dav <= s10;

      else
         y8 <= '1' ;
         current_dav <= s9;

      end if;

   end case;
   end proc_dav;

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
	y61  <= '0' ;
	current_dav <= s1;
      elsif (clk'event and clk ='1') then
        proc_dav;
      end if;
   end process;
end ARC;
