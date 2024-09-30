library ieee;
use ieee.std_logic_1164.all;

entity lightnew is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14 : out std_logic );
end lightnew;

architecture ARC of lightnew is

   type states_lightnew is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19 );
   signal current_lightnew : states_lightnew;

begin
   process (clk , rst)
   procedure proc_lightnew is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;

   case current_lightnew is
   when s1 =>
      if ( x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_lightnew <= s2;

      else
         current_lightnew <= s1;

      end if;

   when s2 =>
      if ( x2 ) = '1' then
         y8 <= '1' ;
         current_lightnew <= s3;

      elsif ( not x2 and x7 ) = '1' then
         y4 <= '1' ;
         current_lightnew <= s4;

      elsif ( not x2 and not x7 and x1 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_lightnew <= s5;

      elsif ( not x2 and not x7 and not x1 and x8 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         current_lightnew <= s6;

      else
         current_lightnew <= s2;

      end if;

   when s3 =>
         y4 <= '1' ;
         current_lightnew <= s4;

   when s4 =>
      if ( x1 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_lightnew <= s5;

      else
         y11 <= '1' ;
         y13 <= '1' ;
         current_lightnew <= s7;

      end if;

   when s5 =>
         y4 <= '1' ;
         current_lightnew <= s8;

   when s6 =>
         y4 <= '1' ;
         current_lightnew <= s9;

   when s7 =>
      if ( x3 and x5 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         current_lightnew <= s6;

      elsif ( x3 and not x5 and x2 and x6 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         current_lightnew <= s6;

      elsif ( x3 and not x5 and x2 and not x6 ) = '1' then
         current_lightnew <= s7;

      elsif ( x3 and not x5 and not x2 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         current_lightnew <= s6;

      elsif ( not x3 and x2 and x5 ) = '1' then
         y7 <= '1' ;
         current_lightnew <= s10;

      elsif ( not x3 and x2 and not x5 ) = '1' then
         current_lightnew <= s7;

      else
         y4 <= '1' ;
         current_lightnew <= s4;

      end if;

   when s8 =>
         y11 <= '1' ;
         current_lightnew <= s11;

   when s9 =>
         y11 <= '1' ;
         current_lightnew <= s12;

   when s10 =>
         y11 <= '1' ;
         y14 <= '1' ;
         current_lightnew <= s13;

   when s11 =>
      if ( x3 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_lightnew <= s14;

      elsif ( x3 and x4 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_lightnew <= s14;

      elsif ( x3 and not x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_lightnew <= s2;

      else
         y4 <= '1' ;
         current_lightnew <= s8;

      end if;

   when s12 =>
      if ( x3 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_lightnew <= s14;

      elsif ( x3 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_lightnew <= s14;

      else
         y4 <= '1' ;
         current_lightnew <= s9;

      end if;

   when s13 =>
      if ( x3 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         current_lightnew <= s6;

      else
         y4 <= '1' ;
         current_lightnew <= s4;

      end if;

   when s14 =>
         y4 <= '1' ;
         current_lightnew <= s15;

   when s15 =>
      if ( x1 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_lightnew <= s5;

      else
         y11 <= '1' ;
         y12 <= '1' ;
         current_lightnew <= s16;

      end if;

   when s16 =>
      if ( x3 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y10 <= '1' ;
         current_lightnew <= s17;

      else
         y4 <= '1' ;
         current_lightnew <= s15;

      end if;

   when s17 =>
         y4 <= '1' ;
         current_lightnew <= s18;

   when s18 =>
         y11 <= '1' ;
         current_lightnew <= s19;

   when s19 =>
      if ( x3 ) = '1' then
         current_lightnew <= s1;

      else
         y4 <= '1' ;
         current_lightnew <= s18;

      end if;

   end case;
   end proc_lightnew;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;
	current_lightnew <= s1;
      elsif (clk'event and clk ='1') then
        proc_lightnew;
      end if;
   end process;
end ARC;
