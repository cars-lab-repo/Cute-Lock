library ieee;
use ieee.std_logic_1164.all;

entity lift2 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16 : out std_logic );
end lift2;

architecture ARC of lift2 is

   type states_lift2 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13 );
   signal current_lift2 : states_lift2;

begin
   process (clk , rst)
   procedure proc_lift2 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;


   case current_lift2 is
   when s1 =>
      if ( x1 ) = '1' then
         y1 <= '1' ;
         current_lift2 <= s2;

      else
         current_lift2 <= s1;

      end if;

   when s2 =>
      if ( x2 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s3;

      elsif ( x2 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lift2 <= s4;

      elsif ( x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lift2 <= s5;

      else
         current_lift2 <= s2;

      end if;

   when s3 =>
      if ( x12 ) = '1' then
         y16 <= '1' ;
         current_lift2 <= s6;

      else
         current_lift2 <= s3;

      end if;

   when s4 =>
      if ( x6 ) = '1' then
         y9 <= '1' ;
         current_lift2 <= s7;

      else
         y10 <= '1' ;
         current_lift2 <= s8;

      end if;

   when s5 =>
      if ( x5 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lift2 <= s4;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         current_lift2 <= s2;

      end if;

   when s6 =>
      if ( x13 and x4 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lift2 <= s4;

      elsif ( x13 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lift2 <= s5;

      elsif ( not x13 and x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s3;

      elsif ( not x13 and not x14 and x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s3;

      elsif ( not x13 and not x14 and not x9 and x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s3;

      elsif ( not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s3;

      else
         current_lift2 <= s6;

      end if;

   when s7 =>
      if ( x7 ) = '1' then
         y12 <= '1' ;
         current_lift2 <= s9;

      elsif ( not x7 and x9 ) = '1' then
         y12 <= '1' ;
         current_lift2 <= s9;

      elsif ( not x7 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         current_lift2 <= s7;

      elsif ( not x7 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         current_lift2 <= s8;

      elsif ( not x7 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_lift2 <= s1;

      else
         current_lift2 <= s7;

      end if;

   when s8 =>
      if ( x8 ) = '1' then
         y12 <= '1' ;
         current_lift2 <= s9;

      elsif ( not x8 and x9 ) = '1' then
         y12 <= '1' ;
         current_lift2 <= s9;

      elsif ( not x8 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         current_lift2 <= s7;

      elsif ( not x8 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         current_lift2 <= s8;

      elsif ( not x8 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_lift2 <= s1;

      else
         current_lift2 <= s8;

      end if;

   when s9 =>
      if ( x11 ) = '1' then
         y6 <= '1' ;
         current_lift2 <= s1;

      elsif ( not x11 and x10 ) = '1' then
         y11 <= '1' ;
         y13 <= '1' ;
         current_lift2 <= s10;

      else
         current_lift2 <= s9;

      end if;

   when s10 =>
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s11;

   when s11 =>
      if ( x6 ) = '1' then
         y4 <= '1' ;
         current_lift2 <= s12;

      else
         y3 <= '1' ;
         current_lift2 <= s12;

      end if;

   when s12 =>
      if ( x12 ) = '1' then
         y16 <= '1' ;
         current_lift2 <= s13;

      else
         current_lift2 <= s12;

      end if;

   when s13 =>
      if ( x13 and x11 ) = '1' then
         y6 <= '1' ;
         current_lift2 <= s1;

      elsif ( x13 and not x11 and x6 and x4 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lift2 <= s4;

      elsif ( x13 and not x11 and x6 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lift2 <= s5;

      elsif ( x13 and not x11 and not x6 and x5 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lift2 <= s4;

      elsif ( x13 and not x11 and not x6 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_lift2 <= s2;

      elsif ( not x13 and x14 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s11;

      elsif ( not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s11;

      elsif ( not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s11;

      elsif ( not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_lift2 <= s13;

      elsif ( not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lift2 <= s11;

      else
         current_lift2 <= s13;

      end if;

   end case;
   end proc_lift2;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;

	current_lift2 <= s1;
      elsif (clk'event and clk ='1') then
        proc_lift2;
      end if;
   end process;
end ARC;
