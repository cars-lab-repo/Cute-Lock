library ieee;
use ieee.std_logic_1164.all;

entity e17 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17 : out std_logic );
end e17;

architecture ARC of e17 is

   type states_e17 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11 );
   signal current_e17 : states_e17;

begin
   process (clk , rst)
   procedure proc_e17 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;

   case current_e17 is
   when s1 =>
      if ( x7 and x8 and x1 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_e17 <= s2;

      elsif ( x7 and x8 and x1 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      elsif ( x7 and x8 and x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      elsif ( x7 and x8 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e17 <= s4;

      elsif ( x7 and not x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_e17 <= s5;

      elsif ( not x7 and x1 and x8 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_e17 <= s6;

      elsif ( not x7 and x1 and x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      elsif ( not x7 and x1 and not x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e17 <= s4;

      elsif ( not x7 and not x1 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e17 <= s4;

      elsif ( not x7 and not x1 and not x8 and x2 ) = '1' then
         y5 <= '1' ;
         current_e17 <= s7;

      else
         y4 <= '1' ;
         current_e17 <= s7;

      end if;

   when s2 =>
      if ( x4 ) = '1' then
         y16 <= '1' ;
         current_e17 <= s8;

      else
         current_e17 <= s2;

      end if;

   when s3 =>
      if ( x7 and x8 and x4 and x3 ) = '1' then
         y6 <= '1' ;
         current_e17 <= s9;

      elsif ( x7 and x8 and x4 and not x3 ) = '1' then
         y5 <= '1' ;
         current_e17 <= s7;

      elsif ( x7 and x8 and not x4 ) = '1' then
         current_e17 <= s3;

      elsif ( x7 and not x8 ) = '1' then
         current_e17 <= s1;

      elsif ( not x7 and x8 and x4 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_e17 <= s5;

      elsif ( not x7 and x8 and x4 and not x3 ) = '1' then
         y5 <= '1' ;
         current_e17 <= s7;

      elsif ( not x7 and x8 and not x4 ) = '1' then
         current_e17 <= s3;

      else
         current_e17 <= s1;

      end if;

   when s4 =>
      if ( x2 and x8 ) = '1' then
         y4 <= '1' ;
         current_e17 <= s7;

      elsif ( x2 and not x8 ) = '1' then
         y5 <= '1' ;
         current_e17 <= s7;

      else
         y4 <= '1' ;
         current_e17 <= s7;

      end if;

   when s5 =>
      if ( x7 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_e17 <= s4;

      elsif ( x7 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         current_e17 <= s7;

      elsif ( x7 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_e17 <= s7;

      elsif ( not x7 and x2 and x6 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_e17 <= s2;

      elsif ( not x7 and x2 and not x6 ) = '1' then
         y13 <= '1' ;
         current_e17 <= s9;

      else
         current_e17 <= s5;

      end if;

   when s6 =>
      if ( x2 and x6 ) = '1' then
         y1 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_e17 <= s2;

      elsif ( x2 and not x6 ) = '1' then
         y13 <= '1' ;
         current_e17 <= s9;

      else
         current_e17 <= s6;

      end if;

   when s7 =>
      if ( x7 and x8 and x3 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         current_e17 <= s2;

      elsif ( x7 and x8 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      elsif ( x7 and x8 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      elsif ( x7 and not x8 and x1 ) = '1' then
         y1 <= '1' ;
         current_e17 <= s10;

      elsif ( x7 and not x8 and not x1 and x3 ) = '1' then
         current_e17 <= s1;

      elsif ( x7 and not x8 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      elsif ( not x7 and x8 and x5 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         current_e17 <= s6;

      elsif ( not x7 and x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      elsif ( not x7 and not x8 and x1 ) = '1' then
         y1 <= '1' ;
         current_e17 <= s10;

      elsif ( not x7 and not x8 and not x1 and x3 ) = '1' then
         current_e17 <= s1;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      end if;

   when s8 =>
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_e17 <= s11;

   when s9 =>
         y16 <= '1' ;
         current_e17 <= s8;

   when s10 =>
      if ( x3 ) = '1' then
         current_e17 <= s1;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_e17 <= s3;

      end if;

   when s11 =>
      if ( x4 ) = '1' then
         y12 <= '1' ;
         current_e17 <= s1;

      else
         current_e17 <= s11;

      end if;

   end case;
   end proc_e17;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;
	current_e17 <= s1;
      elsif (clk'event and clk ='1') then
        proc_e17;
      end if;
   end process;
end ARC;
