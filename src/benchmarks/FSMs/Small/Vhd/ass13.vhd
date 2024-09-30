library ieee;
use ieee.std_logic_1164.all;

entity ass13 is
   port ( clk,rst,x1,x2,x3,x4,x5 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25 : out std_logic );
end ass13;

architecture ARC of ass13 is

   type states_ass13 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19 );
   signal current_ass13 : states_ass13;

begin
   process (clk , rst)
   procedure proc_ass13 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;

   case current_ass13 is
   when s1 =>
         y11 <= '1' ;
         current_ass13 <= s2;

   when s2 =>
      if ( x4 and x5 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_ass13 <= s3;

      elsif ( x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y23 <= '1' ;
         current_ass13 <= s4;

      elsif ( x4 and not x5 and x1 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s5;

      elsif ( x4 and not x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_ass13 <= s6;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y19 <= '1' ;
         current_ass13 <= s7;

      end if;

   when s3 =>
      if ( x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y24 <= '1' ;
         current_ass13 <= s8;

      elsif ( not x1 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y24 <= '1' ;
         current_ass13 <= s8;

      elsif ( not x1 and x4 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y23 <= '1' ;
         current_ass13 <= s4;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_ass13 <= s9;

      end if;

   when s4 =>
      if ( x4 and x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_ass13 <= s10;

      elsif ( x4 and not x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_ass13 <= s11;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_ass13 <= s12;

      end if;

   when s5 =>
      if ( x5 and x2 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_ass13 <= s14;

      elsif ( x5 and not x2 and x4 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_ass13 <= s9;

      elsif ( x5 and not x2 and x4 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_ass13 <= s13;

      elsif ( x5 and not x2 and not x4 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_ass13 <= s14;

      else
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_ass13 <= s14;

      end if;

   when s6 =>
      if ( x4 and x5 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s5;

      elsif ( x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s15;

      else
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s16;

      end if;

   when s7 =>
      if ( x4 and x5 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_ass13 <= s3;

      elsif ( x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y23 <= '1' ;
         current_ass13 <= s4;

      elsif ( x4 and not x5 and x1 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s5;

      elsif ( x4 and not x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_ass13 <= s6;

      elsif ( not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s5;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_ass13 <= s6;

      end if;

   when s8 =>
         y9 <= '1' ;
         y10 <= '1' ;
         current_ass13 <= s10;

   when s9 =>
      if ( x4 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_ass13 <= s6;

      elsif ( x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         current_ass13 <= s17;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_ass13 <= s11;

      end if;

   when s10 =>
      if ( x5 and x4 and x2 ) = '1' then
         y11 <= '1' ;
         current_ass13 <= s2;

      elsif ( x5 and x4 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y19 <= '1' ;
         current_ass13 <= s7;

      elsif ( x5 and not x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_ass13 <= s11;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_ass13 <= s11;

      end if;

   when s11 =>
      if ( x4 and x5 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_ass13 <= s9;

      elsif ( x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_ass13 <= s13;

      elsif ( x4 and not x5 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_ass13 <= s12;

      elsif ( x4 and not x5 and x2 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_ass13 <= s13;

      elsif ( x4 and not x5 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_ass13 <= s3;

      elsif ( not x4 and x2 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y23 <= '1' ;
         current_ass13 <= s4;

      elsif ( not x4 and x2 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_ass13 <= s13;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_ass13 <= s3;

      end if;

   when s12 =>
      if ( x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_ass13 <= s18;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y19 <= '1' ;
         current_ass13 <= s7;

      end if;

   when s13 =>
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s5;

   when s14 =>
      if ( x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s15;

      else
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s16;

      end if;

   when s15 =>
      if ( x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_ass13 <= s13;

      elsif ( not x2 and x1 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s5;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_ass13 <= s6;

      end if;

   when s16 =>
      if ( x4 ) = '1' then
         current_ass13 <= s1;

      elsif ( not x4 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_ass13 <= s19;

      elsif ( not x4 and not x2 and x1 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s5;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_ass13 <= s6;

      end if;

   when s17 =>
      if ( x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_ass13 <= s19;

      else
         y9 <= '1' ;
         y17 <= '1' ;
         current_ass13 <= s16;

      end if;

   when s18 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y19 <= '1' ;
         current_ass13 <= s7;

   when s19 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_ass13 <= s9;

   end case;
   end proc_ass13;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;
	current_ass13 <= s1;
      elsif (clk'event and clk ='1') then
        proc_ass13;
      end if;
   end process;
end ARC;
