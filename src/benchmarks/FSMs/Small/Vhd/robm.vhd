library ieee;
use ieee.std_logic_1164.all;

entity robm is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10 : out std_logic );
end robm;

architecture ARC of robm is

   type states_robm is ( s1,s2,s3,s4,s5,s6,s7 );
   signal current_robm : states_robm;

begin
   process (clk , rst)
   procedure proc_robm is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;

   case current_robm is
   when s1 =>
      if ( x1 and x11 and x12 ) = '1' then
         y4 <= '1' ;
         current_robm <= s2;

      elsif ( x1 and x11 and not x12 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_robm <= s3;

      elsif ( x1 and not x11 and x12 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_robm <= s4;

      elsif ( x1 and not x11 and x12 and not x8 and x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_robm <= s4;

      elsif ( x1 and not x11 and x12 and not x8 and not x5 and x6 ) = '1' then
         y10 <= '1' ;
         current_robm <= s5;

      elsif ( x1 and not x11 and x12 and not x8 and not x5 and not x6 ) = '1' then
         y4 <= '1' ;
         current_robm <= s2;

      elsif ( x1 and not x11 and not x12 and x10 and x9 ) = '1' then
         y10 <= '1' ;
         current_robm <= s5;

      elsif ( x1 and not x11 and not x12 and x10 and not x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_robm <= s4;

      elsif ( x1 and not x11 and not x12 and not x10 and x9 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_robm <= s4;

      elsif ( x1 and not x11 and not x12 and not x10 and not x9 ) = '1' then
         y4 <= '1' ;
         current_robm <= s2;

      else
         current_robm <= s1;

      end if;

   when s2 =>
         y5 <= '1' ;
         current_robm <= s1;

   when s3 =>
         y6 <= '1' ;
         current_robm <= s6;

   when s4 =>
      if ( x4 ) = '1' then
         y4 <= '1' ;
         current_robm <= s2;

      else
         current_robm <= s4;

      end if;

   when s5 =>
      if ( x12 ) = '1' then
         y2 <= '1' ;
         y9 <= '1' ;
         current_robm <= s7;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         current_robm <= s4;

      end if;

   when s6 =>
      if ( x2 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_robm <= s4;

      elsif ( x2 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_robm <= s4;

      else
         y4 <= '1' ;
         current_robm <= s2;

      end if;

   when s7 =>
      if ( x7 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_robm <= s4;

      else
         current_robm <= s7;

      end if;

   end case;
   end proc_robm;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;
	current_robm <= s1;
      elsif (clk'event and clk ='1') then
        proc_robm;
      end if;
   end process;
end ARC;
