library ieee;
use ieee.std_logic_1164.all;

entity e7 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20 : out std_logic );
end e7;

architecture ARC of e7 is

   type states_e7 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17 );
   signal current_e7 : states_e7;

begin
   process (clk , rst)
   procedure proc_e7 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;


   case current_e7 is
   when s1 =>
      if ( x12 and x10 and x11 ) = '1' then
         y18 <= '1' ;
         current_e7 <= s2;

      elsif ( x12 and x10 and not x11 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s3;

      elsif ( x12 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s4;

      elsif ( x12 and not x10 and not x11 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e7 <= s5;

      elsif ( x12 and not x10 and not x11 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      elsif ( x12 and not x10 and not x11 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      elsif ( not x12 and x9 and x11 and x1 and x5 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( not x12 and x9 and x11 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and x9 and x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e7 <= s5;

      elsif ( not x12 and x9 and not x11 and x7 ) = '1' then
         y16 <= '1' ;
         current_e7 <= s10;

      elsif ( not x12 and x9 and not x11 and not x7 and x1 and x5 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( not x12 and x9 and not x11 and not x7 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and x9 and not x11 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e7 <= s5;

      elsif ( not x12 and not x9 and x10 and x11 and x8 ) = '1' then
         y16 <= '1' ;
         current_e7 <= s10;

      elsif ( not x12 and not x9 and x10 and x11 and not x8 and x5 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( not x12 and not x9 and x10 and x11 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and x10 and not x11 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s11;

      elsif ( not x12 and not x9 and x10 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and not x10 and x1 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s12;

      elsif ( not x12 and not x9 and not x10 and x1 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and not x10 and x1 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and not x10 and x1 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s3;

      elsif ( not x12 and not x9 and not x10 and x1 and not x11 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e7 <= s5;

      end if;

   when s2 =>
      if ( x12 and x1 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s12;

      elsif ( x12 and not x1 ) = '1' then
         y20 <= '1' ;
         current_e7 <= s13;

      else
         current_e7 <= s1;

      end if;

   when s3 =>
      if ( x12 ) = '1' then
         y13 <= '1' ;
         current_e7 <= s14;

      elsif ( not x12 and x2 and x6 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s15;

      elsif ( not x12 and x2 and not x6 ) = '1' then
         y13 <= '1' ;
         current_e7 <= s14;

      else
         current_e7 <= s3;

      end if;

   when s4 =>
      if ( x12 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e7 <= s5;

      elsif ( x12 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      elsif ( x12 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      elsif ( not x12 and x2 and x6 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s15;

      elsif ( not x12 and x2 and not x6 ) = '1' then
         y13 <= '1' ;
         current_e7 <= s14;

      else
         current_e7 <= s4;

      end if;

   when s5 =>
      if ( x12 and x2 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      elsif ( x12 and not x2 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      elsif ( not x12 and x2 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      else
         current_e7 <= s5;

      end if;

   when s6 =>
      if ( x12 and x10 and x8 and x1 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( x12 and x10 and x8 and not x1 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( x12 and x10 and not x8 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( x12 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e7 <= s5;

      elsif ( x12 and not x10 and not x1 and x3 ) = '1' then
         current_e7 <= s1;

      elsif ( x12 and not x10 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and x9 and x5 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( not x12 and x9 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and x10 and x5 and x11 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( not x12 and not x9 and x10 and x5 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s11;

      elsif ( not x12 and not x9 and x10 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and not x10 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s12;

      elsif ( not x12 and not x9 and not x10 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and not x10 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and not x10 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s3;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      end if;

   when s7 =>
      if ( x12 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( x12 and x10 and not x11 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s15;

      elsif ( x12 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e7 <= s5;

      elsif ( x12 and not x10 and not x1 and x3 ) = '1' then
         current_e7 <= s1;

      elsif ( x12 and not x10 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and x9 and x5 ) = '1' then
         y19 <= '1' ;
         current_e7 <= s8;

      elsif ( not x12 and x9 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and x11 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s12;

      elsif ( not x12 and not x9 and x11 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      elsif ( not x12 and not x9 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s3;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e7 <= s9;

      end if;

   when s8 =>
      if ( x12 and x5 ) = '1' then
         y6 <= '1' ;
         current_e7 <= s16;

      elsif ( x12 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      elsif ( x12 and not x5 and not x1 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_e7 <= s17;

      end if;

   when s9 =>
      if ( x12 ) = '1' then
         current_e7 <= s1;

      elsif ( not x12 and x4 and x9 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      elsif ( not x12 and x4 and not x9 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      elsif ( not x12 and x4 and not x9 and x10 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s11;

      elsif ( not x12 and x4 and not x9 and x10 and not x11 and not x3 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      elsif ( not x12 and x4 and not x9 and not x10 and x3 and x11 ) = '1' then
         y20 <= '1' ;
         current_e7 <= s13;

      elsif ( not x12 and x4 and not x9 and not x10 and x3 and not x11 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e7 <= s4;

      elsif ( not x12 and x4 and not x9 and not x10 and not x3 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      else
         current_e7 <= s9;

      end if;

   when s10 =>
      if ( x12 and x7 ) = '1' then
         current_e7 <= s1;

      elsif ( x12 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_e7 <= s17;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_e7 <= s17;

      end if;

   when s11 =>
      if ( x2 ) = '1' then
         y6 <= '1' ;
         current_e7 <= s16;

      else
         current_e7 <= s11;

      end if;

   when s12 =>
      if ( x12 ) = '1' then
         y20 <= '1' ;
         current_e7 <= s13;

      elsif ( not x12 and x4 ) = '1' then
         y16 <= '1' ;
         current_e7 <= s10;

      else
         current_e7 <= s12;

      end if;

   when s13 =>
      if ( x12 and x1 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      elsif ( x12 and not x1 ) = '1' then
         y5 <= '1' ;
         current_e7 <= s6;

      else
         y16 <= '1' ;
         current_e7 <= s10;

      end if;

   when s14 =>
      if ( x12 and x4 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      elsif ( x12 and not x4 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s15;

      else
         y16 <= '1' ;
         current_e7 <= s10;

      end if;

   when s15 =>
      if ( x12 and x5 and x6 ) = '1' then
         y16 <= '1' ;
         current_e7 <= s10;

      elsif ( x12 and x5 and not x6 and x7 ) = '1' then
         current_e7 <= s1;

      elsif ( x12 and x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_e7 <= s17;

      elsif ( x12 and not x5 and x4 ) = '1' then
         y4 <= '1' ;
         current_e7 <= s7;

      elsif ( x12 and not x5 and not x4 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_e7 <= s15;

      elsif ( not x12 and x4 ) = '1' then
         y16 <= '1' ;
         current_e7 <= s10;

      else
         current_e7 <= s15;

      end if;

   when s16 =>
      if ( x12 and x9 ) = '1' then
         y16 <= '1' ;
         current_e7 <= s10;

      elsif ( x12 and not x9 and x7 ) = '1' then
         current_e7 <= s1;

      elsif ( x12 and not x9 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_e7 <= s17;

      else
         y16 <= '1' ;
         current_e7 <= s10;

      end if;

   when s17 =>
      if ( x12 ) = '1' then
         current_e7 <= s1;

      elsif ( not x12 and x4 ) = '1' then
         y18 <= '1' ;
         current_e7 <= s2;

      else
         current_e7 <= s17;

      end if;

   end case;
   end proc_e7;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;

	current_e7 <= s1;
      elsif (clk'event and clk ='1') then
        proc_e7;
      end if;
   end process;
end ARC;
