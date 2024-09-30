library ieee;
use ieee.std_logic_1164.all;

entity pilot is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x24,x25,x26,x27 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y11,y12,y13,y14,y15,y16,y17,
	y18,y19,y20,y21,y22 : out std_logic );
end pilot;

architecture ARC of pilot is

   type states_pilot is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18 );
   signal current_pilot : states_pilot;

begin
   process (clk , rst)
   procedure proc_pilot is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;	y14  <= '0' ;
	y15  <= '0' ;	y16  <= '0' ;	y17  <= '0' ;	y18  <= '0' ;
	y19  <= '0' ;	y20  <= '0' ;	y21  <= '0' ;	y22  <= '0' ;


   case current_pilot is
   when s1 =>
      if ( x1 and x25 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_pilot <= s2;

      elsif ( x1 and not x25 and x26 and x27 ) = '1' then
         y14 <= '1' ;
         current_pilot <= s3;

      elsif ( x1 and not x25 and x26 and not x27 and x2 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_pilot <= s4;

      elsif ( x1 and not x25 and x26 and not x27 and x2 and not x4 and x5 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s4;

      elsif ( x1 and not x25 and x26 and not x27 and x2 and not x4 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s5;

      elsif ( x1 and not x25 and x26 and not x27 and not x2 and x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_pilot <= s6;

      elsif ( x1 and not x25 and x26 and not x27 and not x2 and not x3 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_pilot <= s6;

      elsif ( x1 and not x25 and not x26 and x27 and x14 and x12 ) = '1' then
         y12 <= '1' ;
         current_pilot <= s7;

      elsif ( x1 and not x25 and not x26 and x27 and x14 and not x12 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      elsif ( x1 and not x25 and not x26 and x27 and not x14 and x15 and x12 ) = '1' then
         y12 <= '1' ;
         current_pilot <= s7;

      elsif ( x1 and not x25 and not x26 and x27 and not x14 and x15 and not x12 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      elsif ( x1 and not x25 and not x26 and x27 and not x14 and not x15 and x16 and x12 ) = '1' then
         y12 <= '1' ;
         current_pilot <= s7;

      elsif ( x1 and not x25 and not x26 and x27 and not x14 and not x15 and x16 and not x12 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      elsif ( x1 and not x25 and not x26 and x27 and not x14 and not x15 and not x16 ) = '1' then
         y19 <= '1' ;
         current_pilot <= s8;

      elsif ( x1 and not x25 and not x26 and not x27 and x12 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      elsif ( x1 and not x25 and not x26 and not x27 and not x12 ) = '1' then
         y16 <= '1' ;
         current_pilot <= s9;

      else
         current_pilot <= s1;

      end if;

   when s2 =>
         y12 <= '1' ;
         current_pilot <= s7;

   when s3 =>
      if ( x7 ) = '1' then
         y12 <= '1' ;
         current_pilot <= s7;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      end if;

   when s4 =>
         y6 <= '1' ;
         current_pilot <= s10;

   when s5 =>
      if ( x25 and x9 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      elsif ( x25 and not x9 ) = '1' then
         y13 <= '1' ;
         current_pilot <= s11;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      end if;

   when s6 =>
      if ( x2 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         current_pilot <= s4;

      elsif ( x2 and not x4 and x5 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s4;

      elsif ( x2 and not x4 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s5;

      elsif ( not x2 and x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_pilot <= s6;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_pilot <= s6;

      end if;

   when s7 =>
      if ( x25 and x7 ) = '1' then
         y16 <= '1' ;
         current_pilot <= s9;

      elsif ( x25 and not x7 ) = '1' then
         y12 <= '1' ;
         current_pilot <= s7;

      elsif ( not x25 and x26 and x7 ) = '1' then
         y12 <= '1' ;
         current_pilot <= s7;

      elsif ( not x25 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      elsif ( not x25 and not x26 and x12 ) = '1' then
         y12 <= '1' ;
         current_pilot <= s7;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      end if;

   when s8 =>
      if ( x17 and x18 and x19 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y17 <= '1' ;
         y20 <= '1' ;
         current_pilot <= s12;

      elsif ( x17 and x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( x17 and not x18 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      elsif ( not x17 and x18 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x17 and not x18 and x19 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      else
         y2 <= '1' ;
         current_pilot <= s8;

      end if;

   when s9 =>
      if ( x25 and x8 ) = '1' then
         y2 <= '1' ;
         y19 <= '1' ;
         current_pilot <= s13;

      elsif ( x25 and not x8 ) = '1' then
         y1 <= '1' ;
         y17 <= '1' ;
         current_pilot <= s13;

      elsif ( not x25 and x13 ) = '1' then
         y13 <= '1' ;
         current_pilot <= s11;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      end if;

   when s10 =>
      if ( x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s5;

      else
         y6 <= '1' ;
         current_pilot <= s10;

      end if;

   when s11 =>
      if ( x25 and x9 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      elsif ( x25 and not x9 ) = '1' then
         y13 <= '1' ;
         current_pilot <= s11;

      elsif ( not x25 and x13 ) = '1' then
         y13 <= '1' ;
         current_pilot <= s11;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_pilot <= s1;

      end if;

   when s12 =>
      if ( x20 and x17 and x18 and x19 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y17 <= '1' ;
         y20 <= '1' ;
         current_pilot <= s12;

      elsif ( x20 and x17 and x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( x20 and x17 and not x18 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      elsif ( x20 and not x17 and x18 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( x20 and not x17 and not x18 and x19 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      elsif ( x20 and not x17 and not x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and x22 and x17 and x18 and x19 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y17 <= '1' ;
         y20 <= '1' ;
         current_pilot <= s12;

      elsif ( not x20 and x22 and x17 and x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and x22 and x17 and not x18 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and x22 and not x17 and x18 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and x22 and not x17 and not x18 and x19 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and x22 and not x17 and not x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and not x22 and x21 and x17 and x18 and x19 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y17 <= '1' ;
         y20 <= '1' ;
         current_pilot <= s12;

      elsif ( not x20 and not x22 and x21 and x17 and x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and not x22 and x21 and x17 and not x18 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and not x22 and x21 and not x17 and x18 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and not x22 and x21 and not x17 and not x18 and x19 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and not x22 and x21 and not x17 and not x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s8;

      elsif ( not x20 and not x22 and not x21 and x2 and x24 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s5;

      elsif ( not x20 and not x22 and not x21 and x2 and x24 and not x3 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s14;

      elsif ( not x20 and not x22 and not x21 and x2 and not x24 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s14;

      elsif ( not x20 and not x22 and not x21 and not x2 and x24 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s14;

      elsif ( not x20 and not x22 and not x21 and not x2 and not x24 and x3 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s14;

      else
         y1 <= '1' ;
         current_pilot <= s14;

      end if;

   when s13 =>
         y21 <= '1' ;
         current_pilot <= s15;

   when s14 =>
      if ( x2 and x24 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s5;

      elsif ( x2 and x24 and not x3 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s14;

      elsif ( x2 and not x24 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s14;

      elsif ( not x2 and x24 ) = '1' then
         y1 <= '1' ;
         current_pilot <= s14;

      elsif ( not x2 and not x24 and x3 ) = '1' then
         y2 <= '1' ;
         current_pilot <= s14;

      else
         y1 <= '1' ;
         current_pilot <= s14;

      end if;

   when s15 =>
      if ( x9 and x10 ) = '1' then
         y21 <= '1' ;
         current_pilot <= s15;

      elsif ( x9 and not x10 and x8 ) = '1' then
         y5 <= '1' ;
         y20 <= '1' ;
         current_pilot <= s16;

      elsif ( x9 and not x10 and not x8 ) = '1' then
         y4 <= '1' ;
         y18 <= '1' ;
         current_pilot <= s17;

      else
         y13 <= '1' ;
         current_pilot <= s18;

      end if;

   when s16 =>
      if ( x11 ) = '1' then
         y1 <= '1' ;
         y22 <= '1' ;
         current_pilot <= s16;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s5;

      end if;

   when s17 =>
      if ( x11 ) = '1' then
         y2 <= '1' ;
         y22 <= '1' ;
         current_pilot <= s17;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         current_pilot <= s5;

      end if;

   when s18 =>
      if ( x10 ) = '1' then
         y21 <= '1' ;
         current_pilot <= s15;

      elsif ( not x10 and x8 ) = '1' then
         y5 <= '1' ;
         y20 <= '1' ;
         current_pilot <= s16;

      else
         y4 <= '1' ;
         y18 <= '1' ;
         current_pilot <= s17;

      end if;

   end case;
   end proc_pilot;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;	y14  <= '0' ;
	y15  <= '0' ;	y16  <= '0' ;	y17  <= '0' ;	y18  <= '0' ;
	y19  <= '0' ;	y20  <= '0' ;	y21  <= '0' ;	y22  <= '0' ;

	current_pilot <= s1;
      elsif (clk'event and clk ='1') then
        proc_pilot;
      end if;
   end process;
end ARC;
