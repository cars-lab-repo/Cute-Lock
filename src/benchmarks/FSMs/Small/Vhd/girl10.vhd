library ieee;
use ieee.std_logic_1164.all;

entity girl10 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7 : in std_logic;
        y1,y2,y3,y4,y6,y7,y8,y9,y10 : out std_logic );
end girl10;

architecture ARC of girl10 is

   type states_girl10 is ( s1,s2,s3,s4,s5,s6 );
   signal current_girl10 : states_girl10;

begin
   process (clk , rst)
   procedure proc_girl10 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;	y9   <= '0' ;
	y10  <= '0' ;

   case current_girl10 is
   when s1 =>
      if ( x6 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         current_girl10 <= s2;

      elsif ( not x6 and x7 ) = '1' then
         y6 <= '1' ;
         current_girl10 <= s3;

      else
         y3 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_girl10 <= s3;

      end if;

   when s2 =>
      if ( x4 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_girl10 <= s2;

      elsif ( x4 and not x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_girl10 <= s4;

      else
         y4 <= '1' ;
         current_girl10 <= s5;

      end if;

   when s3 =>
      if ( x1 and x2 and x3 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_girl10 <= s2;

      elsif ( x1 and x2 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         current_girl10 <= s6;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_girl10 <= s2;

      else
         y4 <= '1' ;
         current_girl10 <= s5;

      end if;

   when s4 =>
      if ( x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         current_girl10 <= s3;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         current_girl10 <= s4;

      end if;

   when s5 =>
      if ( x5 ) = '1' then
         current_girl10 <= s1;

      elsif ( not x5 and x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         current_girl10 <= s2;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         current_girl10 <= s4;

      end if;

   when s6 =>
         y3 <= '1' ;
         y4 <= '1' ;
         current_girl10 <= s4;

   end case;
   end proc_girl10;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;	y9   <= '0' ;
	y10  <= '0' ;
	current_girl10 <= s1;
      elsif (clk'event and clk ='1') then
        proc_girl10;
      end if;
   end process;
end ARC;
