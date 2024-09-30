library ieee;
use ieee.std_logic_1164.all;

entity exxm is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24 : out std_logic );
end exxm;

architecture ARC of exxm is

   type states_exxm is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79 );
   signal current_exxm : states_exxm;

begin
   process (clk , rst)
   procedure proc_exxm is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;


   case current_exxm is
   when s1 =>
      if ( x44 and x45 and x10 and x46 and x39 and x36 and x35 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and x10 and x46 and x39 and x36 and not x35 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and x10 and x46 and x39 and not x36 and x43 and x42 and x40 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and x10 and x46 and x39 and not x36 and x43 and x42 and not x40 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( x44 and x45 and x10 and x46 and x39 and not x36 and x43 and not x42 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and x10 and x46 and x39 and not x36 and not x43 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( x44 and x45 and x10 and x46 and not x39 ) = '1' then
         y15 <= '1' ;
         current_exxm <= s7;

      elsif ( x44 and x45 and x10 and not x46 and x11 and x1 and x2 and x4 and x5 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and x10 and not x46 and x11 and x1 and x2 and x4 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x45 and x10 and not x46 and x11 and x1 and x2 and x4 and not x5 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and x10 and not x46 and x11 and x1 and x2 and x4 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and x10 and not x46 and x11 and x1 and x2 and not x4 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and x45 and x10 and not x46 and x11 and x1 and x2 and not x4 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x44 and x45 and x10 and not x46 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s11;

      elsif ( x44 and x45 and x10 and not x46 and x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and x10 and not x46 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s11;

      elsif ( x44 and x45 and x10 and not x46 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      elsif ( x44 and x45 and not x10 and x11 and x46 and x34 and x8 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and x45 and not x10 and x11 and x46 and x34 and not x8 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and not x10 and x11 and x46 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x10 and x11 and x46 and not x34 and x32 and x7 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and x45 and not x10 and x11 and x46 and not x34 and x32 and not x7 and x22 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and not x10 and x11 and x46 and not x34 and x32 and not x7 and x22 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x10 and x11 and x46 and not x34 and x32 and not x7 and not x22 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( x44 and x45 and not x10 and x11 and x46 and not x34 and not x32 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x44 and x45 and not x10 and x11 and not x46 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_exxm <= s16;

      elsif ( x44 and x45 and not x10 and x11 and not x46 and not x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x44 and x45 and not x10 and x11 and not x46 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and not x10 and not x11 and x12 and x46 and x20 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( x44 and x45 and not x10 and not x11 and x12 and x46 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and not x10 and not x11 and x12 and x46 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and x45 and not x10 and not x11 and x12 and not x46 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x44 and x45 and not x10 and not x11 and x12 and not x46 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and not x10 and not x11 and x12 and not x46 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and x46 and x13 and x1 and x3 and x6 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and x46 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and x46 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and x46 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and x46 and not x13 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and not x46 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s20;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and not x46 and not x1 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and not x46 and not x1 and not x2 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and not x10 and not x11 and not x12 and not x46 and not x1 and not x2 and not x9 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and not x45 and x46 and x3 and x10 and x7 ) = '1' then
         y11 <= '1' ;
         current_exxm <= s21;

      elsif ( x44 and not x45 and x46 and x3 and x10 and not x7 and x1 and x5 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x45 and x46 and x3 and x10 and not x7 and x1 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s22;

      elsif ( x44 and not x45 and x46 and x3 and x10 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and x46 and x3 and not x10 and x1 and x5 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x45 and x46 and x3 and not x10 and x1 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s22;

      elsif ( x44 and not x45 and x46 and x3 and not x10 and not x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and x46 and not x3 and x10 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and not x45 and x46 and not x3 and not x10 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( x44 and not x45 and not x46 and x47 and x10 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_exxm <= s16;

      elsif ( x44 and not x45 and not x46 and x47 and x10 and x12 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x44 and not x45 and not x46 and x47 and x10 and x12 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x44 and not x45 and not x46 and x47 and x10 and not x12 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s24;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s25;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and not x22 and x2 and x11 and x5 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and not x22 and x2 and x11 and x5 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and not x22 and x2 and x11 and not x5 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and not x22 and x2 and x11 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and not x22 and x2 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and not x22 and x2 and not x11 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s11;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and not x1 and x11 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and not x1 and x11 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( x44 and not x45 and not x46 and x47 and not x10 and not x1 and not x11 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x44 and not x45 and not x46 and not x47 and x9 and x16 and x8 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and not x45 and not x46 and not x47 and x9 and x16 and not x8 and x5 ) = '1' then
         y7 <= '1' ;
         current_exxm <= s29;

      elsif ( x44 and not x45 and not x46 and not x47 and x9 and x16 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and not x47 and x9 and not x16 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x44 and not x45 and not x46 and not x47 and not x9 and x10 and x5 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and not x46 and not x47 and not x9 and x10 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and not x47 and not x9 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( x44 and not x45 and not x46 and not x47 and not x9 and not x10 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and not x45 and not x46 and not x47 and not x9 and not x10 and not x1 and not x2 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and x46 and x47 and x7 and x45 and x9 and x5 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and x46 and x47 and x7 and x45 and x9 and x5 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and x47 and x7 and x45 and x9 and x5 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and x47 and x7 and x45 and x9 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x46 and x47 and x7 and x45 and not x9 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( not x44 and x46 and x47 and x7 and not x45 and x8 and x1 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and x46 and x47 and x7 and not x45 and x8 and x1 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and x47 and x7 and not x45 and x8 and x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and x47 and x7 and not x45 and x8 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x46 and x47 and x7 and not x45 and not x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( not x44 and x46 and x47 and not x7 and x1 and x45 and x15 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s33;

      elsif ( not x44 and x46 and x47 and not x7 and x1 and x45 and x15 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and x47 and not x7 and x1 and x45 and not x15 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x46 and x47 and not x7 and x1 and not x45 and x8 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s33;

      elsif ( not x44 and x46 and x47 and not x7 and x1 and not x45 and x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and x47 and not x7 and x1 and not x45 and not x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x46 and x47 and not x7 and not x1 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x46 and x47 and not x7 and not x1 and not x8 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x44 and x46 and x47 and not x7 and not x1 and not x8 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and x12 and x10 and x5 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and x12 and x10 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and x12 and not x10 and x8 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and x12 and not x10 and not x8 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and x12 and not x10 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and x10 and x1 and x5 and x13 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and x10 and x1 and x5 and not x13 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and x10 and x1 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and x10 and not x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and not x10 and x13 and x7 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and not x10 and x13 and not x7 and x1 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and not x10 and x13 and not x7 and x1 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and not x10 and x13 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( not x44 and x46 and not x47 and x45 and x11 and not x12 and not x10 and not x13 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and x10 ) = '1' then
         y15 <= '1' ;
         current_exxm <= s7;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and x12 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and x12 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and x12 and not x1 and not x2 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and not x12 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( not x44 and x46 and not x47 and x45 and not x11 and not x10 and not x12 and not x13 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x44 and x46 and not x47 and not x45 and x9 and x11 and x1 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x46 and not x47 and not x45 and x9 and x11 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and not x47 and not x45 and x9 and x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x46 and not x47 and not x45 and x9 and not x11 and x7 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and x46 and not x47 and not x45 and x9 and not x11 and not x7 and x1 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x46 and not x47 and not x45 and x9 and not x11 and not x7 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and not x47 and not x45 and x9 and not x11 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and x10 and x11 and x8 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and x10 and x11 and not x8 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and x10 and x11 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and x10 and not x11 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and x10 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and not x10 and x1 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and not x10 and x1 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and not x10 and x1 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and not x10 and x1 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and not x10 and x1 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x46 and not x47 and not x45 and not x9 and not x10 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and x45 and x47 and x10 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( not x44 and not x46 and x45 and x47 and x10 and not x1 and x4 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      elsif ( not x44 and not x46 and x45 and x47 and x10 and not x1 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( not x44 and not x46 and x45 and x47 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_exxm <= s16;

      elsif ( not x44 and not x46 and x45 and x47 and not x10 and not x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( not x44 and not x46 and x45 and x47 and not x10 and not x1 and not x2 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and x11 and x10 ) = '1' then
         y18 <= '1' ;
         current_exxm <= s38;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and x11 and not x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s39;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and not x11 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and not x11 and not x10 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and not x11 and not x10 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and x9 and x11 and x1 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and x9 and x11 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and x9 and x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and x9 and not x11 and x7 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and x9 and not x11 and not x7 and x1 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and x9 and not x11 and not x7 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and x9 and not x11 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and x10 and x11 and x8 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and x10 and x11 and not x8 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and x10 and x11 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and x10 and not x11 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and x10 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and not x10 and x1 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and not x10 and x1 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and not x10 and x1 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and not x10 and x1 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and not x10 and x1 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 and not x9 and not x10 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and x10 and x13 and x7 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and x10 and x13 and not x7 and x1 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and x10 and x13 and not x7 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and x10 and x13 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and x10 and not x13 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and x10 and not x13 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and not x10 and x8 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and not x10 and not x8 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x46 and not x45 and x11 and x12 and not x10 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and not x45 and x11 and not x12 and x10 and x1 and x5 and x13 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x46 and not x45 and x11 and not x12 and x10 and x1 and x5 and not x13 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and not x46 and not x45 and x11 and not x12 and x10 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and not x45 and x11 and not x12 and x10 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and not x45 and x11 and not x12 and not x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s39;

      elsif ( not x44 and not x46 and not x45 and not x11 and x10 ) = '1' then
         y18 <= '1' ;
         current_exxm <= s38;

      elsif ( not x44 and not x46 and not x45 and not x11 and not x10 and x12 and x1 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x46 and not x45 and not x11 and not x10 and x12 and x1 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and not x45 and not x11 and not x10 and x12 and x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x46 and not x45 and not x11 and not x10 and x12 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and not x45 and not x11 and not x10 and not x12 and x13 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and not x46 and not x45 and not x11 and not x10 and not x12 and x13 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x44 and not x46 and not x45 and not x11 and not x10 and not x12 and x13 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      end if;

   when s2 =>
      if ( x45 and x44 and x46 and x29 and x41 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x45 and x44 and x46 and x29 and not x41 ) = '1' then
         current_exxm <= s2;

      elsif ( x45 and x44 and x46 and not x29 and x14 ) = '1' then
         current_exxm <= s1;

      elsif ( x45 and x44 and x46 and not x29 and not x14 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x45 and x44 and not x46 and x11 and x10 ) = '1' then
         current_exxm <= s1;

      elsif ( x45 and x44 and not x46 and x11 and not x10 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x45 and x44 and not x46 and not x11 and x10 and x12 and x4 and x1 ) = '1' then
         current_exxm <= s2;

      elsif ( x45 and x44 and not x46 and not x11 and x10 and x12 and x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x45 and x44 and not x46 and not x11 and x10 and x12 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x45 and x44 and not x46 and not x11 and x10 and not x12 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x45 and x44 and not x46 and not x11 and not x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x45 and not x44 and x46 and x47 and x1 ) = '1' then
         current_exxm <= s1;

      elsif ( x45 and not x44 and x46 and x47 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( x45 and not x44 and x46 and not x47 and x10 and x2 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x45 and not x44 and x46 and not x47 and x10 and not x2 ) = '1' then
         current_exxm <= s2;

      elsif ( x45 and not x44 and x46 and not x47 and not x10 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x45 and not x44 and x46 and not x47 and not x10 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x45 and not x44 and not x46 and x10 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      elsif ( x45 and not x44 and not x46 and not x10 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( not x45 and x44 and x46 and x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x45 and x44 and x46 and not x2 ) = '1' then
         current_exxm <= s2;

      elsif ( not x45 and x44 and not x46 and x47 and x19 and x13 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_exxm <= s43;

      elsif ( not x45 and x44 and not x46 and x47 and x19 and not x13 and x21 and x18 and x12 ) = '1' then
         current_exxm <= s2;

      elsif ( not x45 and x44 and not x46 and x47 and x19 and not x13 and x21 and x18 and not x12 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_exxm <= s44;

      elsif ( not x45 and x44 and not x46 and x47 and x19 and not x13 and x21 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( not x45 and x44 and not x46 and x47 and x19 and not x13 and not x21 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( not x45 and x44 and not x46 and x47 and not x19 ) = '1' then
         current_exxm <= s1;

      elsif ( not x45 and x44 and not x46 and not x47 and x12 and x15 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x45 and x44 and not x46 and not x47 and x12 and not x15 ) = '1' then
         current_exxm <= s2;

      elsif ( not x45 and x44 and not x46 and not x47 and not x12 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x45 and x44 and not x46 and not x47 and not x12 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x45 and not x44 and x3 ) = '1' then
         current_exxm <= s1;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      end if;

   when s3 =>
      if ( x44 and x45 and x16 and x22 and x29 and x27 and x15 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s45;

      elsif ( x44 and x45 and x16 and x22 and x29 and x27 and not x15 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and x16 and x22 and x29 and not x27 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and x45 and x16 and x22 and not x29 and x27 and x33 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and x16 and x22 and not x29 and x27 and not x33 and x18 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x44 and x45 and x16 and x22 and not x29 and x27 and not x33 and not x18 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and x16 and x22 and not x29 and not x27 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and x45 and x16 and not x22 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x16 and x37 and x21 and x1 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and not x16 and x37 and x21 and not x1 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and x45 and not x16 and x37 and not x21 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x16 and not x37 and x25 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y8 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s46;

      elsif ( x44 and x45 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and x45 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and not x45 and x46 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x45 and x46 and x3 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s22;

      elsif ( x44 and not x45 and x46 and not x3 and x10 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x45 and x46 and not x3 and not x10 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s47;

      elsif ( x44 and not x45 and not x46 and x7 and x9 and x8 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and not x45 and not x46 and x7 and x9 and not x8 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and x7 and not x9 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x46 and not x7 and x6 and x13 and x4 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s48;

      elsif ( x44 and not x45 and not x46 and not x7 and x6 and x13 and not x4 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and not x7 and x6 and not x13 and x4 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and not x45 and not x46 and not x7 and x6 and not x13 and not x4 ) = '1' then
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and not x7 and not x6 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and x10 and x47 and x7 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and x45 and x46 and x10 and x47 and x7 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and x10 and x47 and x7 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and x10 and x47 and not x7 and x9 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x45 and x46 and x10 and x47 and not x7 and not x9 and x1 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and x10 and x47 and not x7 and not x9 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x11 and x4 and x12 and x3 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s45;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x11 and x4 and x12 and not x3 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x11 and x4 and not x12 and x13 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x11 and x4 and not x12 and not x13 and x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x11 and x4 and not x12 and not x13 and not x3 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x11 and not x4 ) = '1' then
         current_exxm <= s3;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and not x11 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and not x10 and x11 and x47 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s33;

      elsif ( not x44 and x45 and x46 and not x10 and x11 and x47 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and not x10 and x11 and not x47 and x13 and x4 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x45 and x46 and not x10 and x11 and not x47 and x13 and not x4 ) = '1' then
         current_exxm <= s3;

      elsif ( not x44 and x45 and x46 and not x10 and x11 and not x47 and not x13 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and not x10 and not x11 and x47 and x9 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x45 and x46 and not x10 and not x11 and x47 and not x9 and x1 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and not x10 and not x11 and x47 and not x9 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and not x10 and not x11 and not x47 and x12 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and not x10 and not x11 and not x47 and not x12 and x4 and x3 ) = '1' then
         y8 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s46;

      elsif ( not x44 and x45 and x46 and not x10 and not x11 and not x47 and not x12 and x4 and not x3 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x45 and x46 and not x10 and not x11 and not x47 and not x12 and not x4 ) = '1' then
         current_exxm <= s3;

      elsif ( not x44 and x45 and not x46 and x12 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x45 and not x46 and x12 and x10 and not x11 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x44 and x45 and not x46 and x12 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x45 and not x46 and x12 and not x10 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and not x46 and x12 and not x10 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and x9 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x45 and not x46 and not x12 and x9 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and x7 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and x7 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and x7 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and not x7 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s33;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and not x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and not x8 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and not x45 and x46 and x47 and not x8 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x45 and x46 and x47 and not x8 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and x9 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and x46 and not x47 and x9 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and x10 and x11 and x5 and x13 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and not x46 and x10 and x11 and x5 and not x13 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and not x45 and not x46 and x10 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and x10 and not x11 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and not x46 and not x10 and x11 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and not x45 and not x46 and not x10 and x11 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x45 and not x46 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x11 and x12 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x11 and x12 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x11 and x12 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x11 and not x12 and x13 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x11 and not x12 and x13 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x11 and not x12 and x13 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      else
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      end if;

   when s4 =>
      if ( x44 and x3 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( x44 and not x3 and x2 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and not x3 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x3 and not x2 and not x28 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x11 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( not x44 and not x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( not x44 and not x11 and not x5 and x1 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      else
         y3 <= '1' ;
         current_exxm <= s17;

      end if;

   when s5 =>
      if ( x44 and x45 and x31 and x19 and x10 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      elsif ( x44 and x45 and x31 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s52;

      elsif ( x44 and x45 and x31 and not x19 ) = '1' then
         current_exxm <= s5;

      elsif ( x44 and x45 and not x31 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s52;

      elsif ( x44 and not x45 and x46 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s52;

      elsif ( x44 and not x45 and not x46 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( not x44 and x45 and x46 and x47 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and x45 and x46 and not x47 and x10 and x6 and x2 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      elsif ( not x44 and x45 and x46 and not x47 and x10 and x6 and not x2 ) = '1' then
         current_exxm <= s5;

      elsif ( not x44 and x45 and x46 and not x47 and x10 and not x6 and x2 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s52;

      elsif ( not x44 and x45 and x46 and not x47 and x10 and not x6 and not x2 ) = '1' then
         current_exxm <= s5;

      elsif ( not x44 and x45 and x46 and not x47 and not x10 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s52;

      elsif ( not x44 and x45 and not x46 and x12 and x9 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and x45 and not x46 and x12 and not x9 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and not x46 and x12 and not x9 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and x45 and not x46 and not x12 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x45 and x46 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x45 and not x46 and x11 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x45 and not x46 and not x11 and x9 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x45 and not x46 and not x11 and not x9 and x7 ) = '1' then
         current_exxm <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      end if;

   when s6 =>
      if ( x44 and x45 and x26 and x42 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and x45 and x26 and not x42 and x15 and x40 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and x45 and x26 and not x42 and x15 and not x40 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and x26 and not x42 and not x15 and x34 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and x26 and not x42 and not x15 and not x34 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and x45 and not x26 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x45 and x2 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and not x45 and not x2 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and x10 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and not x10 and x2 and x11 and x13 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and not x10 and x2 and x11 and not x13 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and not x10 and x2 and not x11 and x12 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and not x10 and x2 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      else
         y2 <= '1' ;
         current_exxm <= s18;

      end if;

   when s7 =>
      if ( x44 and x35 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x35 and x13 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( x44 and not x35 and not x13 ) = '1' then
         y8 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s46;

      elsif ( not x44 and x11 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x11 and x1 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      else
         y8 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s46;

      end if;

   when s8 =>
      if ( x10 and x11 ) = '1' then
         current_exxm <= s1;

      elsif ( x10 and not x11 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( not x10 and x11 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s54;

      elsif ( not x10 and x11 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s55;

      elsif ( not x10 and not x11 and x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      elsif ( not x10 and not x11 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s20;

      elsif ( not x10 and not x11 and not x12 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      else
         current_exxm <= s1;

      end if;

   when s9 =>
      if ( x44 and x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x10 and not x11 and x12 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x10 and not x11 and x12 and not x2 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x44 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x44 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x44 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and not x10 and x12 and x2 and x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s58;

      elsif ( x44 and not x10 and x12 and x2 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x44 and not x10 and x12 and not x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s59;

      elsif ( x44 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and not x10 and not x12 and not x9 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( not x44 and x7 and x45 and x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x7 and x45 and not x11 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x44 and x7 and x45 and not x11 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x7 and not x45 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x7 and not x45 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x44 and x7 and not x45 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x7 and x45 and x16 and x1 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x44 and not x7 and x45 and x16 and not x1 ) = '1' then
         current_exxm <= s9;

      elsif ( not x44 and not x7 and x45 and not x16 and x1 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( not x44 and not x7 and x45 and not x16 and not x1 ) = '1' then
         current_exxm <= s9;

      elsif ( not x44 and not x7 and not x45 and x6 and x2 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x44 and not x7 and not x45 and x6 and not x2 ) = '1' then
         current_exxm <= s9;

      elsif ( not x44 and not x7 and not x45 and not x6 and x2 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      else
         current_exxm <= s9;

      end if;

   when s10 =>
      if ( x44 and x45 and x11 and x10 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and x11 and not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x44 and x45 and x11 and not x10 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x45 and x11 and not x10 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and not x11 and x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and x45 and not x11 and not x10 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and not x11 and not x10 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x44 and not x45 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x44 and not x45 and x19 and x28 and not x1 and x15 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x44 and not x45 and x19 and x28 and not x1 and not x15 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and x19 and not x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( x44 and not x45 and not x19 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x10 and x5 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      elsif ( not x44 and x10 and not x5 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s61;

      elsif ( not x44 and not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( not x44 and not x10 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      else
         y1 <= '1' ;
         current_exxm <= s2;

      end if;

   when s11 =>
      if ( x11 and x45 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x11 and not x45 and x25 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x11 and not x45 and x25 and not x3 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x11 and not x45 and x25 and not x3 and not x5 ) = '1' then
         current_exxm <= s11;

      elsif ( x11 and not x45 and not x25 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x11 and x45 and x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( not x11 and x45 and x1 and not x2 and x3 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( not x11 and x45 and x1 and not x2 and not x3 ) = '1' then
         current_exxm <= s11;

      elsif ( not x11 and x45 and not x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      end if;

   when s12 =>
      if ( x10 and x11 and x4 and x5 and x3 ) = '1' then
         current_exxm <= s12;

      elsif ( x10 and x11 and x4 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x10 and x11 and x4 and not x5 and x3 ) = '1' then
         current_exxm <= s12;

      elsif ( x10 and x11 and x4 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x10 and x11 and not x4 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x10 and x11 and not x4 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( x10 and not x11 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x10 and not x11 and not x2 ) = '1' then
         current_exxm <= s1;

      elsif ( not x10 and x11 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( not x10 and x11 and not x6 and x8 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( not x10 and x11 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( not x10 and x11 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s58;

      elsif ( not x10 and x11 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( not x10 and x11 and not x6 and not x8 ) = '1' then
         current_exxm <= s1;

      elsif ( not x10 and not x11 and x12 and x9 ) = '1' then
         current_exxm <= s1;

      elsif ( not x10 and not x11 and x12 and not x9 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x10 and not x11 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s63;

      elsif ( not x10 and not x11 and not x12 and not x6 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      end if;

   when s13 =>
      if ( x44 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( x44 and not x6 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s55;

      elsif ( not x44 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( not x44 and x10 and not x6 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s55;

      else
         current_exxm <= s13;

      end if;

   when s14 =>
      if ( x44 and x45 and x46 and x8 and x26 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( x44 and x45 and x46 and x8 and not x26 and x37 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and x46 and x8 and not x26 and not x37 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( x44 and x45 and x46 and not x8 and x40 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( x44 and x45 and x46 and not x8 and not x40 and x37 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and x46 and not x8 and not x40 and not x37 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( x44 and x45 and not x46 and x11 and x6 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x44 and x45 and not x46 and x11 and x6 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x44 and x45 and not x46 and x11 and not x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      elsif ( x44 and x45 and not x46 and not x11 and x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and x45 and not x46 and not x11 and not x8 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( x44 and not x45 and x20 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      elsif ( x44 and not x45 and not x20 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x44 and not x45 and not x20 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( not x44 and x46 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( not x44 and x46 and x10 and not x11 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x46 and x10 and not x11 and not x7 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( not x44 and x46 and not x10 and x13 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( not x44 and x46 and not x10 and not x13 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x46 and not x10 and not x13 and not x7 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( not x44 and not x46 and x5 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( not x44 and not x46 and not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      end if;

   when s15 =>
      if ( x44 and x45 and x17 and x19 and x10 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      elsif ( x44 and x45 and x17 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s52;

      elsif ( x44 and x45 and x17 and not x19 ) = '1' then
         current_exxm <= s15;

      elsif ( x44 and x45 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( x44 and x45 and not x17 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and x45 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x45 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( x44 and not x45 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and not x45 and not x1 and not x2 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and x45 and x46 and x10 and x47 and x7 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and x45 and x46 and x10 and x47 and x7 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and x10 and x47 and x7 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and x10 and x47 and not x7 and x9 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x45 and x46 and x10 and x47 and not x7 and not x9 and x1 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and x10 and x47 and not x7 and not x9 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x6 and x2 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and x6 and not x2 ) = '1' then
         current_exxm <= s15;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and not x6 and x2 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s52;

      elsif ( not x44 and x45 and x46 and x10 and not x47 and not x6 and not x2 ) = '1' then
         current_exxm <= s15;

      elsif ( not x44 and x45 and x46 and not x10 and x47 and x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s33;

      elsif ( not x44 and x45 and x46 and not x10 and x47 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and not x10 and x47 and not x11 and x9 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x45 and x46 and not x10 and x47 and not x11 and not x9 and x1 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and x46 and not x10 and x47 and not x11 and not x9 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and x46 and not x10 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s6;

      elsif ( not x44 and x45 and x46 and not x10 and not x47 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( not x44 and x45 and x46 and not x10 and not x47 and not x1 and not x2 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and x45 and not x46 and x12 and x10 and x8 and x1 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x45 and not x46 and x12 and x10 and x8 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and x12 and x10 and not x8 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x45 and not x46 and x12 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x44 and x45 and not x46 and x12 and not x10 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x45 and not x46 and x12 and not x10 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and x9 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x45 and not x46 and not x12 and x9 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and x10 and x5 and x11 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and x10 and x5 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and x10 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and not x10 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and not x10 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and not x10 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and not x10 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and x45 and not x46 and not x12 and not x9 and not x10 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and x7 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and x7 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and x7 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and not x7 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s33;

      elsif ( not x44 and not x45 and x46 and x47 and x8 and not x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and x47 and not x8 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and not x45 and x46 and x47 and not x8 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x45 and x46 and x47 and not x8 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and x9 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and x46 and not x47 and x9 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and x10 and x5 and x11 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and x10 and x5 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and x10 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and not x10 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and not x10 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and not x10 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and not x10 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and not x45 and x46 and not x47 and not x9 and not x10 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and x10 and x11 and x5 and x13 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and not x46 and x10 and x11 and x5 and not x13 and x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and not x45 and not x46 and x10 and x11 and x5 and not x13 and not x12 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s36;

      elsif ( not x44 and not x45 and not x46 and x10 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and x10 and not x11 and x8 and x1 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and not x46 and x10 and not x11 and x8 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and x10 and not x11 and not x8 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and not x46 and not x10 and x12 and x11 and x5 ) = '1' then
         y19 <= '1' ;
         current_exxm <= s34;

      elsif ( not x44 and not x45 and not x46 and not x10 and x12 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and not x10 and x12 and not x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( not x44 and not x45 and not x46 and not x10 and x12 and not x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and not x10 and x12 and not x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x12 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s35;

      elsif ( not x44 and not x45 and not x46 and not x10 and not x12 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      end if;

   when s16 =>
      if ( x44 and x45 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( x44 and x45 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x44 and x45 and not x4 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s58;

      elsif ( x44 and x45 and not x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x44 and not x45 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s65;

      elsif ( x44 and not x45 and not x19 and x26 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s66;

      elsif ( x44 and not x45 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_exxm <= s67;

      elsif ( x44 and not x45 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s61;

      elsif ( not x44 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( not x44 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( not x44 and not x4 and x1 and not x3 ) = '1' then
         y5 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s68;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s61;

      end if;

   when s17 =>
      if ( x44 and x45 and x40 and x24 and x5 and x36 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and x40 and x24 and x5 and not x36 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and x40 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and x40 and not x24 and x31 and x29 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and x40 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and x40 and not x24 and not x31 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and not x40 and x11 and x35 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and not x40 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x40 and x11 and not x35 and x14 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x40 and x11 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x40 and not x11 and x30 and x35 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and not x40 and not x11 and x30 and not x35 and x14 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x40 and not x11 and x30 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x40 and not x11 and not x30 and x3 and x6 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( x44 and x45 and not x40 and not x11 and not x30 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x40 and not x11 and not x30 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and x46 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and x46 and not x3 and x1 ) = '1' then
         y11 <= '1' ;
         current_exxm <= s69;

      elsif ( x44 and not x45 and x46 and not x3 and not x1 ) = '1' then
         y8 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s70;

      elsif ( x44 and not x45 and not x46 and x16 and x14 and x5 ) = '1' then
         y7 <= '1' ;
         current_exxm <= s29;

      elsif ( x44 and not x45 and not x46 and x16 and x14 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and x16 and not x14 and x11 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and not x46 and x16 and not x14 and not x11 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x46 and x16 and not x14 and not x11 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and not x16 and x11 and x5 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and not x46 and not x16 and x11 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x46 and not x16 and not x11 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x46 and not x16 and not x11 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x11 and x10 and x5 and x12 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x11 and x10 and x5 and not x12 and x13 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and x11 and x10 and x5 and not x12 and not x13 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x44 and x11 and x10 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x11 and not x10 and x13 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and x11 and not x10 and x13 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x11 and not x10 and not x13 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x11 and not x10 and not x13 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x11 and not x10 and not x13 and not x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x11 and x10 and x8 and x1 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and not x11 and x10 and x8 and not x1 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x11 and x10 and not x8 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and not x11 and not x10 and x12 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and not x11 and not x10 and x12 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x11 and not x10 and x12 and not x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x11 and not x10 and not x12 and x3 and x6 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x11 and not x10 and not x12 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y4 <= '1' ;
         current_exxm <= s3;

      end if;

   when s18 =>
      if ( x44 and x45 and x13 and x23 and x42 and x40 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and x13 and x23 and x42 and not x40 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( x44 and x45 and x13 and x23 and not x42 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and x13 and not x23 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and not x13 and x28 and x35 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( x44 and x45 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x13 and x28 and not x35 and x14 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x13 and x28 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x13 and not x28 and x6 and x35 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and not x13 and not x28 and x6 and not x35 and x14 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x13 and not x28 and x6 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and x45 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      elsif ( x44 and not x45 and x46 and x3 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s71;

      elsif ( x44 and not x45 and x46 and not x3 and x5 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x44 and not x45 and x46 and not x3 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and x46 and not x3 and not x5 and not x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_exxm <= s72;

      elsif ( x44 and not x45 and not x46 and x11 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and not x46 and not x11 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x46 and not x11 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x10 and x11 and x5 and x13 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and x10 and x11 and x5 and not x13 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x44 and x10 and x11 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and x10 and not x11 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and not x10 and x11 and x13 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s4;

      elsif ( not x44 and not x10 and x11 and x13 and not x5 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x10 and x11 and not x13 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and not x10 and x11 and not x13 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x10 and x11 and not x13 and not x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x10 and not x11 and x12 and x1 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and not x10 and not x11 and x12 and not x1 and x3 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x10 and not x11 and x12 and not x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x10 and not x11 and not x12 and x13 and x3 and x6 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x10 and not x11 and not x12 and x13 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x10 and not x11 and not x12 and x13 and not x3 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      end if;

   when s19 =>
      if ( x44 and x17 ) = '1' then
         y8 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s46;

      elsif ( x44 and not x17 and x18 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and not x17 and not x18 ) = '1' then
         current_exxm <= s19;

      elsif ( not x44 and x46 and x45 and x47 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and x46 and x45 and not x47 and x10 ) = '1' then
         y8 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s46;

      elsif ( not x44 and x46 and x45 and not x47 and not x10 and x4 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and x46 and x45 and not x47 and not x10 and not x4 ) = '1' then
         current_exxm <= s19;

      elsif ( not x44 and x46 and not x45 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and not x46 and x45 and x12 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x46 and x45 and x12 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and not x46 and x45 and not x12 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and not x46 and not x45 and x10 and x11 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and not x46 and not x45 and x10 and not x11 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x46 and not x45 and x10 and not x11 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and not x46 and not x45 and not x10 and x12 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x44 and not x46 and not x45 and not x10 and not x12 and x7 ) = '1' then
         current_exxm <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      end if;

   when s20 =>
      if ( x3 and x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s58;

      elsif ( x3 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      end if;

   when s21 =>
      if ( x3 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s71;

      elsif ( not x3 and x7 ) = '1' then
         current_exxm <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s71;

      end if;

   when s22 =>
      if ( x3 and x4 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_exxm <= s72;

      elsif ( x3 and not x4 ) = '1' then
         current_exxm <= s22;

      else
         current_exxm <= s1;

      end if;

   when s23 =>
      if ( x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s65;

      elsif ( x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s66;

      elsif ( x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_exxm <= s67;

      elsif ( x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s61;

      elsif ( x30 and x16 and not x6 and not x8 ) = '1' then
         current_exxm <= s1;

      elsif ( x30 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x30 and not x16 and not x10 ) = '1' then
         current_exxm <= s1;

      elsif ( not x30 and x5 and x9 ) = '1' then
         current_exxm <= s1;

      elsif ( not x30 and x5 and not x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_exxm <= s43;

      elsif ( not x30 and not x5 and x11 and x3 ) = '1' then
         current_exxm <= s23;

      elsif ( not x30 and not x5 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x30 and not x5 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      end if;

   when s24 =>
      if ( x12 and x27 and x20 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      elsif ( x12 and x27 and not x20 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x12 and x27 and not x20 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x12 and not x27 and x29 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s73;

      elsif ( x12 and not x27 and x29 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( x12 and not x27 and not x29 and x2 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s65;

      elsif ( x12 and not x27 and not x29 and not x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s74;

      elsif ( not x12 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s65;

      else
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s75;

      end if;

   when s25 =>
      if ( x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_exxm <= s44;

      end if;

   when s26 =>
      if ( x24 and x26 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s74;

      elsif ( x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s55;

      elsif ( x24 and not x26 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_exxm <= s44;

      elsif ( not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s24;

      else
         current_exxm <= s1;

      end if;

   when s27 =>
      if ( x44 and x14 and x8 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x44 and x14 and x8 and not x10 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x14 and not x8 and x30 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s73;

      elsif ( x44 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s66;

      elsif ( x44 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_exxm <= s44;

      elsif ( x44 and x14 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x44 and not x14 and x3 and x21 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_exxm <= s67;

      elsif ( x44 and not x14 and x3 and not x21 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x44 and not x14 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( not x44 and x2 and x4 ) = '1' then
         y5 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s68;

      elsif ( not x44 and x2 and not x4 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s61;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      end if;

   when s28 =>
      if ( x44 and x45 and x46 and x37 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and x45 and x46 and not x37 and x9 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and x45 and x46 and not x37 and not x9 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( x44 and x45 and not x46 and x10 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x46 and not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and x45 and not x46 and not x10 and x11 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and not x46 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x45 and not x46 and not x10 and not x11 and x1 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x46 and not x10 and not x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and not x45 ) = '1' then
         y8 <= '1' ;
         current_exxm <= s76;

      elsif ( not x44 and x46 and x11 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and x46 and not x11 and x9 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and x46 and not x11 and not x9 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x46 and not x11 and not x9 and not x7 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( not x44 and not x46 and x10 and x1 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x46 and x10 and not x1 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      elsif ( not x44 and not x46 and not x10 and x5 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( not x44 and not x46 and not x10 and not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      end if;

   when s29 =>
         y8 <= '1' ;
         current_exxm <= s76;

   when s30 =>
      if ( x46 and x45 and x12 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( x46 and x45 and not x12 ) = '1' then
         current_exxm <= s30;

      elsif ( x46 and not x45 and x4 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( x46 and not x45 and not x4 ) = '1' then
         current_exxm <= s30;

      elsif ( not x46 and x45 and x12 ) = '1' then
         y20 <= '1' ;
         current_exxm <= s77;

      elsif ( not x46 and x45 and not x12 and x4 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x46 and x45 and not x12 and not x4 ) = '1' then
         current_exxm <= s30;

      elsif ( not x46 and not x45 and x10 ) = '1' then
         y20 <= '1' ;
         current_exxm <= s77;

      elsif ( not x46 and not x45 and not x10 and x4 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      else
         current_exxm <= s30;

      end if;

   when s31 =>
      if ( x45 and x46 and x13 and x6 and x16 and x10 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( x45 and x46 and x13 and x6 and x16 and not x10 ) = '1' then
         current_exxm <= s31;

      elsif ( x45 and x46 and x13 and x6 and not x16 and x10 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and x46 and x13 and x6 and not x16 and not x10 ) = '1' then
         current_exxm <= s31;

      elsif ( x45 and x46 and x13 and not x6 ) = '1' then
         current_exxm <= s1;

      elsif ( x45 and x46 and not x13 and x15 and x10 and x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x45 and x46 and not x13 and x15 and x10 and not x4 ) = '1' then
         current_exxm <= s31;

      elsif ( x45 and x46 and not x13 and x15 and not x10 and x4 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and x46 and not x13 and x15 and not x10 and not x4 ) = '1' then
         current_exxm <= s31;

      elsif ( x45 and x46 and not x13 and not x15 ) = '1' then
         current_exxm <= s1;

      elsif ( x45 and not x46 and x12 ) = '1' then
         current_exxm <= s1;

      elsif ( x45 and not x46 and not x12 and x4 and x9 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and not x46 and not x12 and x4 and not x9 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and not x46 and not x12 and x4 and not x9 and x10 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s45;

      elsif ( x45 and not x46 and not x12 and x4 and not x9 and x10 and not x11 and not x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and not x46 and not x12 and x4 and not x9 and not x10 and x3 and x11 ) = '1' then
         y20 <= '1' ;
         current_exxm <= s77;

      elsif ( x45 and not x46 and not x12 and x4 and not x9 and not x10 and x3 and not x11 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s39;

      elsif ( x45 and not x46 and not x12 and x4 and not x9 and not x10 and not x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and not x46 and not x12 and not x4 ) = '1' then
         current_exxm <= s31;

      elsif ( not x45 and x46 and x47 and x8 and x4 and x3 and x7 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x45 and x46 and x47 and x8 and x4 and x3 and not x7 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( not x45 and x46 and x47 and x8 and x4 and not x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and x46 and x47 and x8 and not x4 ) = '1' then
         current_exxm <= s31;

      elsif ( not x45 and x46 and x47 and not x8 ) = '1' then
         current_exxm <= s1;

      elsif ( not x45 and x46 and not x47 and x4 and x9 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and x46 and not x47 and x4 and not x9 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and x46 and not x47 and x4 and not x9 and x10 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s45;

      elsif ( not x45 and x46 and not x47 and x4 and not x9 and x10 and not x11 and not x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and x46 and not x47 and x4 and not x9 and not x10 and x3 and x11 ) = '1' then
         y20 <= '1' ;
         current_exxm <= s77;

      elsif ( not x45 and x46 and not x47 and x4 and not x9 and not x10 and x3 and not x11 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s39;

      elsif ( not x45 and x46 and not x47 and x4 and not x9 and not x10 and not x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and x46 and not x47 and not x4 ) = '1' then
         current_exxm <= s31;

      elsif ( not x45 and not x46 and x10 and x11 and x4 and x13 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and not x46 and x10 and x11 and x4 and not x13 and x3 and x12 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s45;

      elsif ( not x45 and not x46 and x10 and x11 and x4 and not x13 and x3 and not x12 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s39;

      elsif ( not x45 and not x46 and x10 and x11 and x4 and not x13 and not x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and not x46 and x10 and x11 and not x4 ) = '1' then
         current_exxm <= s31;

      elsif ( not x45 and not x46 and x10 and not x11 ) = '1' then
         current_exxm <= s1;

      elsif ( not x45 and not x46 and not x10 and x12 and x4 and x11 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and not x46 and not x10 and x12 and x4 and not x11 and x3 ) = '1' then
         y20 <= '1' ;
         current_exxm <= s77;

      elsif ( not x45 and not x46 and not x10 and x12 and x4 and not x11 and not x3 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x45 and not x46 and not x10 and x12 and not x4 ) = '1' then
         current_exxm <= s31;

      else
         current_exxm <= s1;

      end if;

   when s32 =>
      if ( x46 and x45 and x12 and x14 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x46 and x45 and x12 and not x14 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x46 and x45 and not x12 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x46 and not x45 and x47 and x2 and x8 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x46 and not x45 and x47 and x2 and not x8 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x46 and not x45 and x47 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x46 and not x45 and not x47 and x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x46 and not x45 and not x47 and not x2 ) = '1' then
         current_exxm <= s32;

      elsif ( not x46 and x45 and x12 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( not x46 and x45 and x12 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x46 and x45 and not x12 and x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x46 and x45 and not x12 and not x2 ) = '1' then
         current_exxm <= s32;

      elsif ( not x46 and not x45 and x2 and x12 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x46 and not x45 and x2 and not x12 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      else
         y4 <= '1' ;
         current_exxm <= s3;

      end if;

   when s33 =>
      if ( x45 and x16 and x1 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( x45 and x16 and not x1 ) = '1' then
         current_exxm <= s33;

      elsif ( x45 and not x16 and x1 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( x45 and not x16 and not x1 ) = '1' then
         current_exxm <= s33;

      elsif ( not x45 and x2 and x6 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x45 and x2 and not x6 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      else
         current_exxm <= s33;

      end if;

   when s34 =>
      if ( x45 and x12 and x5 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( x45 and x12 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x45 and x12 and not x5 and not x1 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and not x12 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x45 and x11 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x45 and not x11 and x46 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x45 and not x11 and not x46 and x5 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x45 and not x11 and not x46 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y5 <= '1' ;
         current_exxm <= s15;

      end if;

   when s35 =>
      if ( x46 and x2 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( x46 and not x2 ) = '1' then
         current_exxm <= s35;

      elsif ( not x46 and x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x46 and x10 and not x2 ) = '1' then
         current_exxm <= s35;

      elsif ( not x46 and not x10 and x45 and x2 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x46 and not x10 and x45 and not x2 ) = '1' then
         current_exxm <= s35;

      elsif ( not x46 and not x10 and not x45 and x3 ) = '1' then
         current_exxm <= s1;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s31;

      end if;

   when s36 =>
      if ( x45 and x12 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( x45 and not x12 and x6 and x2 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( x45 and not x12 and x6 and not x2 ) = '1' then
         current_exxm <= s36;

      elsif ( x45 and not x12 and not x6 and x2 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( x45 and not x12 and not x6 and not x2 ) = '1' then
         current_exxm <= s36;

      elsif ( not x45 and x46 and x6 and x2 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x45 and x46 and x6 and not x2 ) = '1' then
         current_exxm <= s36;

      elsif ( not x45 and x46 and not x6 and x2 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( not x45 and x46 and not x6 and not x2 ) = '1' then
         current_exxm <= s36;

      elsif ( not x45 and not x46 and x10 and x6 and x2 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x45 and not x46 and x10 and x6 and not x2 ) = '1' then
         current_exxm <= s36;

      elsif ( not x45 and not x46 and x10 and not x6 and x2 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( not x45 and not x46 and x10 and not x6 and not x2 ) = '1' then
         current_exxm <= s36;

      else
         y13 <= '1' ;
         current_exxm <= s42;

      end if;

   when s37 =>
      if ( x10 and x9 ) = '1' then
         current_exxm <= s1;

      elsif ( x10 and not x9 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( not x10 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( not x10 and not x6 and x8 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y5 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s68;

      elsif ( not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s61;

      else
         current_exxm <= s1;

      end if;

   when s38 =>
      if ( x45 and x12 and x1 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      elsif ( x45 and x12 and not x1 ) = '1' then
         y20 <= '1' ;
         current_exxm <= s77;

      elsif ( x45 and not x12 ) = '1' then
         current_exxm <= s1;

      elsif ( not x45 and x11 ) = '1' then
         current_exxm <= s1;

      elsif ( not x45 and not x11 and x46 ) = '1' then
         current_exxm <= s1;

      elsif ( not x45 and not x11 and not x46 and x1 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s30;

      else
         y20 <= '1' ;
         current_exxm <= s77;

      end if;

   when s39 =>
      if ( x45 and x12 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( x45 and x12 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and x12 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x45 and not x12 and x6 and x2 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( x45 and not x12 and x6 and not x2 ) = '1' then
         current_exxm <= s39;

      elsif ( x45 and not x12 and not x6 and x2 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( x45 and not x12 and not x6 and not x2 ) = '1' then
         current_exxm <= s39;

      elsif ( not x45 and x46 and x6 and x2 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x45 and x46 and x6 and not x2 ) = '1' then
         current_exxm <= s39;

      elsif ( not x45 and x46 and not x6 and x2 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( not x45 and x46 and not x6 and not x2 ) = '1' then
         current_exxm <= s39;

      elsif ( not x45 and not x46 and x10 and x6 and x2 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x45 and not x46 and x10 and x6 and not x2 ) = '1' then
         current_exxm <= s39;

      elsif ( not x45 and not x46 and x10 and not x6 and x2 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( not x45 and not x46 and x10 and not x6 and not x2 ) = '1' then
         current_exxm <= s39;

      elsif ( not x45 and not x46 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_exxm <= s32;

      elsif ( not x45 and not x46 and not x10 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      else
         y4 <= '1' ;
         current_exxm <= s3;

      end if;

   when s40 =>
      if ( x10 and x12 ) = '1' then
         current_exxm <= s1;

      elsif ( x10 and not x12 and x1 and x2 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x10 and not x12 and x1 and not x2 ) = '1' then
         current_exxm <= s1;

      elsif ( x10 and not x12 and not x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s58;

      elsif ( not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x10 and not x11 and x12 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( not x10 and not x11 and x12 and not x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( not x10 and not x11 and not x12 and x6 ) = '1' then
         current_exxm <= s1;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      end if;

   when s41 =>
      if ( x10 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      elsif ( not x10 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s54;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s55;

      end if;

   when s42 =>
      if ( x44 and x11 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( x44 and not x11 and x9 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( x44 and not x11 and not x9 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( not x44 and x46 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x46 and x45 and x47 and x10 and x9 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      elsif ( not x44 and not x46 and x45 and x47 and x10 and not x9 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( not x44 and not x46 and x45 and x47 and not x10 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and x4 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x44 and not x46 and x45 and not x47 and x12 and not x4 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x44 and not x46 and x45 and not x47 and not x12 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x46 and not x45 and x10 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x44 and not x46 and not x45 and not x10 and x4 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      end if;

   when s43 =>
      if ( x9 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x9 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s66;

      end if;

   when s44 =>
      if ( x25 and x22 ) = '1' then
         current_exxm <= s1;

      elsif ( x25 and not x22 and x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      elsif ( x25 and not x22 and x6 and not x8 ) = '1' then
         current_exxm <= s1;

      elsif ( x25 and not x22 and not x6 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_exxm <= s67;

      elsif ( not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s25;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s73;

      end if;

   when s45 =>
      if ( x44 and x41 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and not x41 ) = '1' then
         current_exxm <= s45;

      elsif ( not x44 and x45 and x46 and x2 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( not x44 and x45 and x46 and not x2 ) = '1' then
         current_exxm <= s45;

      elsif ( not x44 and x45 and not x46 and x2 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      elsif ( not x44 and x45 and not x46 and not x2 ) = '1' then
         current_exxm <= s45;

      elsif ( not x44 and not x45 and x2 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      else
         current_exxm <= s45;

      end if;

   when s46 =>
      if ( x44 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and x37 and not x28 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x44 and not x37 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and x10 and x1 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x44 and x10 and not x1 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      else
         y13 <= '1' ;
         current_exxm <= s14;

      end if;

   when s47 =>
      if ( x5 and x6 ) = '1' then
         y11 <= '1' ;
         current_exxm <= s21;

      elsif ( x5 and not x6 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s71;

      elsif ( not x5 and x4 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s47;

      end if;

   when s48 =>
      if ( x15 ) = '1' then
         y6 <= '1' ;
         current_exxm <= s5;

      else
         current_exxm <= s48;

      end if;

   when s49 =>
      if ( x46 and x45 and x12 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( x46 and x45 and not x12 ) = '1' then
         current_exxm <= s49;

      elsif ( x46 and not x45 and x4 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( x46 and not x45 and not x4 ) = '1' then
         current_exxm <= s49;

      elsif ( not x46 and x45 and x12 and x5 and x6 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x46 and x45 and x12 and x5 and not x6 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x46 and x45 and x12 and x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x46 and x45 and x12 and not x5 and x4 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x46 and x45 and x12 and not x5 and not x4 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      elsif ( not x46 and x45 and not x12 and x4 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x46 and x45 and not x12 and not x4 ) = '1' then
         current_exxm <= s49;

      elsif ( not x46 and not x45 and x10 and x4 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x46 and not x45 and x10 and not x4 ) = '1' then
         current_exxm <= s49;

      elsif ( not x46 and not x45 and not x10 and x5 and x6 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x46 and not x45 and not x10 and x5 and not x6 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x46 and not x45 and not x10 and x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_exxm <= s53;

      elsif ( not x46 and not x45 and not x10 and not x5 and x4 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_exxm <= s49;

      end if;

   when s50 =>
      if ( x44 and x43 and x3 and x23 ) = '1' then
         y15 <= '1' ;
         current_exxm <= s7;

      elsif ( x44 and x43 and x3 and not x23 ) = '1' then
         current_exxm <= s50;

      elsif ( x44 and x43 and not x3 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x43 and x2 and x23 ) = '1' then
         y15 <= '1' ;
         current_exxm <= s7;

      elsif ( x44 and not x43 and x2 and not x23 ) = '1' then
         current_exxm <= s50;

      elsif ( x44 and not x43 and not x2 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x10 and x11 and x4 ) = '1' then
         y15 <= '1' ;
         current_exxm <= s7;

      elsif ( not x44 and x10 and x11 and not x4 ) = '1' then
         current_exxm <= s50;

      elsif ( not x44 and x10 and not x11 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x10 and x13 and x4 ) = '1' then
         y15 <= '1' ;
         current_exxm <= s7;

      elsif ( not x44 and not x10 and x13 and not x4 ) = '1' then
         current_exxm <= s50;

      else
         current_exxm <= s1;

      end if;

   when s51 =>
      if ( x44 and x28 and x18 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and x28 and not x18 ) = '1' then
         current_exxm <= s51;

      elsif ( x44 and not x28 and x27 and x8 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and not x28 and x27 and not x8 and x37 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( x44 and not x28 and not x27 and x41 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and not x28 and not x27 and not x41 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      elsif ( not x44 and x10 and x4 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and x10 and not x4 ) = '1' then
         current_exxm <= s51;

      elsif ( not x44 and not x10 and x5 and x6 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and not x10 and x5 and not x6 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x10 and x5 and not x6 and not x7 ) = '1' then
         y14 <= '1' ;
         current_exxm <= s50;

      elsif ( not x44 and not x10 and not x5 and x4 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      else
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      end if;

   when s52 =>
      if ( x44 and x45 and x38 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( x44 and x45 and not x38 and x41 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x44 and x45 and not x38 and not x41 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      elsif ( x44 and not x45 and x4 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x44 and not x45 and not x4 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s47;

      elsif ( not x44 and x10 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s14;

      elsif ( not x44 and not x10 and x4 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      else
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s51;

      end if;

   when s53 =>
      if ( x46 and x4 and x45 ) = '1' then
         y12 <= '1' ;
         current_exxm <= s1;

      elsif ( x46 and x4 and not x45 and x47 ) = '1' then
         y12 <= '1' ;
         current_exxm <= s1;

      elsif ( x46 and x4 and not x45 and not x47 ) = '1' then
         y18 <= '1' ;
         current_exxm <= s38;

      elsif ( x46 and not x4 ) = '1' then
         current_exxm <= s53;

      elsif ( not x46 and x45 and x12 ) = '1' then
         current_exxm <= s1;

      elsif ( not x46 and x45 and not x12 and x4 ) = '1' then
         y18 <= '1' ;
         current_exxm <= s38;

      elsif ( not x46 and x45 and not x12 and not x4 ) = '1' then
         current_exxm <= s53;

      elsif ( not x46 and not x45 and x10 and x11 and x4 ) = '1' then
         y18 <= '1' ;
         current_exxm <= s38;

      elsif ( not x46 and not x45 and x10 and x11 and not x4 ) = '1' then
         current_exxm <= s53;

      elsif ( not x46 and not x45 and x10 and not x11 ) = '1' then
         current_exxm <= s1;

      elsif ( not x46 and not x45 and not x10 and x12 and x4 ) = '1' then
         y18 <= '1' ;
         current_exxm <= s38;

      elsif ( not x46 and not x45 and not x10 and x12 and not x4 ) = '1' then
         current_exxm <= s53;

      else
         current_exxm <= s1;

      end if;

   when s54 =>
      if ( x10 and x5 and x44 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x10 and x5 and x44 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x10 and x5 and x44 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x10 and x5 and not x44 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x10 and not x5 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x10 and x44 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( not x10 and x44 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( not x10 and x44 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x10 and x44 and not x11 ) = '1' then
         current_exxm <= s54;

      elsif ( not x10 and not x44 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( not x10 and not x44 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      else
         y1 <= '1' ;
         current_exxm <= s2;

      end if;

   when s55 =>
      if ( x44 and x45 and x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x45 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x44 and x45 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x45 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and x45 and not x10 and not x11 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x44 and not x45 and x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x44 and not x45 and x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x44 and not x45 and not x16 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s24;

      elsif ( not x44 and x10 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( not x44 and x10 and not x8 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_exxm <= s62;

      elsif ( not x44 and not x10 and x6 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( not x44 and not x10 and x6 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      end if;

   when s56 =>
      if ( x44 and x45 and x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and x45 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      elsif ( x44 and x45 and not x10 and not x11 and x7 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x44 and x45 and not x10 and not x11 and not x7 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and not x45 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x44 and not x45 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s65;

      elsif ( x44 and not x45 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s66;

      elsif ( x44 and not x45 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_exxm <= s67;

      elsif ( x44 and not x45 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s61;

      elsif ( x44 and not x45 and x16 and not x6 and not x8 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x44 and not x45 and not x16 and not x10 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and x10 and x7 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( not x44 and x10 and not x7 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      end if;

   when s57 =>
      if ( x44 and x45 and x10 and x6 and x7 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x44 and x45 and x10 and x6 and x7 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x44 and x45 and x10 and x6 and x7 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x44 and x45 and x10 and x6 and x7 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and x45 and x10 and x6 and not x7 and x8 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and x45 and x10 and x6 and not x7 and not x8 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x44 and x45 and x10 and x6 and not x7 and not x8 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x44 and x45 and x10 and x6 and not x7 and not x8 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x44 and x45 and x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x44 and x45 and x10 and not x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and x45 and x10 and not x6 and not x2 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and x45 and not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( x44 and x45 and not x10 and x11 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      elsif ( x44 and x45 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( x44 and x45 and not x10 and not x11 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and x9 ) = '1' then
         y11 <= '1' ;
         current_exxm <= s21;

      elsif ( x44 and not x45 and not x9 and x7 ) = '1' then
         current_exxm <= s1;

      elsif ( x44 and not x45 and not x9 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s71;

      elsif ( not x44 and x10 ) = '1' then
         current_exxm <= s1;

      elsif ( not x44 and not x10 and x5 ) = '1' then
         y10 <= '1' ;
         current_exxm <= s28;

      elsif ( not x44 and not x10 and not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s37;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      end if;

   when s58 =>
      if ( x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      elsif ( not x10 and not x11 and x12 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s54;

      elsif ( not x10 and not x11 and x12 and not x8 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s55;

      else
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s78;

      end if;

   when s59 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s20;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      end if;

   when s60 =>
      if ( x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( not x1 and x44 and x45 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s8;

      elsif ( not x1 and x44 and x45 and not x3 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x1 and x44 and not x45 and x15 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( not x1 and x44 and not x45 and not x15 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x1 and not x44 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      else
         y1 <= '1' ;
         current_exxm <= s2;

      end if;

   when s61 =>
      if ( x44 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x44 and not x1 and x15 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x44 and not x1 and not x15 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( not x44 and x10 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s10;

      elsif ( not x44 and x10 and not x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( not x44 and not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( not x44 and not x10 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      else
         y1 <= '1' ;
         current_exxm <= s2;

      end if;

   when s62 =>
      if ( x10 and x44 and x2 and x1 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s56;

      elsif ( x10 and x44 and x2 and x1 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x10 and x44 and x2 and x1 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s40;

      elsif ( x10 and x44 and x2 and not x1 and x9 ) = '1' then
         y13 <= '1' ;
         current_exxm <= s42;

      elsif ( x10 and x44 and x2 and not x1 and not x9 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s57;

      elsif ( x10 and x44 and not x2 and x1 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      elsif ( x10 and x44 and not x2 and not x1 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s54;

      elsif ( x10 and not x44 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( not x10 and x44 ) = '1' then
         current_exxm <= s62;

      elsif ( not x10 and not x44 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( not x10 and not x44 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s41;

      else
         y1 <= '1' ;
         current_exxm <= s2;

      end if;

   when s63 =>
      if ( x8 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s20;

      elsif ( x8 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s59;

      elsif ( x8 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s58;

      end if;

   when s64 =>
      if ( x22 and x2 and x20 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      elsif ( x22 and x2 and not x20 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x22 and x2 and not x20 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x22 and not x2 ) = '1' then
         current_exxm <= s1;

      elsif ( not x22 and x31 ) = '1' then
         current_exxm <= s1;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      end if;

   when s65 =>
      if ( x2 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x2 and x8 and not x1 and x15 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x2 and x8 and not x1 and not x15 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      elsif ( x2 and not x8 and x21 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s73;

      elsif ( x2 and not x8 and x21 and not x1 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s66;

      elsif ( x2 and not x8 and x21 and not x1 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_exxm <= s44;

      elsif ( x2 and not x8 and not x21 ) = '1' then
         y1 <= '1' ;
         current_exxm <= s2;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      end if;

   when s66 =>
      if ( x16 and x19 and x20 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      elsif ( x16 and x19 and not x20 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s23;

      elsif ( x16 and x19 and not x20 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s73;

      elsif ( x16 and not x19 and x30 and x26 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( x16 and not x19 and x30 and not x26 and x3 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      elsif ( x16 and not x19 and x30 and not x26 and not x3 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s73;

      elsif ( x16 and not x19 and x30 and not x26 and not x3 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( x16 and not x19 and not x30 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      elsif ( x16 and not x19 and not x30 and not x8 ) = '1' then
         current_exxm <= s1;

      else
         current_exxm <= s1;

      end if;

   when s67 =>
      if ( x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_exxm <= s44;

      elsif ( not x10 and x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s74;

      else
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s75;

      end if;

   when s68 =>
      if ( x10 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_exxm <= s54;

      elsif ( x10 and not x8 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s55;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s13;

      end if;

   when s69 =>
         y8 <= '1' ;
         y12 <= '1' ;
         current_exxm <= s70;

   when s70 =>
      if ( x1 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_exxm <= s72;

      end if;

   when s71 =>
      if ( x3 and x4 ) = '1' then
         y3 <= '1' ;
         current_exxm <= s17;

      elsif ( x3 and not x4 ) = '1' then
         current_exxm <= s71;

      else
         current_exxm <= s1;

      end if;

   when s72 =>
      if ( x3 and x5 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( x3 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s22;

      elsif ( not x3 and x1 ) = '1' then
         y2 <= '1' ;
         current_exxm <= s18;

      elsif ( not x3 and not x1 and x8 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s22;

      else
         y2 <= '1' ;
         current_exxm <= s18;

      end if;

   when s73 =>
      if ( x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      elsif ( not x5 and x17 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_exxm <= s66;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_exxm <= s64;

      end if;

   when s74 =>
      if ( x7 and x15 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_exxm <= s60;

      elsif ( x7 and x15 and not x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      elsif ( x7 and not x15 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         current_exxm <= s79;

      end if;

   when s75 =>
      if ( x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_exxm <= s27;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_exxm <= s65;

      end if;

   when s76 =>
      if ( x4 ) = '1' then
         y9 <= '1' ;
         current_exxm <= s1;

      else
         current_exxm <= s76;

      end if;

   when s77 =>
      if ( x45 and x12 and x1 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( x45 and x12 and not x1 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      elsif ( x45 and not x12 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x45 and x10 and x46 ) = '1' then
         y16 <= '1' ;
         current_exxm <= s19;

      elsif ( not x45 and x10 and not x46 and x1 ) = '1' then
         y4 <= '1' ;
         current_exxm <= s3;

      elsif ( not x45 and x10 and not x46 and not x1 ) = '1' then
         y5 <= '1' ;
         current_exxm <= s15;

      else
         y16 <= '1' ;
         current_exxm <= s19;

      end if;

   when s78 =>
      if ( x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_exxm <= s59;

      elsif ( not x9 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_exxm <= s12;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_exxm <= s9;

      end if;

   when s79 =>
         y11 <= '1' ;
         y18 <= '1' ;
         current_exxm <= s26;

   end case;
   end proc_exxm;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;

	current_exxm <= s1;
      elsif (clk'event and clk ='1') then
        proc_exxm;
      end if;
   end process;
end ARC;
