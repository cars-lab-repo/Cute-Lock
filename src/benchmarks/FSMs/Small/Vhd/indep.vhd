library ieee;
use ieee.std_logic_1164.all;

entity indep is
   port ( clk,rst,x1,x2,x3,x4,x5,x6 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23 : out std_logic );
end indep;

architecture ARC of indep is

   type states_indep is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19 );
   signal current_indep : states_indep;

begin
   process (clk , rst)
   procedure proc_indep is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;

   case current_indep is
   when s1 =>
         current_indep <= s2;

   when s2 =>
      if ( x4 ) = '1' then
         y7 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_indep <= s3;

      else
         current_indep <= s2;

      end if;

   when s3 =>
      if ( x3 ) = '1' then
         y16 <= '1' ;
         current_indep <= s4;

      else
         y17 <= '1' ;
         current_indep <= s4;

      end if;

   when s4 =>
         y23 <= '1' ;
         current_indep <= s5;

   when s5 =>
      if ( x4 and x5 and x6 and x2 and x1 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         current_indep <= s6;

      elsif ( x4 and x5 and x6 and x2 and not x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      elsif ( x4 and x5 and x6 and not x2 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      elsif ( x4 and x5 and not x6 ) = '1' then
         y2 <= '1' ;
         current_indep <= s8;

      elsif ( x4 and not x5 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_indep <= s9;

      else
         y23 <= '1' ;
         current_indep <= s5;

      end if;

   when s6 =>
      if ( x4 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_indep <= s7;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      end if;

   when s7 =>
         y4 <= '1' ;
         current_indep <= s10;

   when s8 =>
         y1 <= '1' ;
         current_indep <= s11;

   when s9 =>
      if ( x4 ) = '1' then
         y3 <= '1' ;
         current_indep <= s12;

      else
         y14 <= '1' ;
         current_indep <= s13;

      end if;

   when s10 =>
         current_indep <= s14;

   when s11 =>
      if ( x2 and x1 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         current_indep <= s6;

      elsif ( x2 and not x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      end if;

   when s12 =>
      if ( x6 and x2 and x1 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         current_indep <= s6;

      elsif ( x6 and x2 and not x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      elsif ( x6 and not x2 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      else
         y2 <= '1' ;
         current_indep <= s8;

      end if;

   when s13 =>
      if ( x4 ) = '1' then
         current_indep <= s15;

      elsif ( not x4 and x6 and x2 and x1 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         current_indep <= s6;

      elsif ( not x4 and x6 and x2 and not x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      elsif ( not x4 and x6 and not x2 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      else
         y2 <= '1' ;
         current_indep <= s8;

      end if;

   when s14 =>
      if ( x4 ) = '1' then
         current_indep <= s1;

      else
         y13 <= '1' ;
         current_indep <= s16;

      end if;

   when s15 =>
         current_indep <= s17;

   when s16 =>
      if ( x4 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_indep <= s1;

      else
         y4 <= '1' ;
         current_indep <= s10;

      end if;

   when s17 =>
      if ( x4 ) = '1' then
         current_indep <= s18;

      else
         current_indep <= s17;

      end if;

   when s18 =>
         y23 <= '1' ;
         current_indep <= s19;

   when s19 =>
      if ( x4 and x6 and x2 and x1 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         current_indep <= s6;

      elsif ( x4 and x6 and x2 and not x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      elsif ( x4 and x6 and not x2 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_indep <= s7;

      elsif ( x4 and not x6 ) = '1' then
         y2 <= '1' ;
         current_indep <= s8;

      else
         y23 <= '1' ;
         current_indep <= s19;

      end if;

   end case;
   end proc_indep;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;
	current_indep <= s1;
      elsif (clk'event and clk ='1') then
        proc_indep;
      end if;
   end process;
end ARC;
