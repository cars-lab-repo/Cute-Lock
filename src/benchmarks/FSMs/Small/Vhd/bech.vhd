library ieee;
use ieee.std_logic_1164.all;

entity bech is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39 : out std_logic );
end bech;

architecture ARC of bech is

   type states_bech is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14 );
   signal current_bech : states_bech;

begin
   process (clk , rst)
   procedure proc_bech is
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
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;

   case current_bech is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y35 <= '1' ;
         y36 <= '1' ;
         current_bech <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bech <= s3;

      else
         current_bech <= s1;

      end if;

   when s2 =>
         y37 <= '1' ;
         y38 <= '1' ;
         current_bech <= s4;

   when s3 =>
         y2 <= '1' ;
         y3 <= '1' ;
         current_bech <= s5;

   when s4 =>
         y3 <= '1' ;
         y28 <= '1' ;
         y34 <= '1' ;
         current_bech <= s1;

   when s5 =>
         y39 <= '1' ;
         current_bech <= s6;

   when s6 =>
      if ( x6 and x3 and x7 and x9 ) = '1' then
         y28 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and x3 and x7 and not x9 ) = '1' then
         y29 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and x3 and not x7 and x8 and x9 and x11 ) = '1' then
         y3 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and x3 and not x7 and x8 and x9 and not x11 and x14 and x10 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and x3 and not x7 and x8 and x9 and not x11 and x14 and not x10 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and x3 and not x7 and x8 and x9 and not x11 and not x14 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and x3 and not x7 and x8 and not x9 and x10 ) = '1' then
         y3 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and x3 and not x7 and x8 and not x9 and not x10 and x14 and x11 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and x3 and not x7 and x8 and not x9 and not x10 and x14 and not x11 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and x3 and not x7 and x8 and not x9 and not x10 and not x14 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and x3 and not x7 and not x8 and x9 ) = '1' then
         y32 <= '1' ;
         y33 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and x3 and not x7 and not x8 and not x9 ) = '1' then
         y30 <= '1' ;
         y31 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and x15 and x8 and x9 and x16 and x14 and x10 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and x8 and x9 and x16 and x14 and not x10 and x11 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and x8 and x9 and x16 and x14 and not x10 and not x11 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and x8 and x9 and x16 and not x14 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and x8 and x9 and not x16 ) = '1' then
         y3 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and x15 and x8 and not x9 and x17 ) = '1' then
         y3 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and x15 and x8 and not x9 and not x17 and x14 and x10 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and x8 and not x9 and not x17 and x14 and not x10 and x11 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and x8 and not x9 and not x17 and x14 and not x10 and not x11 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and x8 and not x9 and not x17 and not x14 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and x9 and x18 ) = '1' then
         y3 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and x15 and not x8 and x9 and not x18 and x14 and x10 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and x9 and not x18 and x14 and not x10 and x11 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and x9 and not x18 and x14 and not x10 and not x11 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and x9 and not x18 and not x14 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and not x9 and x18 and x14 and x10 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and not x9 and x18 and x14 and not x10 and x11 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and not x9 and x18 and x14 and not x10 and not x11 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and not x9 and x18 and not x14 ) = '1' then
         current_bech <= s1;

      elsif ( x6 and not x3 and x15 and not x8 and not x9 and not x18 ) = '1' then
         y3 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and x7 and x8 and x9 ) = '1' then
         y16 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and x7 and x8 and not x9 ) = '1' then
         y17 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and x7 and not x8 and x9 ) = '1' then
         y19 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and x7 and not x8 and not x9 ) = '1' then
         y18 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and not x7 and x8 and x9 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and not x7 and x8 and not x9 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and not x7 and not x8 and x9 ) = '1' then
         y20 <= '1' ;
         current_bech <= s7;

      elsif ( x6 and not x3 and not x15 and not x7 and not x8 and not x9 ) = '1' then
         y21 <= '1' ;
         current_bech <= s7;

      elsif ( not x6 and x3 ) = '1' then
         y4 <= '1' ;
         current_bech <= s8;

      elsif ( not x6 and not x3 and x12 and x4 ) = '1' then
         y5 <= '1' ;
         current_bech <= s9;

      elsif ( not x6 and not x3 and x12 and not x4 and x5 ) = '1' then
         y6 <= '1' ;
         y15 <= '1' ;
         current_bech <= s10;

      elsif ( not x6 and not x3 and x12 and not x4 and not x5 ) = '1' then
         y14 <= '1' ;
         current_bech <= s7;

      elsif ( not x6 and not x3 and not x12 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         current_bech <= s7;

      elsif ( not x6 and not x3 and not x12 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bech <= s11;

      else
         y5 <= '1' ;
         current_bech <= s12;

      end if;

   when s7 =>
      if ( x14 and x10 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x14 and not x10 and x11 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( x14 and not x10 and not x11 ) = '1' then
         current_bech <= s1;

      else
         current_bech <= s1;

      end if;

   when s8 =>
      if ( x12 and x4 ) = '1' then
         y5 <= '1' ;
         current_bech <= s9;

      elsif ( x12 and not x4 and x5 ) = '1' then
         y6 <= '1' ;
         y15 <= '1' ;
         current_bech <= s10;

      elsif ( x12 and not x4 and not x5 ) = '1' then
         y14 <= '1' ;
         current_bech <= s7;

      elsif ( not x12 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         current_bech <= s7;

      elsif ( not x12 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bech <= s11;

      else
         y5 <= '1' ;
         current_bech <= s12;

      end if;

   when s9 =>
         y12 <= '1' ;
         current_bech <= s13;

   when s10 =>
         y14 <= '1' ;
         current_bech <= s7;

   when s11 =>
         y7 <= '1' ;
         current_bech <= s7;

   when s12 =>
      if ( x5 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         current_bech <= s7;

      else
         y10 <= '1' ;
         current_bech <= s7;

      end if;

   when s13 =>
         y13 <= '1' ;
         current_bech <= s14;

   when s14 =>
      if ( x13 ) = '1' then
         y3 <= '1' ;
         current_bech <= s7;

      elsif ( not x13 and x14 and x10 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( not x13 and x14 and not x10 and x11 ) = '1' then
         y34 <= '1' ;
         current_bech <= s1;

      elsif ( not x13 and x14 and not x10 and not x11 ) = '1' then
         current_bech <= s1;

      else
         current_bech <= s1;

      end if;

   end case;
   end proc_bech;

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
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;
	current_bech <= s1;
      elsif (clk'event and clk ='1') then
        proc_bech;
      end if;
   end process;
end ARC;
