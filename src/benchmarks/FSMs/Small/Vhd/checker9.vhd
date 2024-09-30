library ieee;
use ieee.std_logic_1164.all;

entity checker9 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11 : out std_logic );
end checker9;

architecture ARC of checker9 is

   type states_checker9 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11 );
   signal current_checker9 : states_checker9;

begin
   process (clk , rst)
   procedure proc_checker9 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;

   case current_checker9 is
   when s1 =>
      if ( x2 and x4 and x1 and x10 and x3 and x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and x4 and x1 and x10 and x3 and not x9 and x7 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s3;

      elsif ( x2 and x4 and x1 and x10 and x3 and not x9 and not x7 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and x4 and x1 and x10 and not x3 and x5 and x6 and x9 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and x4 and x1 and x10 and not x3 and x5 and x6 and not x9 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and x4 and x1 and x10 and not x3 and x5 and x6 and not x9 and not x7 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s3;

      elsif ( x2 and x4 and x1 and x10 and not x3 and x5 and not x6 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s3;

      elsif ( x2 and x4 and x1 and x10 and not x3 and not x5 and x9 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and x4 and x1 and x10 and not x3 and not x5 and x9 and x6 and not x7 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and x4 and x1 and x10 and not x3 and not x5 and x9 and not x6 ) = '1' then
         y1 <= '1' ;
         current_checker9 <= s4;

      elsif ( x2 and x4 and x1 and x10 and not x3 and not x5 and not x9 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s3;

      elsif ( x2 and x4 and x1 and not x10 ) = '1' then
         current_checker9 <= s1;

      elsif ( x2 and x4 and not x1 ) = '1' then
         current_checker9 <= s1;

      elsif ( x2 and not x4 and x1 and x3 and x10 and x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and not x4 and x1 and x3 and x10 and not x9 and x7 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s3;

      elsif ( x2 and not x4 and x1 and x3 and x10 and not x9 and not x7 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x2 and not x4 and x1 and x3 and not x10 ) = '1' then
         current_checker9 <= s1;

      elsif ( x2 and not x4 and x1 and not x3 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_checker9 <= s5;

      elsif ( x2 and not x4 and x1 and not x3 and not x6 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_checker9 <= s5;

      elsif ( x2 and not x4 and x1 and not x3 and not x6 and not x5 ) = '1' then
         y5 <= '1' ;
         current_checker9 <= s6;

      elsif ( x2 and not x4 and not x1 and x6 and x3 ) = '1' then
         current_checker9 <= s1;

      elsif ( x2 and not x4 and not x1 and x6 and not x3 ) = '1' then
         y2 <= '1' ;
         current_checker9 <= s1;

      elsif ( x2 and not x4 and not x1 and not x6 and x5 and x3 ) = '1' then
         current_checker9 <= s1;

      elsif ( x2 and not x4 and not x1 and not x6 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         current_checker9 <= s1;

      elsif ( x2 and not x4 and not x1 and not x6 and not x5 and x3 ) = '1' then
         current_checker9 <= s1;

      elsif ( x2 and not x4 and not x1 and not x6 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_checker9 <= s6;

      elsif ( not x2 and x4 ) = '1' then
         current_checker9 <= s1;

      elsif ( not x2 and not x4 and x1 and x5 and x3 ) = '1' then
         current_checker9 <= s1;

      elsif ( not x2 and not x4 and x1 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         current_checker9 <= s1;

      elsif ( not x2 and not x4 and x1 and not x5 and x6 and x3 ) = '1' then
         current_checker9 <= s1;

      elsif ( not x2 and not x4 and x1 and not x5 and x6 and not x3 ) = '1' then
         y2 <= '1' ;
         current_checker9 <= s1;

      elsif ( not x2 and not x4 and x1 and not x5 and not x6 and x3 ) = '1' then
         current_checker9 <= s1;

      elsif ( not x2 and not x4 and x1 and not x5 and not x6 and not x3 ) = '1' then
         y5 <= '1' ;
         current_checker9 <= s6;

      elsif ( not x2 and not x4 and not x1 and x3 ) = '1' then
         current_checker9 <= s1;

      else
         y2 <= '1' ;
         current_checker9 <= s1;

      end if;

   when s2 =>
      if ( x6 ) = '1' then
         y8 <= '1' ;
         current_checker9 <= s1;

      elsif ( not x6 and x5 ) = '1' then
         y8 <= '1' ;
         current_checker9 <= s1;

      elsif ( not x6 and not x5 and x3 ) = '1' then
         y8 <= '1' ;
         current_checker9 <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         current_checker9 <= s1;

      end if;

   when s3 =>
      if ( x3 and x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x3 and not x9 and x7 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s3;

      elsif ( x3 and not x9 and not x7 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x3 and x5 and x6 and x9 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x3 and x5 and x6 and not x9 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x3 and x5 and x6 and not x9 and not x7 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s3;

      elsif ( not x3 and x5 and not x6 and x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x3 and x5 and not x6 and not x9 and x7 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s7;

      elsif ( not x3 and x5 and not x6 and not x9 and not x7 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x3 and not x5 and x9 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x3 and not x5 and x9 and x6 and not x7 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x3 and not x5 and x9 and not x6 ) = '1' then
         y1 <= '1' ;
         current_checker9 <= s4;

      else
         y7 <= '1' ;
         current_checker9 <= s3;

      end if;

   when s4 =>
      if ( x8 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( x8 and not x7 ) = '1' then
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s8;

      end if;

   when s5 =>
      if ( x5 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         current_checker9 <= s9;

      elsif ( not x5 and x9 ) = '1' then
         y1 <= '1' ;
         y10 <= '1' ;
         current_checker9 <= s10;

      else
         y1 <= '1' ;
         y10 <= '1' ;
         current_checker9 <= s11;

      end if;

   when s6 =>
      if ( x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_checker9 <= s1;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         current_checker9 <= s1;

      end if;

   when s7 =>
      if ( x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      elsif ( not x9 and x7 ) = '1' then
         y7 <= '1' ;
         current_checker9 <= s7;

      else
         y3 <= '1' ;
         y7 <= '1' ;
         current_checker9 <= s2;

      end if;

   when s8 =>
      if ( x9 ) = '1' then
         y1 <= '1' ;
         current_checker9 <= s4;

      else
         y7 <= '1' ;
         current_checker9 <= s3;

      end if;

   when s9 =>
      if ( x8 and x9 and x6 ) = '1' then
         y1 <= '1' ;
         y10 <= '1' ;
         current_checker9 <= s11;

      elsif ( x8 and x9 and not x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_checker9 <= s1;

      elsif ( x8 and not x9 and x6 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_checker9 <= s1;

      elsif ( x8 and not x9 and not x6 ) = '1' then
         y1 <= '1' ;
         y10 <= '1' ;
         current_checker9 <= s10;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_checker9 <= s5;

      end if;

   when s10 =>
      if ( x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_checker9 <= s1;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_checker9 <= s5;

      end if;

   when s11 =>
      if ( x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_checker9 <= s1;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_checker9 <= s5;

      end if;

   end case;
   end proc_checker9;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;
	current_checker9 <= s1;
      elsif (clk'event and clk ='1') then
        proc_checker9;
      end if;
   end process;
end ARC;
