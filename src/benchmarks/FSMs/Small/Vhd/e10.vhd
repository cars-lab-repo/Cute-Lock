library ieee;
use ieee.std_logic_1164.all;

entity e10 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13 : out std_logic );
end e10;

architecture ARC of e10 is

   type states_e10 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19 );
   signal current_e10 : states_e10;

begin
   process (clk , rst)
   procedure proc_e10 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;

   case current_e10 is
   when s1 =>
      if ( x1 and x10 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s2;

      elsif ( x1 and not x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_e10 <= s3;

      elsif ( not x1 and x10 and x4 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      elsif ( not x1 and x10 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_e10 <= s5;

      elsif ( not x1 and not x10 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s2;

      else
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      end if;

   when s2 =>
      if ( x10 and x5 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      elsif ( x10 and not x5 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_e10 <= s6;

      elsif ( not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s7;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      else
         y1 <= '1' ;
         current_e10 <= s9;

      end if;

   when s3 =>
      if ( x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_e10 <= s10;

      elsif ( not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_e10 <= s11;

      elsif ( not x4 and x1 and not x3 ) = '1' then
         y5 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s12;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         current_e10 <= s6;

      end if;

   when s4 =>
      if ( x10 and x9 ) = '1' then
         current_e10 <= s1;

      elsif ( x10 and not x9 ) = '1' then
         y13 <= '1' ;
         current_e10 <= s13;

      elsif ( not x10 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s14;

      elsif ( not x10 and not x6 and x8 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_e10 <= s10;

      elsif ( not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_e10 <= s11;

      elsif ( not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y5 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s12;

      elsif ( not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_e10 <= s6;

      else
         current_e10 <= s1;

      end if;

   when s5 =>
      if ( x2 and x4 ) = '1' then
         y5 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s12;

      elsif ( x2 and not x4 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_e10 <= s6;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      end if;

   when s6 =>
      if ( x10 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s2;

      elsif ( x10 and not x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s14;

      elsif ( not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s7;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      else
         y1 <= '1' ;
         current_e10 <= s9;

      end if;

   when s7 =>
      if ( x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s7;

      elsif ( not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      else
         y1 <= '1' ;
         current_e10 <= s9;

      end if;

   when s8 =>
      if ( x10 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_e10 <= s15;

      elsif ( not x10 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_e10 <= s16;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s17;

      end if;

   when s9 =>
      if ( x10 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      else
         y13 <= '1' ;
         current_e10 <= s13;

      end if;

   when s10 =>
      if ( x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_e10 <= s5;

      elsif ( not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s7;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      else
         y1 <= '1' ;
         current_e10 <= s9;

      end if;

   when s11 =>
      if ( x10 ) = '1' then
         current_e10 <= s1;

      elsif ( not x10 and x5 ) = '1' then
         y10 <= '1' ;
         current_e10 <= s18;

      elsif ( not x10 and not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      end if;

   when s12 =>
      if ( x10 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_e10 <= s16;

      elsif ( x10 and not x8 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s17;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_e10 <= s15;

      end if;

   when s13 =>
      if ( x10 and x9 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      elsif ( x10 and not x9 ) = '1' then
         y2 <= '1' ;
         current_e10 <= s11;

      else
         y13 <= '1' ;
         current_e10 <= s19;

      end if;

   when s14 =>
      if ( x10 and x7 ) = '1' then
         y2 <= '1' ;
         current_e10 <= s11;

      elsif ( x10 and not x7 ) = '1' then
         y10 <= '1' ;
         current_e10 <= s18;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_e10 <= s15;

      end if;

   when s15 =>
      if ( x10 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_e10 <= s10;

      elsif ( x10 and not x6 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s17;

      else
         current_e10 <= s15;

      end if;

   when s16 =>
      if ( x10 ) = '1' then
         y1 <= '1' ;
         current_e10 <= s9;

      elsif ( not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s7;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      else
         y1 <= '1' ;
         current_e10 <= s9;

      end if;

   when s17 =>
      if ( x10 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_e10 <= s5;

      elsif ( x10 and not x8 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_e10 <= s10;

      elsif ( not x10 and x6 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_e10 <= s14;

      elsif ( not x10 and x6 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s7;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_e10 <= s15;

      end if;

   when s18 =>
      if ( x10 and x1 ) = '1' then
         current_e10 <= s1;

      elsif ( x10 and not x1 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      elsif ( not x10 and x5 ) = '1' then
         y10 <= '1' ;
         current_e10 <= s18;

      elsif ( not x10 and not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      end if;

   when s19 =>
      if ( x5 ) = '1' then
         y10 <= '1' ;
         current_e10 <= s18;

      elsif ( not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s4;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         current_e10 <= s8;

      end if;

   end case;
   end proc_e10;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;
	current_e10 <= s1;
      elsif (clk'event and clk ='1') then
        proc_e10;
      end if;
   end process;
end ARC;
