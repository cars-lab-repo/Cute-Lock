library ieee;
use ieee.std_logic_1164.all;

entity lcu is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15
	 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y21,y22,y23,y24 : out std_logic );
end lcu;

architecture ARC of lcu is

   type states_lcu is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22 );
   signal current_lcu : states_lcu;

begin
   process (clk , rst)
   procedure proc_lcu is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y21  <= '0' ;
	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;

   case current_lcu is
   when s1 =>
      if ( x15 and x1 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lcu <= s2;

      elsif ( x15 and not x1 ) = '1' then
         y1 <= '1' ;
         current_lcu <= s3;

      else
         y1 <= '1' ;
         current_lcu <= s3;

      end if;

   when s2 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_lcu <= s4;

      elsif ( not x15 and x5 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         current_lcu <= s4;

      end if;

   when s3 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_lcu <= s4;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lcu <= s7;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lcu <= s2;

      else
         current_lcu <= s3;

      end if;

   when s4 =>
      if ( x15 ) = '1' then
         y10 <= '1' ;
         current_lcu <= s8;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lcu <= s7;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lcu <= s2;

      else
         current_lcu <= s4;

      end if;

   when s5 =>
      if ( x15 ) = '1' then
         current_lcu <= s1;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         current_lcu <= s9;

      else
         y10 <= '1' ;
         current_lcu <= s8;

      end if;

   when s6 =>
      if ( x15 and x13 ) = '1' then
         y12 <= '1' ;
         current_lcu <= s10;

      elsif ( x15 and not x13 ) = '1' then
         y16 <= '1' ;
         current_lcu <= s11;

      elsif ( not x15 and x12 ) = '1' then
         y16 <= '1' ;
         current_lcu <= s11;

      else
         current_lcu <= s6;

      end if;

   when s7 =>
      if ( x15 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         current_lcu <= s9;

      else
         y10 <= '1' ;
         current_lcu <= s8;

      end if;

   when s8 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         current_lcu <= s9;

      elsif ( not x15 and x8 ) = '1' then
         y12 <= '1' ;
         current_lcu <= s10;

      elsif ( not x15 and not x8 and x9 ) = '1' then
         y12 <= '1' ;
         current_lcu <= s10;

      elsif ( not x15 and not x8 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         current_lcu <= s9;

      elsif ( not x15 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         current_lcu <= s8;

      elsif ( not x15 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      else
         current_lcu <= s8;

      end if;

   when s9 =>
      if ( x15 and x2 and x3 and x11 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_lcu <= s13;

      elsif ( x15 and x2 and x3 and not x11 and x4 and x12 and x13 ) = '1' then
         y11 <= '1' ;
         y13 <= '1' ;
         current_lcu <= s14;

      elsif ( x15 and x2 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_lcu <= s9;

      elsif ( x15 and x2 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_lcu <= s9;

      elsif ( x15 and x2 and x3 and not x11 and not x4 ) = '1' then
         current_lcu <= s9;

      elsif ( x15 and x2 and not x3 and x4 and x11 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lcu <= s15;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_lcu <= s16;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and x12 and not x13 ) = '1' then
         y3 <= '1' ;
         current_lcu <= s17;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s18;

      elsif ( x15 and x2 and not x3 and not x4 and x5 and x6 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( x15 and x2 and not x3 and not x4 and x5 and not x6 and x7 and x8 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( x15 and x2 and not x3 and not x4 and x5 and not x6 and x7 and not x8 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( x15 and x2 and not x3 and not x4 and x5 and not x6 and not x7 and x8 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( x15 and x2 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and x6 and x7 and x9 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and x6 and x7 and not x9 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and x6 and not x7 and x9 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( x15 and x2 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( x15 and not x2 ) = '1' then
         current_lcu <= s9;

      elsif ( not x15 and x7 ) = '1' then
         y12 <= '1' ;
         current_lcu <= s10;

      elsif ( not x15 and not x7 and x9 ) = '1' then
         y12 <= '1' ;
         current_lcu <= s10;

      elsif ( not x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         current_lcu <= s9;

      elsif ( not x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         current_lcu <= s8;

      elsif ( not x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      else
         current_lcu <= s9;

      end if;

   when s10 =>
      if ( x15 ) = '1' then
         current_lcu <= s1;

      elsif ( not x15 and x11 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( not x15 and not x11 and x10 ) = '1' then
         y11 <= '1' ;
         y13 <= '1' ;
         current_lcu <= s14;

      else
         current_lcu <= s10;

      end if;

   when s11 =>
      if ( x15 ) = '1' then
         current_lcu <= s1;

      elsif ( not x15 and x13 and x4 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lcu <= s7;

      elsif ( not x15 and x13 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lcu <= s2;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      else
         current_lcu <= s11;

      end if;

   when s12 =>
      if ( x15 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lcu <= s7;

      else
         current_lcu <= s1;

      end if;

   when s13 =>
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lcu <= s15;

   when s14 =>
      if ( x12 and x15 and x13 and x3 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_lcu <= s16;

      elsif ( x12 and x15 and x13 and not x3 and x14 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_lcu <= s16;

      elsif ( x12 and x15 and x13 and not x3 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( x12 and x15 and not x13 ) = '1' then
         y3 <= '1' ;
         current_lcu <= s17;

      elsif ( x12 and not x15 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s18;

      else
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s18;

      end if;

   when s15 =>
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_lcu <= s1;

   when s16 =>
         y11 <= '1' ;
         y24 <= '1' ;
         current_lcu <= s19;

   when s17 =>
      if ( x15 and x14 ) = '1' then
         y4 <= '1' ;
         current_lcu <= s20;

      elsif ( x15 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s6;

      elsif ( not x15 and x12 ) = '1' then
         y16 <= '1' ;
         current_lcu <= s21;

      else
         current_lcu <= s17;

      end if;

   when s18 =>
      if ( x15 ) = '1' then
         y16 <= '1' ;
         current_lcu <= s21;

      elsif ( not x15 and x6 ) = '1' then
         y4 <= '1' ;
         current_lcu <= s20;

      else
         y3 <= '1' ;
         current_lcu <= s17;

      end if;

   when s19 =>
         y12 <= '1' ;
         y14 <= '1' ;
         current_lcu <= s22;

   when s20 =>
      if ( x15 ) = '1' then
         y11 <= '1' ;
         y24 <= '1' ;
         current_lcu <= s19;

      elsif ( not x15 and x12 ) = '1' then
         y16 <= '1' ;
         current_lcu <= s21;

      else
         current_lcu <= s20;

      end if;

   when s21 =>
      if ( x15 ) = '1' then
         current_lcu <= s1;

      elsif ( not x15 and x13 and x11 ) = '1' then
         y6 <= '1' ;
         current_lcu <= s12;

      elsif ( not x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         current_lcu <= s7;

      elsif ( not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_lcu <= s2;

      elsif ( not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         current_lcu <= s5;

      elsif ( not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_lcu <= s4;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s18;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s18;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s18;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_lcu <= s21;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         current_lcu <= s18;

      else
         current_lcu <= s21;

      end if;

   when s22 =>
      if ( x14 and x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_lcu <= s1;

      elsif ( x14 and not x13 ) = '1' then
         y16 <= '1' ;
         current_lcu <= s21;

      else
         y12 <= '1' ;
         current_lcu <= s10;

      end if;

   end case;
   end proc_lcu;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y21  <= '0' ;
	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	current_lcu <= s1;
      elsif (clk'event and clk ='1') then
        proc_lcu;
      end if;
   end process;
end ARC;
