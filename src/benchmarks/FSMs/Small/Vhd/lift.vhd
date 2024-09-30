library ieee;
use ieee.std_logic_1164.all;

entity lift is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14 : in std_logic;
        y1,y2,y3,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,
	y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30 : out std_logic );
end lift;

architecture ARC of lift is

   type states_lift is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20 );
   signal current_lift : states_lift;

begin
   process (clk , rst)
   procedure proc_lift is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y5   <= '0' ;
	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;	y9   <= '0' ;
	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;
	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;	y17  <= '0' ;
	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;	y21  <= '0' ;
	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;	y25  <= '0' ;
	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;	y29  <= '0' ;
	y30  <= '0' ;

   case current_lift is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y1 <= '1' ;
         current_lift <= s2;

      elsif ( x1 and not x2 and x5 and x3 ) = '1' then
         current_lift <= s1;

      elsif ( x1 and not x2 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lift <= s3;

      elsif ( x1 and not x2 and not x5 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         current_lift <= s3;

      else
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s4;

      end if;

   when s2 =>
      if ( x3 and x5 and x7 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s1;

      elsif ( x3 and x5 and not x7 and x1 and x2 ) = '1' then
         y1 <= '1' ;
         current_lift <= s2;

      elsif ( x3 and x5 and not x7 and x1 and not x2 ) = '1' then
         current_lift <= s2;

      elsif ( x3 and x5 and not x7 and not x1 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s4;

      elsif ( x3 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         current_lift <= s5;

      elsif ( x3 and not x5 and not x6 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s1;

      else
         y2 <= '1' ;
         current_lift <= s6;

      end if;

   when s3 =>
      if ( x13 ) = '1' then
         y25 <= '1' ;
         current_lift <= s1;

      else
         y6 <= '1' ;
         current_lift <= s7;

      end if;

   when s4 =>
      if ( x10 ) = '1' then
         y16 <= '1' ;
         current_lift <= s8;

      elsif ( not x10 and x11 ) = '1' then
         y14 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_lift <= s9;

      else
         y10 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_lift <= s4;

      end if;

   when s5 =>
         y6 <= '1' ;
         current_lift <= s10;

   when s6 =>
      if ( x4 ) = '1' then
         y3 <= '1' ;
         current_lift <= s5;

      elsif ( not x4 and x5 and x7 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s1;

      elsif ( not x4 and x5 and not x7 and x1 and x2 ) = '1' then
         y1 <= '1' ;
         current_lift <= s2;

      elsif ( not x4 and x5 and not x7 and x1 and not x2 and x3 ) = '1' then
         current_lift <= s6;

      elsif ( not x4 and x5 and not x7 and x1 and not x2 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lift <= s3;

      elsif ( not x4 and x5 and not x7 and not x1 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s4;

      elsif ( not x4 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         current_lift <= s5;

      else
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s1;

      end if;

   when s7 =>
      if ( x11 ) = '1' then
         y18 <= '1' ;
         y27 <= '1' ;
         current_lift <= s11;

      else
         y10 <= '1' ;
         y20 <= '1' ;
         y26 <= '1' ;
         current_lift <= s7;

      end if;

   when s8 =>
      if ( x11 ) = '1' then
         y14 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_lift <= s9;

      else
         y10 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_lift <= s4;

      end if;

   when s9 =>
      if ( x12 ) = '1' then
         y21 <= '1' ;
         current_lift <= s12;

      elsif ( not x12 and x13 ) = '1' then
         y22 <= '1' ;
         current_lift <= s13;

      else
         y23 <= '1' ;
         y24 <= '1' ;
         current_lift <= s4;

      end if;

   when s10 =>
      if ( x8 ) = '1' then
         y7 <= '1' ;
         current_lift <= s14;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         current_lift <= s15;

      end if;

   when s11 =>
      if ( x14 ) = '1' then
         y26 <= '1' ;
         current_lift <= s16;

      elsif ( not x14 and x7 ) = '1' then
         y25 <= '1' ;
         current_lift <= s1;

      elsif ( not x14 and not x7 and x3 and x1 and x2 ) = '1' then
         y1 <= '1' ;
         current_lift <= s2;

      elsif ( not x14 and not x7 and x3 and x1 and not x2 and x5 ) = '1' then
         current_lift <= s11;

      elsif ( not x14 and not x7 and x3 and x1 and not x2 and not x5 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         current_lift <= s3;

      elsif ( not x14 and not x7 and x3 and not x1 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s4;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         current_lift <= s3;

      end if;

   when s12 =>
      if ( x13 ) = '1' then
         y22 <= '1' ;
         current_lift <= s13;

      else
         y23 <= '1' ;
         y24 <= '1' ;
         current_lift <= s4;

      end if;

   when s13 =>
      if ( x2 ) = '1' then
         y1 <= '1' ;
         current_lift <= s2;

      elsif ( not x2 and x5 and x3 and x1 ) = '1' then
         current_lift <= s13;

      elsif ( not x2 and x5 and x3 and not x1 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift <= s4;

      elsif ( not x2 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lift <= s3;

      else
         y1 <= '1' ;
         y5 <= '1' ;
         current_lift <= s3;

      end if;

   when s14 =>
      if ( x9 ) = '1' then
         y10 <= '1' ;
         current_lift <= s5;

      else
         current_lift <= s14;

      end if;

   when s15 =>
      if ( x9 ) = '1' then
         y10 <= '1' ;
         current_lift <= s17;

      else
         current_lift <= s15;

      end if;

   when s16 =>
      if ( x14 ) = '1' then
         y29 <= '1' ;
         current_lift <= s18;

      else
         y28 <= '1' ;
         y30 <= '1' ;
         current_lift <= s19;

      end if;

   when s17 =>
         y11 <= '1' ;
         current_lift <= s20;

   when s18 =>
      if ( x9 ) = '1' then
         y23 <= '1' ;
         current_lift <= s16;

      else
         current_lift <= s18;

      end if;

   when s19 =>
      if ( x9 ) = '1' then
         y23 <= '1' ;
         current_lift <= s17;

      else
         current_lift <= s19;

      end if;

   when s20 =>
      if ( x7 ) = '1' then
         y12 <= '1' ;
         current_lift <= s1;

      else
         y13 <= '1' ;
         current_lift <= s1;

      end if;

   end case;
   end proc_lift;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y5   <= '0' ;
	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;	y9   <= '0' ;
	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;
	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;	y17  <= '0' ;
	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;	y21  <= '0' ;
	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;	y25  <= '0' ;
	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;	y29  <= '0' ;
	y30  <= '0' ;
	current_lift <= s1;
      elsif (clk'event and clk ='1') then
        proc_lift;
      end if;
   end process;
end ARC;
