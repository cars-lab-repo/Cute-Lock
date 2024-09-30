library ieee;
use ieee.std_logic_1164.all;

entity sasi is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54 : out std_logic );
end sasi;

architecture ARC of sasi is

   type states_sasi is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38 );
   signal current_sasi : states_sasi;

begin
   process (clk , rst)
   procedure proc_sasi is
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
	y53  <= '0' ;	y54  <= '0' ;

   case current_sasi is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_sasi <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y22 <= '1' ;
         current_sasi <= s3;

      else
         current_sasi <= s1;

      end if;

   when s2 =>
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s4;

   when s3 =>
         y1 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s5;

   when s4 =>
         y9 <= '1' ;
         y21 <= '1' ;
         y41 <= '1' ;
         current_sasi <= s6;

   when s5 =>
         y4 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s7;

   when s6 =>
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s8;

   when s7 =>
      if ( x3 and x5 and x7 and x9 and x11 ) = '1' then
         y26 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and x5 and x7 and x9 and not x11 ) = '1' then
         y28 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and x5 and x7 and not x9 and x10 and x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and x5 and x7 and not x9 and x10 and x11 and not x12 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x3 and x5 and x7 and not x9 and x10 and x11 and not x12 and x19 and not x13 ) = '1' then
         current_sasi <= s1;

      elsif ( x3 and x5 and x7 and not x9 and x10 and x11 and not x12 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x3 and x5 and x7 and not x9 and x10 and not x11 and x13 ) = '1' then
         y19 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and x5 and x7 and not x9 and x10 and not x11 and not x13 and x19 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x3 and x5 and x7 and not x9 and x10 and not x11 and not x13 and x19 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x3 and x5 and x7 and not x9 and x10 and not x11 and not x13 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x3 and x5 and x7 and not x9 and not x10 and x11 ) = '1' then
         y5 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and x5 and x7 and not x9 and not x10 and not x11 ) = '1' then
         y8 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and x5 and not x7 ) = '1' then
         y3 <= '1' ;
         y6 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s10;

      elsif ( x3 and not x5 and x8 and x7 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y31 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and not x5 and x8 and not x7 and x9 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x3 and not x5 and x8 and not x7 and x9 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x3 and not x5 and x8 and not x7 and x9 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x3 and not x5 and x8 and not x7 and x9 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x3 and not x5 and x8 and not x7 and not x9 and x10 and x11 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and not x5 and x8 and not x7 and not x9 and x10 and not x11 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and not x5 and x8 and not x7 and not x9 and not x10 ) = '1' then
         y3 <= '1' ;
         y11 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sasi <= s9;

      elsif ( x3 and not x5 and not x8 ) = '1' then
         y3 <= '1' ;
         y6 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s10;

      else
         y3 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_sasi <= s11;

      end if;

   when s8 =>
         y19 <= '1' ;
         y24 <= '1' ;
         y26 <= '1' ;
         current_sasi <= s1;

   when s9 =>
      if ( x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      else
         current_sasi <= s1;

      end if;

   when s10 =>
      if ( x6 ) = '1' then
         y4 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s12;

      elsif ( not x6 and x14 and x7 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s13;

      elsif ( not x6 and x14 and not x7 and x5 and x9 and x10 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s14;

      elsif ( not x6 and x14 and not x7 and x5 and x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s15;

      elsif ( not x6 and x14 and not x7 and x5 and x9 and not x10 and not x11 and x15 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x6 and x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and x11 and x16 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and not x11 and x17 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x6 and x14 and not x7 and x5 and not x9 and not x10 and not x11 ) = '1' then
         y24 <= '1' ;
         current_sasi <= s9;

      elsif ( not x6 and x14 and not x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s16;

      else
         y2 <= '1' ;
         y7 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s17;

      end if;

   when s11 =>
      if ( x4 ) = '1' then
         y23 <= '1' ;
         current_sasi <= s3;

      elsif ( not x4 and x5 and x7 and x9 and x11 ) = '1' then
         y26 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and x5 and x7 and x9 and not x11 ) = '1' then
         y28 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and x11 and not x12 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and x11 and not x12 and x19 and not x13 ) = '1' then
         current_sasi <= s1;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and x11 and not x12 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and not x11 and x13 ) = '1' then
         y19 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and not x11 and not x13 and x19 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and not x11 and not x13 and x19 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x4 and x5 and x7 and not x9 and x10 and not x11 and not x13 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x4 and x5 and x7 and not x9 and not x10 and x11 ) = '1' then
         y5 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and x5 and x7 and not x9 and not x10 and not x11 ) = '1' then
         y8 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and x5 and not x7 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s17;

      elsif ( not x4 and not x5 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s17;

      elsif ( not x4 and not x5 and not x6 and x7 and x9 and x10 and x11 ) = '1' then
         y10 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and x7 and x9 and x10 and not x11 ) = '1' then
         y32 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and x7 and x9 and not x10 and x11 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and x7 and x9 and not x10 and not x11 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y36 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and x7 and not x9 and x10 and x11 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sasi <= s18;

      elsif ( not x4 and not x5 and not x6 and x7 and not x9 and x10 and not x11 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y34 <= '1' ;
         y39 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and x7 and not x9 and not x10 and x11 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y38 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and x7 and not x9 and not x10 and not x11 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and not x7 and x9 and x10 and x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s19;

      elsif ( not x4 and not x5 and not x6 and not x7 and x9 and x10 and not x11 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y50 <= '1' ;
         y51 <= '1' ;
         current_sasi <= s20;

      elsif ( not x4 and not x5 and not x6 and not x7 and x9 and not x10 and x11 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y46 <= '1' ;
         y47 <= '1' ;
         current_sasi <= s21;

      elsif ( not x4 and not x5 and not x6 and not x7 and x9 and not x10 and not x11 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         current_sasi <= s22;

      elsif ( not x4 and not x5 and not x6 and not x7 and not x9 and x10 and x11 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sasi <= s9;

      elsif ( not x4 and not x5 and not x6 and not x7 and not x9 and x10 and not x11 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y37 <= '1' ;
         current_sasi <= s9;

      else
         y11 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_sasi <= s9;

      end if;

   when s12 =>
      if ( x14 and x7 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s13;

      elsif ( x14 and not x7 and x5 and x9 and x10 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s14;

      elsif ( x14 and not x7 and x5 and x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s15;

      elsif ( x14 and not x7 and x5 and x9 and not x10 and not x11 and x15 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and x9 and not x10 and not x11 and not x15 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and x11 and x16 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and x11 and not x16 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and not x11 and x17 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and x10 and not x11 and not x17 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x14 and not x7 and x5 and not x9 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( x14 and not x7 and x5 and not x9 and not x10 and not x11 ) = '1' then
         y24 <= '1' ;
         current_sasi <= s9;

      elsif ( x14 and not x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s16;

      else
         y2 <= '1' ;
         y7 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s17;

      end if;

   when s13 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         current_sasi <= s23;

   when s14 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         current_sasi <= s24;

   when s15 =>
         y19 <= '1' ;
         current_sasi <= s9;

   when s16 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         current_sasi <= s25;

   when s17 =>
      if ( x7 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s13;

      elsif ( not x7 and x5 and x9 and x10 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s14;

      elsif ( not x7 and x5 and x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s15;

      elsif ( not x7 and x5 and x9 and not x10 and not x11 and x15 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x7 and x5 and x9 and not x10 and not x11 and not x15 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x7 and x5 and x9 and not x10 and not x11 and not x15 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and x11 and x16 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and x11 and not x16 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and x11 and not x16 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and not x11 and x17 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and not x11 and not x17 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and x10 and not x11 and not x17 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x7 and x5 and not x9 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x7 and x5 and not x9 and not x10 and not x11 ) = '1' then
         y24 <= '1' ;
         current_sasi <= s9;

      else
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s16;

      end if;

   when s18 =>
         y9 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y38 <= '1' ;
         current_sasi <= s26;

   when s19 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y46 <= '1' ;
         y47 <= '1' ;
         current_sasi <= s27;

   when s20 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         current_sasi <= s28;

   when s21 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y48 <= '1' ;
         current_sasi <= s9;

   when s22 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y54 <= '1' ;
         current_sasi <= s9;

   when s23 =>
         y1 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s29;

   when s24 =>
         y1 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y42 <= '1' ;
         current_sasi <= s30;

   when s25 =>
         y1 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_sasi <= s31;

   when s26 =>
         y5 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y39 <= '1' ;
         current_sasi <= s9;

   when s27 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_sasi <= s9;

   when s28 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y48 <= '1' ;
         y54 <= '1' ;
         current_sasi <= s9;

   when s29 =>
      if ( x9 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x9 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x9 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x9 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x9 and x10 and x11 ) = '1' then
         y9 <= '1' ;
         y21 <= '1' ;
         y30 <= '1' ;
         current_sasi <= s32;

      elsif ( not x9 and x10 and not x11 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sasi <= s33;

      elsif ( not x9 and not x10 and x11 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

      elsif ( not x9 and not x10 and not x11 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x9 and not x10 and not x11 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x9 and not x10 and not x11 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      else
         current_sasi <= s1;

      end if;

   when s30 =>
         y9 <= '1' ;
         y21 <= '1' ;
         y44 <= '1' ;
         current_sasi <= s34;

   when s31 =>
      if ( x9 and x10 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x9 and x10 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x9 and x10 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x9 and x10 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x9 and not x10 and x11 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x9 and not x10 and x11 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( x9 and not x10 and x11 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( x9 and not x10 and x11 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( x9 and not x10 and not x11 ) = '1' then
         y5 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sasi <= s9;

      elsif ( not x9 and x10 and x11 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x9 and x10 and x11 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x9 and x10 and x11 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      elsif ( not x9 and x10 and x11 and not x19 ) = '1' then
         current_sasi <= s1;

      elsif ( not x9 and x10 and not x11 ) = '1' then
         y5 <= '1' ;
         y18 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_sasi <= s9;

      else
         y5 <= '1' ;
         y11 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y34 <= '1' ;
         current_sasi <= s9;

      end if;

   when s32 =>
         y2 <= '1' ;
         y9 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_sasi <= s35;

   when s33 =>
         y9 <= '1' ;
         y21 <= '1' ;
         y41 <= '1' ;
         y45 <= '1' ;
         current_sasi <= s36;

   when s34 =>
         y6 <= '1' ;
         current_sasi <= s37;

   when s35 =>
         y5 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_sasi <= s9;

   when s36 =>
         y9 <= '1' ;
         y21 <= '1' ;
         y44 <= '1' ;
         current_sasi <= s9;

   when s37 =>
         y9 <= '1' ;
         y21 <= '1' ;
         y41 <= '1' ;
         current_sasi <= s38;

   when s38 =>
      if ( x18 ) = '1' then
         y19 <= '1' ;
         current_sasi <= s9;

      elsif ( not x18 and x19 and x13 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x18 and x19 and not x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_sasi <= s1;

      elsif ( not x18 and x19 and not x13 and not x12 ) = '1' then
         current_sasi <= s1;

      else
         current_sasi <= s1;

      end if;

   end case;
   end proc_sasi;

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
	y53  <= '0' ;	y54  <= '0' ;
	current_sasi <= s1;
      elsif (clk'event and clk ='1') then
        proc_sasi;
      end if;
   end process;
end ARC;
