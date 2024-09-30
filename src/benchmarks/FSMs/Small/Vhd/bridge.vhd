library ieee;
use ieee.std_logic_1164.all;

entity bridge is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42 : out std_logic );
end bridge;

architecture ARC of bridge is

   type states_bridge is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34 );
   signal current_bridge : states_bridge;

begin
   process (clk , rst)
   procedure proc_bridge is
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
	y41  <= '0' ;	y42  <= '0' ;

   case current_bridge is
   when s1 =>
      if ( x11 and x5 and x6 and x4 ) = '1' then
         y33 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_bridge <= s2;

      elsif ( x11 and x5 and x6 and not x4 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_bridge <= s3;

      elsif ( x11 and x5 and not x6 ) = '1' then
         current_bridge <= s1;

      elsif ( x11 and not x5 and x6 ) = '1' then
         current_bridge <= s1;

      elsif ( x11 and not x5 and not x6 and x4 and x1 ) = '1' then
         y40 <= '1' ;
         y41 <= '1' ;
         current_bridge <= s4;

      elsif ( x11 and not x5 and not x6 and x4 and not x1 ) = '1' then
         current_bridge <= s1;

      elsif ( x11 and not x5 and not x6 and not x4 and x2 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_bridge <= s5;

      elsif ( x11 and not x5 and not x6 and not x4 and not x2 ) = '1' then
         current_bridge <= s1;

      else
         y2 <= '1' ;
         current_bridge <= s1;

      end if;

   when s2 =>
      if ( x7 and x9 ) = '1' then
         current_bridge <= s2;

      elsif ( x7 and not x9 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_bridge <= s6;

      else
         y33 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_bridge <= s2;

      end if;

   when s3 =>
      if ( x3 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_bridge <= s7;

      else
         current_bridge <= s3;

      end if;

   when s4 =>
      if ( x9 ) = '1' then
         current_bridge <= s4;

      else
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_bridge <= s6;

      end if;

   when s5 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_bridge <= s7;

   when s6 =>
         y26 <= '1' ;
         current_bridge <= s8;

   when s7 =>
      if ( x14 ) = '1' then
         current_bridge <= s7;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_bridge <= s9;

      end if;

   when s8 =>
      if ( x1 ) = '1' then
         y27 <= '1' ;
         current_bridge <= s10;

      else
         current_bridge <= s8;

      end if;

   when s9 =>
         y3 <= '1' ;
         y4 <= '1' ;
         current_bridge <= s11;

   when s10 =>
      if ( x5 and x1 ) = '1' then
         y38 <= '1' ;
         current_bridge <= s12;

      elsif ( x5 and not x1 ) = '1' then
         current_bridge <= s10;

      else
         y42 <= '1' ;
         current_bridge <= s13;

      end if;

   when s11 =>
      if ( x16 and x10 ) = '1' then
         y1 <= '1' ;
         current_bridge <= s14;

      elsif ( x16 and not x10 ) = '1' then
         y24 <= '1' ;
         y25 <= '1' ;
         current_bridge <= s15;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         current_bridge <= s11;

      end if;

   when s12 =>
      if ( x12 ) = '1' then
         current_bridge <= s12;

      else
         y28 <= '1' ;
         y29 <= '1' ;
         y32 <= '1' ;
         current_bridge <= s16;

      end if;

   when s13 =>
         y39 <= '1' ;
         current_bridge <= s17;

   when s14 =>
      if ( x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bridge <= s11;

      elsif ( not x14 and x15 and x8 ) = '1' then
         y1 <= '1' ;
         current_bridge <= s1;

      elsif ( not x14 and x15 and not x8 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_bridge <= s18;

      elsif ( not x14 and not x15 and x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bridge <= s11;

      else
         y6 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_bridge <= s19;

      end if;

   when s15 =>
         y33 <= '1' ;
         y36 <= '1' ;
         current_bridge <= s20;

   when s16 =>
      if ( x13 ) = '1' then
         y30 <= '1' ;
         current_bridge <= s21;

      else
         current_bridge <= s16;

      end if;

   when s17 =>
      if ( x1 ) = '1' then
         y38 <= '1' ;
         current_bridge <= s12;

      else
         current_bridge <= s17;

      end if;

   when s18 =>
         y20 <= '1' ;
         y33 <= '1' ;
         y36 <= '1' ;
         current_bridge <= s22;

   when s19 =>
         y20 <= '1' ;
         y33 <= '1' ;
         y36 <= '1' ;
         current_bridge <= s23;

   when s20 =>
      if ( x7 ) = '1' then
         y23 <= '1' ;
         current_bridge <= s24;

      else
         y22 <= '1' ;
         current_bridge <= s24;

      end if;

   when s21 =>
      if ( x13 ) = '1' then
         current_bridge <= s21;

      else
         current_bridge <= s25;

      end if;

   when s22 =>
      if ( x7 ) = '1' then
         y19 <= '1' ;
         current_bridge <= s26;

      else
         y18 <= '1' ;
         current_bridge <= s26;

      end if;

   when s23 =>
      if ( x7 ) = '1' then
         y19 <= '1' ;
         current_bridge <= s27;

      else
         y18 <= '1' ;
         current_bridge <= s27;

      end if;

   when s24 =>
         y33 <= '1' ;
         current_bridge <= s28;

   when s25 =>
         y31 <= '1' ;
         current_bridge <= s29;

   when s26 =>
         y33 <= '1' ;
         current_bridge <= s30;

   when s27 =>
         y33 <= '1' ;
         current_bridge <= s31;

   when s28 =>
      if ( x7 ) = '1' then
         y21 <= '1' ;
         current_bridge <= s14;

      elsif ( not x7 and x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bridge <= s11;

      elsif ( not x7 and not x14 and x15 and x8 ) = '1' then
         y1 <= '1' ;
         current_bridge <= s1;

      elsif ( not x7 and not x14 and x15 and not x8 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_bridge <= s18;

      elsif ( not x7 and not x14 and not x15 and x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bridge <= s11;

      else
         y6 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_bridge <= s19;

      end if;

   when s29 =>
      if ( x13 and x5 ) = '1' then
         y28 <= '1' ;
         current_bridge <= s29;

      elsif ( x13 and not x5 ) = '1' then
         y31 <= '1' ;
         y38 <= '1' ;
         current_bridge <= s32;

      elsif ( not x13 and x5 ) = '1' then
         y31 <= '1' ;
         y38 <= '1' ;
         current_bridge <= s32;

      else
         y28 <= '1' ;
         current_bridge <= s29;

      end if;

   when s30 =>
      if ( x7 ) = '1' then
         y12 <= '1' ;
         current_bridge <= s33;

      elsif ( not x7 and x8 ) = '1' then
         y1 <= '1' ;
         current_bridge <= s1;

      else
         y6 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_bridge <= s18;

      end if;

   when s31 =>
      if ( x7 ) = '1' then
         y12 <= '1' ;
         current_bridge <= s9;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         current_bridge <= s11;

      end if;

   when s32 =>
      if ( x12 and x9 ) = '1' then
         y37 <= '1' ;
         current_bridge <= s34;

      elsif ( x12 and not x9 ) = '1' then
         current_bridge <= s32;

      else
         y28 <= '1' ;
         y29 <= '1' ;
         y32 <= '1' ;
         current_bridge <= s16;

      end if;

   when s33 =>
      if ( x8 ) = '1' then
         y1 <= '1' ;
         current_bridge <= s1;

      else
         y6 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_bridge <= s18;

      end if;

   when s34 =>
      if ( x5 ) = '1' then
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_bridge <= s1;

      else
         y15 <= '1' ;
         y16 <= '1' ;
         current_bridge <= s1;

      end if;

   end case;
   end proc_bridge;

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
	y41  <= '0' ;	y42  <= '0' ;
	current_bridge <= s1;
      elsif (clk'event and clk ='1') then
        proc_bridge;
      end if;
   end process;
end ARC;
