library ieee;
use ieee.std_logic_1164.all;

entity cat is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22 : out std_logic );
end cat;

architecture ARC of cat is

   type states_cat is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15
	 );
   signal current_cat : states_cat;

begin
   process (clk , rst)
   procedure proc_cat is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;

   case current_cat is
   when s1 =>
      if ( x11 and x10 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_cat <= s2;

      elsif ( x11 and not x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_cat <= s3;

      elsif ( not x11 and x10 ) = '1' then
         y18 <= '1' ;
         current_cat <= s4;

      elsif ( not x11 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_cat <= s5;

      elsif ( not x11 and not x10 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_cat <= s6;

      else
         y4 <= '1' ;
         current_cat <= s7;

      end if;

   when s2 =>
         y13 <= '1' ;
         current_cat <= s8;

   when s3 =>
      if ( x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_cat <= s5;

      elsif ( not x1 and x2 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_cat <= s6;

      else
         y4 <= '1' ;
         current_cat <= s7;

      end if;

   when s4 =>
      if ( x1 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_cat <= s9;

      else
         y20 <= '1' ;
         current_cat <= s10;

      end if;

   when s5 =>
      if ( x2 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_cat <= s6;

      else
         y4 <= '1' ;
         current_cat <= s7;

      end if;

   when s6 =>
      if ( x10 and x1 ) = '1' then
         y21 <= '1' ;
         current_cat <= s11;

      elsif ( x10 and not x1 and x8 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_cat <= s1;

      elsif ( x10 and not x1 and not x8 ) = '1' then
         y21 <= '1' ;
         current_cat <= s11;

      elsif ( not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_cat <= s12;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         current_cat <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_cat <= s1;

      end if;

   when s7 =>
      if ( x10 and x11 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_cat <= s13;

      elsif ( x10 and not x11 ) = '1' then
         y21 <= '1' ;
         current_cat <= s11;

      elsif ( not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_cat <= s12;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         current_cat <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_cat <= s1;

      end if;

   when s8 =>
      if ( x4 ) = '1' then
         y4 <= '1' ;
         current_cat <= s7;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_cat <= s13;

      end if;

   when s9 =>
         y20 <= '1' ;
         current_cat <= s10;

   when s10 =>
      if ( x1 ) = '1' then
         y4 <= '1' ;
         current_cat <= s7;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_cat <= s6;

      end if;

   when s11 =>
      if ( x5 ) = '1' then
         y22 <= '1' ;
         current_cat <= s14;

      elsif ( not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_cat <= s7;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_cat <= s6;

      end if;

   when s12 =>
      if ( x3 ) = '1' then
         current_cat <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_cat <= s1;

      end if;

   when s13 =>
      if ( x5 and x6 ) = '1' then
         y16 <= '1' ;
         current_cat <= s15;

      elsif ( x5 and not x6 and x7 ) = '1' then
         current_cat <= s1;

      elsif ( x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_cat <= s1;

      elsif ( not x5 and x4 ) = '1' then
         y4 <= '1' ;
         current_cat <= s7;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_cat <= s13;

      end if;

   when s14 =>
      if ( x9 ) = '1' then
         y16 <= '1' ;
         current_cat <= s15;

      elsif ( not x9 and x7 ) = '1' then
         current_cat <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_cat <= s1;

      end if;

   when s15 =>
      if ( x7 ) = '1' then
         current_cat <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_cat <= s1;

      end if;

   end case;
   end proc_cat;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;
	current_cat <= s1;
      elsif (clk'event and clk ='1') then
        proc_cat;
      end if;
   end process;
end ARC;
