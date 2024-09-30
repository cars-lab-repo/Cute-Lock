library ieee;
use ieee.std_logic_1164.all;

entity dmac is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26 : out std_logic );
end dmac;

architecture ARC of dmac is

   type states_dmac is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30
	 );
   signal current_dmac : states_dmac;

begin
   process (clk , rst)
   procedure proc_dmac is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;

   case current_dmac is
   when s1 =>
      if ( x7 ) = '1' then
         current_dmac <= s1;

      elsif ( not x7 and x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_dmac <= s2;

      else
         current_dmac <= s1;

      end if;

   when s2 =>
      if ( x5 ) = '1' then
         current_dmac <= s2;

      elsif ( not x5 and x3 and x2 and x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_dmac <= s3;

      elsif ( not x5 and x3 and x2 and not x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y22 <= '1' ;
         current_dmac <= s4;

      elsif ( not x5 and x3 and not x2 and x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_dmac <= s5;

      elsif ( not x5 and x3 and not x2 and not x1 ) = '1' then
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s6;

      elsif ( not x5 and not x3 and x2 and x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_dmac <= s7;

      elsif ( not x5 and not x3 and x2 and not x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_dmac <= s8;

      elsif ( not x5 and not x3 and not x2 and x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_dmac <= s9;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y13 <= '1' ;
         current_dmac <= s10;

      end if;

   when s3 =>
      if ( x8 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s11;

      else
         current_dmac <= s3;

      end if;

   when s4 =>
      if ( x8 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s12;

      else
         current_dmac <= s4;

      end if;

   when s5 =>
      if ( x8 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s13;

      else
         current_dmac <= s5;

      end if;

   when s6 =>
      if ( x8 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s2;

      elsif ( x8 and x4 and not x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s14;

      elsif ( x8 and not x4 ) = '1' then
         y3 <= '1' ;
         current_dmac <= s1;

      else
         current_dmac <= s6;

      end if;

   when s7 =>
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_dmac <= s15;

   when s8 =>
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_dmac <= s16;

   when s9 =>
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_dmac <= s17;

   when s10 =>
      if ( x8 and x5 and x7 ) = '1' then
         y3 <= '1' ;
         current_dmac <= s1;

      elsif ( x8 and x5 and not x7 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s2;

      elsif ( x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s18;

      else
         current_dmac <= s10;

      end if;

   when s11 =>
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s19;

   when s12 =>
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y17 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_dmac <= s20;

   when s13 =>
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s21;

   when s14 =>
      if ( x2 and x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_dmac <= s3;

      elsif ( x2 and not x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y22 <= '1' ;
         current_dmac <= s4;

      elsif ( not x2 and x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_dmac <= s5;

      else
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s6;

      end if;

   when s15 =>
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_dmac <= s22;

   when s16 =>
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_dmac <= s23;

   when s17 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_dmac <= s24;

   when s18 =>
      if ( x2 and x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_dmac <= s7;

      elsif ( x2 and not x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_dmac <= s8;

      elsif ( not x2 and x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_dmac <= s9;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y13 <= '1' ;
         current_dmac <= s10;

      end if;

   when s19 =>
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y15 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s21;

   when s20 =>
      if ( x8 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s25;

      else
         current_dmac <= s20;

      end if;

   when s21 =>
      if ( x4 and x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s2;

      elsif ( x4 and not x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s14;

      else
         y3 <= '1' ;
         current_dmac <= s1;

      end if;

   when s22 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_dmac <= s26;

   when s23 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_dmac <= s27;

   when s24 =>
      if ( x8 and x5 and x7 ) = '1' then
         y3 <= '1' ;
         current_dmac <= s1;

      elsif ( x8 and x5 and not x7 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s2;

      elsif ( x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s18;

      else
         current_dmac <= s24;

      end if;

   when s25 =>
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s28;

   when s26 =>
      if ( x8 and x5 and x7 ) = '1' then
         y3 <= '1' ;
         current_dmac <= s1;

      elsif ( x8 and x5 and not x7 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s2;

      elsif ( x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s18;

      else
         current_dmac <= s26;

      end if;

   when s27 =>
      if ( x8 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s29;

      else
         current_dmac <= s27;

      end if;

   when s28 =>
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y15 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_dmac <= s21;

   when s29 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_dmac <= s30;

   when s30 =>
      if ( x8 and x5 and x7 ) = '1' then
         y3 <= '1' ;
         current_dmac <= s1;

      elsif ( x8 and x5 and not x7 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s2;

      elsif ( x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_dmac <= s18;

      else
         current_dmac <= s30;

      end if;

   end case;
   end proc_dmac;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;
	current_dmac <= s1;
      elsif (clk'event and clk ='1') then
        proc_dmac;
      end if;
   end process;
end ARC;
