library ieee;
use ieee.std_logic_1164.all;

entity sortmax is
   port ( clk,rst,x1,x2,x3,x4,x5 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20 : out std_logic );
end sortmax;

architecture ARC of sortmax is

   type states_sortmax is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24 );
   signal current_sortmax : states_sortmax;

begin
   process (clk , rst)
   procedure proc_sortmax is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;


   case current_sortmax is
   when s1 =>
      if ( x5 and x3 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_sortmax <= s1;

      elsif ( x5 and x3 and not x4 ) = '1' then
         y8 <= '1' ;
         current_sortmax <= s1;

      elsif ( x5 and not x3 and x1 ) = '1' then
         y2 <= '1' ;
         current_sortmax <= s2;

      elsif ( x5 and not x3 and not x1 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_sortmax <= s3;

      else
         current_sortmax <= s1;

      end if;

   when s2 =>
         y10 <= '1' ;
         y16 <= '1' ;
         current_sortmax <= s4;

   when s3 =>
         y9 <= '1' ;
         current_sortmax <= s5;

   when s4 =>
      if ( x2 ) = '1' then
         current_sortmax <= s1;

      else
         y12 <= '1' ;
         current_sortmax <= s6;

      end if;

   when s5 =>
         y5 <= '1' ;
         current_sortmax <= s7;

   when s6 =>
         y10 <= '1' ;
         y14 <= '1' ;
         y20 <= '1' ;
         current_sortmax <= s8;

   when s7 =>
         y4 <= '1' ;
         current_sortmax <= s9;

   when s8 =>
         y14 <= '1' ;
         y16 <= '1' ;
         y19 <= '1' ;
         current_sortmax <= s10;

   when s9 =>
      if ( x1 ) = '1' then
         y10 <= '1' ;
         y16 <= '1' ;
         current_sortmax <= s4;

      else
         y10 <= '1' ;
         y16 <= '1' ;
         current_sortmax <= s11;

      end if;

   when s10 =>
      if ( x2 ) = '1' then
         y4 <= '1' ;
         current_sortmax <= s9;

      else
         y11 <= '1' ;
         y14 <= '1' ;
         current_sortmax <= s12;

      end if;

   when s11 =>
      if ( x2 ) = '1' then
         y1 <= '1' ;
         current_sortmax <= s13;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_sortmax <= s14;

      end if;

   when s12 =>
         y9 <= '1' ;
         current_sortmax <= s15;

   when s13 =>
         y7 <= '1' ;
         current_sortmax <= s1;

   when s14 =>
         y9 <= '1' ;
         current_sortmax <= s16;

   when s15 =>
         y1 <= '1' ;
         y5 <= '1' ;
         current_sortmax <= s17;

   when s16 =>
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_sortmax <= s18;

   when s17 =>
         y9 <= '1' ;
         current_sortmax <= s19;

   when s18 =>
      if ( x2 ) = '1' then
         y5 <= '1' ;
         current_sortmax <= s7;

      else
         y4 <= '1' ;
         current_sortmax <= s9;

      end if;

   when s19 =>
         y16 <= '1' ;
         y17 <= '1' ;
         current_sortmax <= s20;

   when s20 =>
      if ( x2 ) = '1' then
         y7 <= '1' ;
         current_sortmax <= s21;

      else
         y13 <= '1' ;
         current_sortmax <= s6;

      end if;

   when s21 =>
         y20 <= '1' ;
         current_sortmax <= s22;

   when s22 =>
         y8 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_sortmax <= s23;

   when s23 =>
         y7 <= '1' ;
         y15 <= '1' ;
         current_sortmax <= s24;

   when s24 =>
         y13 <= '1' ;
         current_sortmax <= s6;

   end case;
   end proc_sortmax;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;

	current_sortmax <= s1;
      elsif (clk'event and clk ='1') then
        proc_sortmax;
      end if;
   end process;
end ARC;
