library ieee;
use ieee.std_logic_1164.all;

entity e2 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18 : out std_logic );
end e2;

architecture ARC of e2 is

   type states_e2 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18 );
   signal current_e2 : states_e2;

begin
   process (clk , rst)
   procedure proc_e2 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;

   case current_e2 is
   when s1 =>
      if ( x10 and x39 and x36 and x35 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s2;

      elsif ( x10 and x39 and x36 and not x35 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( x10 and x39 and not x36 and x43 and x42 and x40 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( x10 and x39 and not x36 and x43 and x42 and not x40 ) = '1' then
         y6 <= '1' ;
         current_e2 <= s5;

      elsif ( x10 and x39 and not x36 and x43 and not x42 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( x10 and x39 and not x36 and not x43 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s6;

      elsif ( x10 and not x39 ) = '1' then
         y15 <= '1' ;
         current_e2 <= s7;

      elsif ( not x10 and x11 and x34 and x8 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      elsif ( not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      elsif ( not x10 and x11 and not x34 and x32 and not x7 and x22 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( not x10 and x11 and not x34 and x32 and not x7 and x22 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x10 and x11 and not x34 and x32 and not x7 and not x22 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s6;

      elsif ( not x10 and x11 and not x34 and not x32 ) = '1' then
         y5 <= '1' ;
         current_e2 <= s9;

      elsif ( not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s6;

      elsif ( not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      elsif ( not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      elsif ( not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y16 <= '1' ;
         current_e2 <= s12;

      elsif ( not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s6;

      else
         y6 <= '1' ;
         current_e2 <= s5;

      end if;

   when s2 =>
      if ( x29 and x41 ) = '1' then
         y10 <= '1' ;
         current_e2 <= s13;

      elsif ( x29 and not x41 ) = '1' then
         current_e2 <= s2;

      elsif ( not x29 and x14 ) = '1' then
         current_e2 <= s1;

      else
         y4 <= '1' ;
         current_e2 <= s3;

      end if;

   when s3 =>
      if ( x16 and x22 and x27 and x29 and x15 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e2 <= s14;

      elsif ( x16 and x22 and x27 and x29 and not x15 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      elsif ( x16 and x22 and x27 and not x29 and x33 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      elsif ( x16 and x22 and x27 and not x29 and not x33 and x18 ) = '1' then
         y5 <= '1' ;
         current_e2 <= s9;

      elsif ( x16 and x22 and x27 and not x29 and not x33 and not x18 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      elsif ( x16 and x22 and not x27 ) = '1' then
         current_e2 <= s3;

      elsif ( x16 and not x22 ) = '1' then
         current_e2 <= s1;

      elsif ( not x16 and x37 and x21 and x1 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      elsif ( not x16 and x37 and x21 and not x1 ) = '1' then
         current_e2 <= s3;

      elsif ( not x16 and x37 and not x21 ) = '1' then
         current_e2 <= s1;

      elsif ( not x16 and not x37 and x25 ) = '1' then
         current_e2 <= s1;

      elsif ( not x16 and not x37 and not x25 and x4 and x5 ) = '1' then
         y8 <= '1' ;
         y17 <= '1' ;
         current_e2 <= s15;

      elsif ( not x16 and not x37 and not x25 and x4 and not x5 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      else
         current_e2 <= s3;

      end if;

   when s4 =>
      if ( x3 ) = '1' then
         y14 <= '1' ;
         current_e2 <= s16;

      elsif ( not x3 and x2 ) = '1' then
         y10 <= '1' ;
         current_e2 <= s13;

      elsif ( not x3 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      else
         y3 <= '1' ;
         current_e2 <= s10;

      end if;

   when s5 =>
      if ( x31 and x19 and x10 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e2 <= s17;

      elsif ( x31 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_e2 <= s18;

      elsif ( x31 and not x19 ) = '1' then
         current_e2 <= s5;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_e2 <= s18;

      end if;

   when s6 =>
      if ( x26 and x42 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      elsif ( x26 and not x42 and x15 and x40 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      elsif ( x26 and not x42 and x15 and not x40 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      elsif ( x26 and not x42 and not x15 and x34 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      elsif ( x26 and not x42 and not x15 and not x34 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      else
         y2 <= '1' ;
         current_e2 <= s11;

      end if;

   when s7 =>
      if ( x35 ) = '1' then
         current_e2 <= s1;

      elsif ( not x35 and x13 ) = '1' then
         y16 <= '1' ;
         current_e2 <= s12;

      else
         y8 <= '1' ;
         y17 <= '1' ;
         current_e2 <= s15;

      end if;

   when s8 =>
      if ( x8 and x26 ) = '1' then
         y14 <= '1' ;
         current_e2 <= s16;

      elsif ( x8 and not x26 and x37 ) = '1' then
         current_e2 <= s1;

      elsif ( x8 and not x26 and not x37 ) = '1' then
         y14 <= '1' ;
         current_e2 <= s16;

      elsif ( not x8 and x40 ) = '1' then
         y14 <= '1' ;
         current_e2 <= s16;

      elsif ( not x8 and not x40 and x37 ) = '1' then
         current_e2 <= s1;

      else
         y14 <= '1' ;
         current_e2 <= s16;

      end if;

   when s9 =>
      if ( x17 and x19 and x10 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e2 <= s17;

      elsif ( x17 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_e2 <= s18;

      elsif ( x17 and not x19 ) = '1' then
         current_e2 <= s9;

      elsif ( not x17 and x20 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s6;

      elsif ( not x17 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      else
         y2 <= '1' ;
         current_e2 <= s11;

      end if;

   when s10 =>
      if ( x40 and x24 and x5 and x36 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s2;

      elsif ( x40 and x24 and x5 and not x36 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( x40 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( x40 and not x24 and x31 and x29 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( x40 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( x40 and not x24 and not x31 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( not x40 and x11 and x35 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( not x40 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x40 and x11 and not x35 and x14 ) = '1' then
         current_e2 <= s1;

      elsif ( not x40 and x11 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x40 and not x11 and x30 and x35 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s2;

      elsif ( not x40 and not x11 and x30 and not x35 and x14 ) = '1' then
         current_e2 <= s1;

      elsif ( not x40 and not x11 and x30 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x40 and not x11 and not x30 and x3 and x6 ) = '1' then
         y16 <= '1' ;
         current_e2 <= s12;

      elsif ( not x40 and not x11 and not x30 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      else
         y4 <= '1' ;
         current_e2 <= s3;

      end if;

   when s11 =>
      if ( x13 and x23 and x42 and x40 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( x13 and x23 and x42 and not x40 ) = '1' then
         y6 <= '1' ;
         current_e2 <= s5;

      elsif ( x13 and x23 and not x42 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( x13 and not x23 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( not x13 and x28 and x35 and x5 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         current_e2 <= s4;

      elsif ( not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x13 and x28 and not x35 and x14 ) = '1' then
         current_e2 <= s1;

      elsif ( not x13 and x28 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x13 and not x28 and x6 and x35 ) = '1' then
         y1 <= '1' ;
         current_e2 <= s2;

      elsif ( not x13 and not x28 and x6 and not x35 and x14 ) = '1' then
         current_e2 <= s1;

      elsif ( not x13 and not x28 and x6 and not x35 and not x14 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x13 and not x28 and not x6 and x39 and x3 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      elsif ( not x13 and not x28 and not x6 and x39 and not x3 ) = '1' then
         y4 <= '1' ;
         current_e2 <= s3;

      else
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e2 <= s17;

      end if;

   when s12 =>
      if ( x17 ) = '1' then
         y8 <= '1' ;
         y17 <= '1' ;
         current_e2 <= s15;

      elsif ( not x17 and x18 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      else
         current_e2 <= s12;

      end if;

   when s13 =>
      if ( x37 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      elsif ( not x37 and x9 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      else
         y14 <= '1' ;
         current_e2 <= s16;

      end if;

   when s14 =>
      if ( x41 ) = '1' then
         y10 <= '1' ;
         current_e2 <= s13;

      else
         current_e2 <= s14;

      end if;

   when s15 =>
      if ( x37 and x28 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      elsif ( x37 and not x28 ) = '1' then
         y3 <= '1' ;
         current_e2 <= s10;

      else
         y13 <= '1' ;
         current_e2 <= s8;

      end if;

   when s16 =>
      if ( x43 and x3 and x23 ) = '1' then
         y15 <= '1' ;
         current_e2 <= s7;

      elsif ( x43 and x3 and not x23 ) = '1' then
         current_e2 <= s16;

      elsif ( x43 and not x3 ) = '1' then
         current_e2 <= s1;

      elsif ( not x43 and x2 and x23 ) = '1' then
         y15 <= '1' ;
         current_e2 <= s7;

      elsif ( not x43 and x2 and not x23 ) = '1' then
         current_e2 <= s16;

      else
         current_e2 <= s1;

      end if;

   when s17 =>
      if ( x28 and x18 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      elsif ( x28 and not x18 ) = '1' then
         current_e2 <= s17;

      elsif ( not x28 and x27 and x8 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      elsif ( not x28 and x27 and not x8 and x37 ) = '1' then
         current_e2 <= s1;

      elsif ( not x28 and x27 and not x8 and not x37 ) = '1' then
         y14 <= '1' ;
         current_e2 <= s16;

      elsif ( not x28 and not x27 and x41 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      else
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e2 <= s17;

      end if;

   when s18 =>
      if ( x38 ) = '1' then
         y13 <= '1' ;
         current_e2 <= s8;

      elsif ( not x38 and x41 ) = '1' then
         y2 <= '1' ;
         current_e2 <= s11;

      else
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_e2 <= s17;

      end if;

   end case;
   end proc_e2;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;
	current_e2 <= s1;
      elsif (clk'event and clk ='1') then
        proc_e2;
      end if;
   end process;
end ARC;
