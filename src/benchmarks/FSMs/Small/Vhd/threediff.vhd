library ieee;
use ieee.std_logic_1164.all;

entity threediff is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32 : out std_logic );
end threediff;

architecture ARC of threediff is

   type states_threediff is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36 );
   signal current_threediff : states_threediff;

begin
   process (clk , rst)
   procedure proc_threediff is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;	y32  <= '0' ;


   case current_threediff is
   when s1 =>
      if ( x2 and x12 and x5 and x7 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_threediff <= s1;

      elsif ( x2 and x12 and x5 and not x7 ) = '1' then
         y6 <= '1' ;
         current_threediff <= s1;

      elsif ( x2 and x12 and not x5 ) = '1' then
         y9 <= '1' ;
         current_threediff <= s2;

      elsif ( x2 and not x12 ) = '1' then
         current_threediff <= s1;

      elsif ( not x2 and x3 and x12 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_threediff <= s3;

      elsif ( not x2 and x3 and not x12 ) = '1' then
         current_threediff <= s1;

      elsif ( not x2 and not x3 and x12 and x10 and x8 ) = '1' then
         y7 <= '1' ;
         current_threediff <= s4;

      elsif ( not x2 and not x3 and x12 and x10 and not x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_threediff <= s5;

      elsif ( not x2 and not x3 and x12 and not x10 and x8 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_threediff <= s6;

      elsif ( not x2 and not x3 and x12 and not x10 and not x8 ) = '1' then
         y2 <= '1' ;
         current_threediff <= s7;

      else
         current_threediff <= s1;

      end if;

   when s2 =>
         y21 <= '1' ;
         y23 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_threediff <= s8;

   when s3 =>
      if ( x1 ) = '1' then
         y2 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_threediff <= s9;

      elsif ( not x1 and x9 ) = '1' then
         y10 <= '1' ;
         current_threediff <= s10;

      elsif ( not x1 and not x9 and x11 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y13 <= '1' ;
         current_threediff <= s11;

      else
         current_threediff <= s3;

      end if;

   when s4 =>
         y10 <= '1' ;
         y12 <= '1' ;
         current_threediff <= s6;

   when s5 =>
         y27 <= '1' ;
         y29 <= '1' ;
         current_threediff <= s12;

   when s6 =>
         y27 <= '1' ;
         y29 <= '1' ;
         current_threediff <= s13;

   when s7 =>
         y1 <= '1' ;
         current_threediff <= s1;

   when s8 =>
      if ( x4 ) = '1' then
         current_threediff <= s1;

      else
         y17 <= '1' ;
         current_threediff <= s14;

      end if;

   when s9 =>
         y10 <= '1' ;
         current_threediff <= s15;

   when s10 =>
         y27 <= '1' ;
         y28 <= '1' ;
         current_threediff <= s16;

   when s11 =>
         y10 <= '1' ;
         current_threediff <= s17;

   when s12 =>
      if ( x4 ) = '1' then
         y2 <= '1' ;
         current_threediff <= s7;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_threediff <= s5;

      end if;

   when s13 =>
      if ( x4 ) = '1' then
         y2 <= '1' ;
         current_threediff <= s7;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_threediff <= s6;

      end if;

   when s14 =>
         y6 <= '1' ;
         y23 <= '1' ;
         y31 <= '1' ;
         current_threediff <= s18;

   when s15 =>
         y27 <= '1' ;
         current_threediff <= s19;

   when s16 =>
      if ( x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y13 <= '1' ;
         current_threediff <= s11;

      else
         y10 <= '1' ;
         current_threediff <= s10;

      end if;

   when s17 =>
         y27 <= '1' ;
         current_threediff <= s20;

   when s18 =>
         y21 <= '1' ;
         y27 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         current_threediff <= s21;

   when s19 =>
      if ( x4 and x6 ) = '1' then
         y2 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_threediff <= s22;

      elsif ( x4 and not x6 and x12 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_threediff <= s3;

      elsif ( x4 and not x6 and not x12 ) = '1' then
         current_threediff <= s19;

      else
         y10 <= '1' ;
         current_threediff <= s15;

      end if;

   when s20 =>
      if ( x4 ) = '1' then
         y2 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_threediff <= s22;

      else
         y10 <= '1' ;
         current_threediff <= s17;

      end if;

   when s21 =>
      if ( x4 ) = '1' then
         y8 <= '1' ;
         current_threediff <= s2;

      else
         y21 <= '1' ;
         y22 <= '1' ;
         current_threediff <= s23;

      end if;

   when s22 =>
         y10 <= '1' ;
         current_threediff <= s24;

   when s23 =>
         y23 <= '1' ;
         y24 <= '1' ;
         current_threediff <= s25;

   when s24 =>
         y27 <= '1' ;
         y30 <= '1' ;
         current_threediff <= s26;

   when s25 =>
         y19 <= '1' ;
         y20 <= '1' ;
         current_threediff <= s27;

   when s26 =>
      if ( x4 and x1 ) = '1' then
         y2 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_threediff <= s9;

      elsif ( x4 and not x1 ) = '1' then
         y2 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_threediff <= s28;

      else
         y10 <= '1' ;
         current_threediff <= s24;

      end if;

   when s27 =>
         y23 <= '1' ;
         y24 <= '1' ;
         current_threediff <= s29;

   when s28 =>
         y10 <= '1' ;
         current_threediff <= s30;

   when s29 =>
         y27 <= '1' ;
         y32 <= '1' ;
         current_threediff <= s31;

   when s30 =>
         y27 <= '1' ;
         current_threediff <= s32;

   when s31 =>
      if ( x4 ) = '1' then
         y5 <= '1' ;
         y23 <= '1' ;
         y26 <= '1' ;
         current_threediff <= s33;

      else
         y18 <= '1' ;
         current_threediff <= s14;

      end if;

   when s32 =>
      if ( x4 ) = '1' then
         current_threediff <= s1;

      else
         y10 <= '1' ;
         current_threediff <= s30;

      end if;

   when s33 =>
         y23 <= '1' ;
         y31 <= '1' ;
         current_threediff <= s34;

   when s34 =>
         y6 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_threediff <= s35;

   when s35 =>
         y5 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         current_threediff <= s36;

   when s36 =>
         y18 <= '1' ;
         current_threediff <= s14;

   end case;
   end proc_threediff;

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

	current_threediff <= s1;
      elsif (clk'event and clk ='1') then
        proc_threediff;
      end if;
   end process;
end ARC;
