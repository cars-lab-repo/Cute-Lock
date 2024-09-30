library ieee;
use ieee.std_logic_1164.all;

entity ex6 is
   port ( clk,rst,x1,x2,x3,x4,x5 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8 : out std_logic );
end ex6;

architecture ARC of ex6 is

   type states_ex6 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10 );
   signal current_ex6 : states_ex6;

begin
   process (clk , rst)
   procedure proc_ex6 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;


   case current_ex6 is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s3;

      elsif ( not x1 and x2 ) = '1' then
         current_ex6 <= s1;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_ex6 <= s4;

      end if;

   when s2 =>
      if ( x2 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s2;

      elsif ( x2 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         current_ex6 <= s5;

      elsif ( not x2 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s3;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s4;

      end if;

   when s3 =>
      if ( x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s6;

      elsif ( not x3 and x1 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s2;

      elsif ( not x3 and x1 and not x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s3;

      elsif ( not x3 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s5;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_ex6 <= s4;

      end if;

   when s4 =>
      if ( x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_ex6 <= s7;

      elsif ( not x3 and x1 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s2;

      elsif ( not x3 and x1 and not x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s3;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_ex6 <= s4;

      end if;

   when s5 =>
      if ( x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s4;

      elsif ( not x5 and x2 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s8;

      elsif ( not x5 and x2 and not x1 ) = '1' then
         y3 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s5;

      elsif ( not x5 and not x2 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s9;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s4;

      end if;

   when s6 =>
      if ( x3 and x1 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s2;

      elsif ( x3 and x1 and not x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s6;

      elsif ( x3 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         current_ex6 <= s5;

      elsif ( x3 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_ex6 <= s4;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_ex6 <= s4;

      end if;

   when s7 =>
      if ( x3 and x1 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         current_ex6 <= s10;

      elsif ( x3 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         current_ex6 <= s10;

      elsif ( x3 and not x1 and not x4 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_ex6 <= s7;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_ex6 <= s4;

      end if;

   when s8 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s2;

   when s9 =>
         y3 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s3;

   when s10 =>
      if ( x3 and x1 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s2;

      elsif ( x3 and x1 and not x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         current_ex6 <= s6;

      elsif ( x3 and not x1 ) = '1' then
         y1 <= '1' ;
         y6 <= '1' ;
         current_ex6 <= s1;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_ex6 <= s4;

      end if;

   end case;
   end proc_ex6;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;

	current_ex6 <= s1;
      elsif (clk'event and clk ='1') then
        proc_ex6;
      end if;
   end process;
end ARC;
