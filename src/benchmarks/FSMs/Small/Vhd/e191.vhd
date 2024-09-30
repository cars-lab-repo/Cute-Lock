library ieee;
use ieee.std_logic_1164.all;

entity e191 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11 : out std_logic );
end e191;

architecture ARC of e191 is

   type states_e191 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11 );
   signal current_e191 : states_e191;

begin
   process (clk , rst)
   procedure proc_e191 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;

   case current_e191 is
   when s1 =>
      if ( x9 and x16 and x8 ) = '1' then
         y10 <= '1' ;
         current_e191 <= s2;

      elsif ( x9 and x16 and not x8 and x5 ) = '1' then
         y7 <= '1' ;
         current_e191 <= s2;

      elsif ( x9 and x16 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e191 <= s3;

      elsif ( x9 and not x16 ) = '1' then
         y5 <= '1' ;
         current_e191 <= s4;

      elsif ( not x9 and x10 and x5 ) = '1' then
         y1 <= '1' ;
         current_e191 <= s5;

      elsif ( not x9 and x10 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e191 <= s3;

      elsif ( not x9 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         current_e191 <= s6;

      elsif ( not x9 and not x10 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_e191 <= s7;

      else
         y2 <= '1' ;
         current_e191 <= s8;

      end if;

   when s2 =>
         y8 <= '1' ;
         current_e191 <= s9;

   when s3 =>
      if ( x7 and x9 and x8 ) = '1' then
         y3 <= '1' ;
         current_e191 <= s7;

      elsif ( x7 and x9 and not x8 ) = '1' then
         current_e191 <= s3;

      elsif ( x7 and not x9 ) = '1' then
         current_e191 <= s1;

      elsif ( not x7 and x6 and x4 and x13 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         current_e191 <= s10;

      elsif ( not x7 and x6 and x4 and not x13 ) = '1' then
         y3 <= '1' ;
         current_e191 <= s7;

      elsif ( not x7 and x6 and not x4 ) = '1' then
         current_e191 <= s3;

      else
         current_e191 <= s1;

      end if;

   when s4 =>
      if ( x1 ) = '1' then
         y1 <= '1' ;
         current_e191 <= s6;

      elsif ( not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_e191 <= s7;

      else
         y2 <= '1' ;
         current_e191 <= s8;

      end if;

   when s5 =>
      if ( x12 and x15 ) = '1' then
         y6 <= '1' ;
         current_e191 <= s11;

      elsif ( x12 and not x15 ) = '1' then
         current_e191 <= s5;

      elsif ( not x12 and x3 ) = '1' then
         current_e191 <= s1;

      else
         y4 <= '1' ;
         current_e191 <= s3;

      end if;

   when s6 =>
      if ( x2 ) = '1' then
         y3 <= '1' ;
         current_e191 <= s7;

      else
         y2 <= '1' ;
         current_e191 <= s8;

      end if;

   when s7 =>
      if ( x16 and x14 and x5 ) = '1' then
         y7 <= '1' ;
         current_e191 <= s2;

      elsif ( x16 and x14 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e191 <= s3;

      elsif ( x16 and not x14 and x11 ) = '1' then
         y1 <= '1' ;
         current_e191 <= s5;

      elsif ( x16 and not x14 and not x11 and x3 ) = '1' then
         current_e191 <= s1;

      elsif ( x16 and not x14 and not x11 and not x3 ) = '1' then
         y4 <= '1' ;
         current_e191 <= s3;

      elsif ( not x16 and x11 and x5 ) = '1' then
         y1 <= '1' ;
         current_e191 <= s5;

      elsif ( not x16 and x11 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e191 <= s3;

      elsif ( not x16 and not x11 and x3 ) = '1' then
         current_e191 <= s1;

      else
         y4 <= '1' ;
         current_e191 <= s3;

      end if;

   when s8 =>
      if ( x11 ) = '1' then
         y1 <= '1' ;
         current_e191 <= s5;

      elsif ( not x11 and x3 ) = '1' then
         current_e191 <= s1;

      else
         y4 <= '1' ;
         current_e191 <= s3;

      end if;

   when s9 =>
      if ( x4 ) = '1' then
         y9 <= '1' ;
         current_e191 <= s1;

      else
         current_e191 <= s9;

      end if;

   when s10 =>
      if ( x15 ) = '1' then
         y6 <= '1' ;
         current_e191 <= s11;

      else
         current_e191 <= s10;

      end if;

   when s11 =>
         y10 <= '1' ;
         current_e191 <= s2;

   end case;
   end proc_e191;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;
	current_e191 <= s1;
      elsif (clk'event and clk ='1') then
        proc_e191;
      end if;
   end process;
end ARC;
