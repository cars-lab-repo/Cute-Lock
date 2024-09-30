library ieee;
use ieee.std_logic_1164.all;

entity e18 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12 : out std_logic );
end e18;

architecture ARC of e18 is

   type states_e18 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15
	 );
   signal current_e18 : states_e18;

begin
   process (clk , rst)
   procedure proc_e18 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;


   case current_e18 is
   when s1 =>
      if ( x10 and x3 and x7 ) = '1' then
         y11 <= '1' ;
         current_e18 <= s2;

      elsif ( x10 and x3 and not x7 and x1 and x5 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s3;

      elsif ( x10 and x3 and not x7 and x1 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e18 <= s4;

      elsif ( x10 and x3 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         current_e18 <= s5;

      elsif ( x10 and not x3 ) = '1' then
         y3 <= '1' ;
         current_e18 <= s6;

      elsif ( not x10 and x3 and x1 and x5 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s3;

      elsif ( not x10 and x3 and x1 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e18 <= s4;

      elsif ( not x10 and x3 and not x1 ) = '1' then
         y1 <= '1' ;
         current_e18 <= s5;

      else
         y6 <= '1' ;
         current_e18 <= s7;

      end if;

   when s2 =>
      if ( x3 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_e18 <= s8;

      elsif ( not x3 and x7 ) = '1' then
         current_e18 <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_e18 <= s8;

      end if;

   when s3 =>
      if ( x3 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_e18 <= s8;

      elsif ( not x3 and x5 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s9;

      elsif ( not x3 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_e18 <= s10;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_e18 <= s11;

      end if;

   when s4 =>
      if ( x3 and x4 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_e18 <= s11;

      elsif ( x3 and not x4 ) = '1' then
         current_e18 <= s4;

      else
         current_e18 <= s1;

      end if;

   when s5 =>
      if ( x2 ) = '1' then
         y4 <= '1' ;
         current_e18 <= s10;

      else
         current_e18 <= s5;

      end if;

   when s6 =>
      if ( x3 ) = '1' then
         current_e18 <= s1;

      elsif ( not x3 and x1 ) = '1' then
         y11 <= '1' ;
         current_e18 <= s12;

      else
         y8 <= '1' ;
         y12 <= '1' ;
         current_e18 <= s13;

      end if;

   when s7 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_e18 <= s14;

   when s8 =>
      if ( x3 and x4 ) = '1' then
         y3 <= '1' ;
         current_e18 <= s6;

      elsif ( x3 and not x4 ) = '1' then
         current_e18 <= s8;

      else
         current_e18 <= s1;

      end if;

   when s9 =>
      if ( x9 ) = '1' then
         y11 <= '1' ;
         current_e18 <= s2;

      elsif ( not x9 and x7 ) = '1' then
         current_e18 <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_e18 <= s8;

      end if;

   when s10 =>
      if ( x10 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s3;

      elsif ( x10 and x3 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e18 <= s4;

      elsif ( x10 and not x3 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s3;

      elsif ( not x10 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s3;

      elsif ( not x10 and x3 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e18 <= s4;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_e18 <= s15;

      end if;

   when s11 =>
      if ( x3 and x5 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s3;

      elsif ( x3 and not x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e18 <= s4;

      elsif ( not x3 and x8 and x1 ) = '1' then
         y2 <= '1' ;
         current_e18 <= s3;

      elsif ( not x3 and x8 and not x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e18 <= s4;

      else
         y2 <= '1' ;
         current_e18 <= s3;

      end if;

   when s12 =>
         y8 <= '1' ;
         y12 <= '1' ;
         current_e18 <= s13;

   when s13 =>
      if ( x1 ) = '1' then
         y4 <= '1' ;
         current_e18 <= s10;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_e18 <= s11;

      end if;

   when s14 =>
      if ( x4 ) = '1' then
         y4 <= '1' ;
         current_e18 <= s10;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_e18 <= s15;

      end if;

   when s15 =>
      if ( x5 and x6 ) = '1' then
         y11 <= '1' ;
         current_e18 <= s2;

      elsif ( x5 and not x6 and x7 ) = '1' then
         current_e18 <= s1;

      elsif ( x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y12 <= '1' ;
         current_e18 <= s8;

      elsif ( not x5 and x4 ) = '1' then
         y4 <= '1' ;
         current_e18 <= s10;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_e18 <= s15;

      end if;

   end case;
   end proc_e18;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;

	current_e18 <= s1;
      elsif (clk'event and clk ='1') then
        proc_e18;
      end if;
   end process;
end ARC;
