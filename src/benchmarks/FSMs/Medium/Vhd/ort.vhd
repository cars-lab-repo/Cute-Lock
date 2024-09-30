library ieee;
use ieee.std_logic_1164.all;

entity ort is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,
	x61 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48 : out std_logic );
end ort;

architecture ARC of ort is

   type states_ort is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56 );
   signal current_ort : states_ort;

begin
   process (clk , rst)
   procedure proc_ort is
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


   case current_ort is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y1 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         current_ort <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y10 <= '1' ;
         current_ort <= s3;

      else
         current_ort <= s1;

      end if;

   when s2 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s4;

   when s3 =>
         y12 <= '1' ;
         current_ort <= s5;

   when s4 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y40 <= '1' ;
         y42 <= '1' ;
         current_ort <= s6;

   when s5 =>
         y1 <= '1' ;
         y13 <= '1' ;
         y15 <= '1' ;
         current_ort <= s7;

   when s6 =>
         y5 <= '1' ;
         current_ort <= s8;

   when s7 =>
         y5 <= '1' ;
         current_ort <= s9;

   when s8 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         current_ort <= s10;

   when s9 =>
         y1 <= '1' ;
         y13 <= '1' ;
         y15 <= '1' ;
         current_ort <= s11;

   when s10 =>
         y5 <= '1' ;
         current_ort <= s12;

   when s11 =>
         y1 <= '1' ;
         y12 <= '1' ;
         y26 <= '1' ;
         current_ort <= s13;

   when s12 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         current_ort <= s14;

   when s13 =>
         y5 <= '1' ;
         current_ort <= s15;

   when s14 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s16;

   when s15 =>
      if ( x4 and x5 and x6 and x30 and x36 ) = '1' then
         y8 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and x5 and x6 and x30 and not x36 ) = '1' then
         y24 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and x5 and x6 and not x30 and x31 and x33 and x34 ) = '1' then
         y7 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and x5 and x6 and not x30 and x31 and x33 and not x34 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and x31 and x33 and not x34 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and x31 and x33 and not x34 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and x31 and x33 and not x34 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and x31 and not x33 and x35 ) = '1' then
         y7 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and x5 and x6 and not x30 and x31 and not x33 and not x35 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and x31 and not x33 and not x35 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and x31 and not x33 and not x35 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and x31 and not x33 and not x35 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( x4 and x5 and x6 and not x30 and not x31 and x32 ) = '1' then
         y1 <= '1' ;
         y22 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s18;

      elsif ( x4 and x5 and x6 and not x30 and not x31 and not x32 ) = '1' then
         y1 <= '1' ;
         y20 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s19;

      elsif ( x4 and x5 and not x6 and x7 and x23 and x24 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y37 <= '1' ;
         current_ort <= s20;

      elsif ( x4 and x5 and not x6 and x7 and x23 and not x24 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and x5 and not x6 and x7 and not x23 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and x5 and not x6 and not x7 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         y33 <= '1' ;
         y37 <= '1' ;
         current_ort <= s21;

      elsif ( x4 and not x5 and x8 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         y33 <= '1' ;
         y37 <= '1' ;
         current_ort <= s21;

      elsif ( x4 and not x5 and not x8 and x9 and x25 and x26 ) = '1' then
         y14 <= '1' ;
         y19 <= '1' ;
         y33 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and not x5 and not x8 and x9 and x25 and not x26 ) = '1' then
         y14 <= '1' ;
         y18 <= '1' ;
         y33 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and not x5 and not x8 and x9 and not x25 ) = '1' then
         y14 <= '1' ;
         y17 <= '1' ;
         y35 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

      elsif ( x4 and not x5 and not x8 and not x9 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         y33 <= '1' ;
         y37 <= '1' ;
         current_ort <= s21;

      else
         y1 <= '1' ;
         y33 <= '1' ;
         y37 <= '1' ;
         y46 <= '1' ;
         current_ort <= s22;

      end if;

   when s16 =>
         y7 <= '1' ;
         current_ort <= s23;

   when s17 =>
      if ( x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      else
         current_ort <= s1;

      end if;

   when s18 =>
         y23 <= '1' ;
         current_ort <= s17;

   when s19 =>
         y21 <= '1' ;
         current_ort <= s17;

   when s20 =>
         y1 <= '1' ;
         y15 <= '1' ;
         y37 <= '1' ;
         y44 <= '1' ;
         current_ort <= s24;

   when s21 =>
      if ( x36 ) = '1' then
         y1 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         current_ort <= s25;

      elsif ( not x36 and x38 and x39 and x41 and x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_ort <= s26;

      elsif ( not x36 and x38 and x39 and x41 and not x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y44 <= '1' ;
         current_ort <= s17;

      elsif ( not x36 and x38 and x39 and not x41 ) = '1' then
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s27;

      elsif ( not x36 and x38 and not x39 and x40 and x55 and x56 ) = '1' then
         y28 <= '1' ;
         current_ort <= s28;

      elsif ( not x36 and x38 and not x39 and x40 and x55 and not x56 and x58 ) = '1' then
         y11 <= '1' ;
         current_ort <= s29;

      elsif ( not x36 and x38 and not x39 and x40 and x55 and not x56 and not x58 and x59 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x36 and x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and x57 and x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and not x57 and x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and not x54 and x53 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x36 and x38 and not x39 and x40 and not x55 and not x54 and not x53 ) = '1' then
         y30 <= '1' ;
         current_ort <= s17;

      elsif ( not x36 and x38 and not x39 and not x40 ) = '1' then
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s30;

      else
         y2 <= '1' ;
         y35 <= '1' ;
         y37 <= '1' ;
         y43 <= '1' ;
         current_ort <= s31;

      end if;

   when s22 =>
      if ( x10 ) = '1' then
         y25 <= '1' ;
         current_ort <= s3;

      elsif ( not x10 and x11 and x14 and x30 and x36 ) = '1' then
         y8 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and x14 and x30 and not x36 ) = '1' then
         y24 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and x33 and x34 ) = '1' then
         y7 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and x33 and not x34 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and x33 and not x34 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and x33 and not x34 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and x33 and not x34 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and not x33 and x35 ) = '1' then
         y7 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and not x33 and not x35 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and not x33 and not x35 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and not x33 and not x35 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and x31 and not x33 and not x35 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x10 and x11 and x14 and not x30 and not x31 and x32 ) = '1' then
         y1 <= '1' ;
         y22 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s18;

      elsif ( not x10 and x11 and x14 and not x30 and not x31 and not x32 ) = '1' then
         y1 <= '1' ;
         y20 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s19;

      elsif ( not x10 and x11 and not x14 and x15 and x16 and x20 and x22 ) = '1' then
         y34 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and not x14 and x15 and x16 and x20 and not x22 ) = '1' then
         y36 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and not x14 and x15 and x16 and not x20 and x21 ) = '1' then
         y38 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and not x14 and x15 and x16 and not x20 and not x21 ) = '1' then
         y37 <= '1' ;
         y39 <= '1' ;
         y44 <= '1' ;
         y47 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and not x14 and x15 and not x16 and x17 and x19 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         y45 <= '1' ;
         current_ort <= s32;

      elsif ( not x10 and x11 and not x14 and x15 and not x16 and x17 and not x19 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y44 <= '1' ;
         y48 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and not x14 and x15 and not x16 and not x17 and x18 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y45 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and not x14 and x15 and not x16 and not x17 and not x18 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and x11 and not x14 and not x15 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         y37 <= '1' ;
         y45 <= '1' ;
         current_ort <= s33;

      elsif ( not x10 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         y37 <= '1' ;
         y45 <= '1' ;
         current_ort <= s33;

      elsif ( not x10 and not x11 and not x12 and x13 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         y37 <= '1' ;
         y45 <= '1' ;
         current_ort <= s33;

      elsif ( not x10 and not x11 and not x12 and not x13 and x43 and x46 and x48 ) = '1' then
         y37 <= '1' ;
         y39 <= '1' ;
         y47 <= '1' ;
         current_ort <= s34;

      elsif ( not x10 and not x11 and not x12 and not x13 and x43 and x46 and not x48 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s35;

      elsif ( not x10 and not x11 and not x12 and not x13 and x43 and not x46 and x47 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y44 <= '1' ;
         current_ort <= s36;

      elsif ( not x10 and not x11 and not x12 and not x13 and x43 and not x46 and not x47 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y44 <= '1' ;
         current_ort <= s37;

      elsif ( not x10 and not x11 and not x12 and not x13 and not x43 and x44 and x45 ) = '1' then
         y19 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_ort <= s17;

      elsif ( not x10 and not x11 and not x12 and not x13 and not x43 and x44 and not x45 ) = '1' then
         y14 <= '1' ;
         y18 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y45 <= '1' ;
         current_ort <= s17;

      else
         y14 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y45 <= '1' ;
         current_ort <= s17;

      end if;

   when s23 =>
         y8 <= '1' ;
         current_ort <= s38;

   when s24 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s39;

   when s25 =>
         y5 <= '1' ;
         current_ort <= s40;

   when s26 =>
         y37 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y44 <= '1' ;
         current_ort <= s41;

   when s27 =>
         y5 <= '1' ;
         current_ort <= s42;

   when s28 =>
      if ( x60 ) = '1' then
         y7 <= '1' ;
         current_ort <= s17;

      elsif ( not x60 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x60 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x60 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      else
         current_ort <= s1;

      end if;

   when s29 =>
         y1 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         current_ort <= s43;

   when s30 =>
         y5 <= '1' ;
         current_ort <= s44;

   when s31 =>
      if ( x39 and x41 and x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_ort <= s26;

      elsif ( x39 and x41 and not x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y44 <= '1' ;
         current_ort <= s17;

      elsif ( x39 and not x41 ) = '1' then
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s27;

      elsif ( not x39 and x40 and x55 and x56 ) = '1' then
         y28 <= '1' ;
         current_ort <= s28;

      elsif ( not x39 and x40 and x55 and not x56 and x58 ) = '1' then
         y11 <= '1' ;
         current_ort <= s29;

      elsif ( not x39 and x40 and x55 and not x56 and not x58 and x59 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x39 and x40 and x55 and not x56 and not x58 and not x59 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and x57 and x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and x57 and not x28 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and not x57 and x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and x54 and not x57 and not x29 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x39 and x40 and not x55 and not x54 and x53 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x39 and x40 and not x55 and not x54 and not x53 ) = '1' then
         y30 <= '1' ;
         current_ort <= s17;

      else
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s30;

      end if;

   when s32 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y44 <= '1' ;
         y48 <= '1' ;
         current_ort <= s45;

   when s33 =>
      if ( x51 and x41 and x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_ort <= s26;

      elsif ( x51 and x41 and not x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y44 <= '1' ;
         current_ort <= s17;

      elsif ( x51 and not x41 ) = '1' then
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s27;

      elsif ( not x51 and x52 and x55 and x56 ) = '1' then
         y28 <= '1' ;
         current_ort <= s28;

      elsif ( not x51 and x52 and x55 and not x56 and x58 ) = '1' then
         y11 <= '1' ;
         current_ort <= s29;

      elsif ( not x51 and x52 and x55 and not x56 and not x58 and x59 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x51 and x52 and x55 and not x56 and not x58 and not x59 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x51 and x52 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x51 and x52 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x51 and x52 and x55 and not x56 and not x58 and not x59 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and x57 and x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x51 and x52 and not x55 and x54 and x57 and not x28 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and x57 and not x28 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and x57 and not x28 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and x57 and not x28 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and not x57 and x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x51 and x52 and not x55 and x54 and not x57 and not x29 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and x54 and not x57 and not x29 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( not x51 and x52 and not x55 and not x54 and x53 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( not x51 and x52 and not x55 and not x54 and not x53 ) = '1' then
         y30 <= '1' ;
         current_ort <= s17;

      else
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s46;

      end if;

   when s34 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y44 <= '1' ;
         current_ort <= s47;

   when s35 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y44 <= '1' ;
         current_ort <= s48;

   when s36 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s37 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s38 =>
         y9 <= '1' ;
         current_ort <= s1;

   when s39 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s40 =>
         y1 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         current_ort <= s49;

   when s41 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s50;

   when s42 =>
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s46;

   when s43 =>
         y5 <= '1' ;
         current_ort <= s51;

   when s44 =>
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s52;

   when s45 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s46 =>
         y5 <= '1' ;
         current_ort <= s53;

   when s47 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s48 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s49 =>
      if ( x38 and x39 and x41 and x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_ort <= s26;

      elsif ( x38 and x39 and x41 and not x42 ) = '1' then
         y1 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         y44 <= '1' ;
         current_ort <= s17;

      elsif ( x38 and x39 and not x41 ) = '1' then
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s27;

      elsif ( x38 and not x39 and x40 and x55 and x56 ) = '1' then
         y28 <= '1' ;
         current_ort <= s28;

      elsif ( x38 and not x39 and x40 and x55 and not x56 and x58 ) = '1' then
         y11 <= '1' ;
         current_ort <= s29;

      elsif ( x38 and not x39 and x40 and x55 and not x56 and not x58 and x59 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and x55 and not x56 and not x58 and not x59 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and x57 and x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and x57 and not x28 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and not x57 and x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and x37 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and x3 ) = '1' then
         y32 <= '1' ;
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and x27 and not x37 and not x3 ) = '1' then
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and x54 and not x57 and not x29 and not x27 ) = '1' then
         current_ort <= s1;

      elsif ( x38 and not x39 and x40 and not x55 and not x54 and x53 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      elsif ( x38 and not x39 and x40 and not x55 and not x54 and not x53 ) = '1' then
         y30 <= '1' ;
         current_ort <= s17;

      elsif ( x38 and not x39 and not x40 ) = '1' then
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s30;

      else
         y2 <= '1' ;
         y35 <= '1' ;
         y37 <= '1' ;
         y43 <= '1' ;
         current_ort <= s31;

      end if;

   when s50 =>
         y1 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s51 =>
         y27 <= '1' ;
         current_ort <= s54;

   when s52 =>
         y5 <= '1' ;
         current_ort <= s55;

   when s53 =>
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

   when s54 =>
      if ( x61 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_ort <= s17;

      else
         y1 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         y40 <= '1' ;
         current_ort <= s43;

      end if;

   when s55 =>
         y1 <= '1' ;
         y13 <= '1' ;
         y37 <= '1' ;
         y41 <= '1' ;
         current_ort <= s56;

   when s56 =>
      if ( x49 and x50 ) = '1' then
         y29 <= '1' ;
         current_ort <= s17;

      elsif ( x49 and not x50 ) = '1' then
         y16 <= '1' ;
         y18 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         y44 <= '1' ;
         current_ort <= s17;

      else
         y3 <= '1' ;
         y14 <= '1' ;
         y35 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_ort <= s17;

      end if;

   end case;
   end proc_ort;

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

	current_ort <= s1;
      elsif (clk'event and clk ='1') then
        proc_ort;
      end if;
   end process;
end ARC;
