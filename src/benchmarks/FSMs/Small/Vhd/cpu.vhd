library ieee;
use ieee.std_logic_1164.all;

entity cpu is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29 : out std_logic );
end cpu;

architecture ARC of cpu is

   type states_cpu is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16 );
   signal current_cpu : states_cpu;

begin
   process (clk , rst)
   procedure proc_cpu is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;

   case current_cpu is
   when s1 =>
      if ( x1 ) = '1' then
         y2 <= '1' ;
         current_cpu <= s2;

      else
         y1 <= '1' ;
         current_cpu <= s2;

      end if;

   when s2 =>
         y3 <= '1' ;
         y4 <= '1' ;
         current_cpu <= s3;

   when s3 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_cpu <= s4;

   when s4 =>
         y8 <= '1' ;
         current_cpu <= s5;

   when s5 =>
      if ( x2 and x3 and x11 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_cpu <= s6;

      elsif ( x2 and x3 and not x11 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_cpu <= s7;

      elsif ( x2 and not x3 and x4 and x11 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s8;

      elsif ( x2 and not x3 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y3 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_cpu <= s9;

      elsif ( x2 and not x3 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_cpu <= s10;

      elsif ( x2 and not x3 and x4 and not x11 and x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cpu <= s11;

      elsif ( x2 and not x3 and x4 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y21 <= '1' ;
         current_cpu <= s12;

      elsif ( x2 and not x3 and not x4 and x5 and x6 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s13;

      elsif ( x2 and not x3 and not x4 and x5 and not x6 and x7 and x8 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s13;

      elsif ( x2 and not x3 and not x4 and x5 and not x6 and x7 and not x8 ) = '1' then
         y19 <= '1' ;
         current_cpu <= s1;

      elsif ( x2 and not x3 and not x4 and x5 and not x6 and not x7 and x8 ) = '1' then
         y19 <= '1' ;
         current_cpu <= s1;

      elsif ( x2 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s13;

      elsif ( x2 and not x3 and not x4 and not x5 and x6 and x7 and x9 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s13;

      elsif ( x2 and not x3 and not x4 and not x5 and x6 and x7 and not x9 ) = '1' then
         y19 <= '1' ;
         current_cpu <= s1;

      elsif ( x2 and not x3 and not x4 and not x5 and x6 and not x7 and x9 ) = '1' then
         y19 <= '1' ;
         current_cpu <= s1;

      elsif ( x2 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s13;

      elsif ( x2 and not x3 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s13;

      elsif ( x2 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y19 <= '1' ;
         current_cpu <= s1;

      elsif ( x2 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 ) = '1' then
         y19 <= '1' ;
         current_cpu <= s1;

      elsif ( x2 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s13;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         current_cpu <= s3;

      end if;

   when s6 =>
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s8;

   when s7 =>
      if ( x12 and x13 and x3 ) = '1' then
         y3 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_cpu <= s9;

      elsif ( x12 and x13 and not x3 and x14 ) = '1' then
         y3 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_cpu <= s9;

      elsif ( x12 and x13 and not x3 and not x14 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_cpu <= s10;

      elsif ( x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cpu <= s11;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y21 <= '1' ;
         current_cpu <= s12;

      end if;

   when s8 =>
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_cpu <= s1;

   when s9 =>
         y11 <= '1' ;
         y29 <= '1' ;
         current_cpu <= s14;

   when s10 =>
      if ( x13 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_cpu <= s1;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_cpu <= s1;

      end if;

   when s11 =>
      if ( x14 ) = '1' then
         y3 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         current_cpu <= s9;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_cpu <= s10;

      end if;

   when s12 =>
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_cpu <= s1;

   when s13 =>
         y15 <= '1' ;
         y18 <= '1' ;
         current_cpu <= s15;

   when s14 =>
         y12 <= '1' ;
         y14 <= '1' ;
         current_cpu <= s16;

   when s15 =>
         y19 <= '1' ;
         current_cpu <= s1;

   when s16 =>
      if ( x14 and x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_cpu <= s1;

      elsif ( x14 and not x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_cpu <= s1;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_cpu <= s1;

      end if;

   end case;
   end proc_cpu;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;
	current_cpu <= s1;
      elsif (clk'event and clk ='1') then
        proc_cpu;
      end if;
   end process;
end ARC;
