library ieee;
use ieee.std_logic_1164.all;

entity robotben is
   port ( clk,rst,x1,x2,x3,x4,x5 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43 : out std_logic );
end robotben;

architecture ARC of robotben is

   type states_robotben is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47 );
   signal current_robotben : states_robotben;

begin
   process (clk , rst)
   procedure proc_robotben is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;	y32  <= '0' ;
	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;	y36  <= '0' ;
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;	y40  <= '0' ;
	y41  <= '0' ;	y42  <= '0' ;	y43  <= '0' ;

   case current_robotben is
   when s1 =>
      if ( x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_robotben <= s2;

      else
         current_robotben <= s1;

      end if;

   when s2 =>
         y17 <= '1' ;
         current_robotben <= s3;

   when s3 =>
         y34 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_robotben <= s4;

   when s4 =>
      if ( x1 ) = '1' then
         y12 <= '1' ;
         current_robotben <= s5;

      else
         y17 <= '1' ;
         current_robotben <= s3;

      end if;

   when s5 =>
      if ( x3 ) = '1' then
         y16 <= '1' ;
         current_robotben <= s6;

      else
         current_robotben <= s5;

      end if;

   when s6 =>
      if ( x3 ) = '1' then
         y16 <= '1' ;
         current_robotben <= s6;

      else
         y1 <= '1' ;
         current_robotben <= s7;

      end if;

   when s7 =>
         y34 <= '1' ;
         y42 <= '1' ;
         current_robotben <= s8;

   when s8 =>
      if ( x1 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_robotben <= s9;

      else
         y29 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_robotben <= s10;

      end if;

   when s9 =>
         y17 <= '1' ;
         current_robotben <= s11;

   when s10 =>
         y33 <= '1' ;
         current_robotben <= s12;

   when s11 =>
         y34 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_robotben <= s13;

   when s12 =>
         y34 <= '1' ;
         y37 <= '1' ;
         current_robotben <= s14;

   when s13 =>
      if ( x1 ) = '1' then
         y12 <= '1' ;
         current_robotben <= s15;

      else
         y17 <= '1' ;
         current_robotben <= s11;

      end if;

   when s14 =>
      if ( x1 ) = '1' then
         y28 <= '1' ;
         current_robotben <= s16;

      else
         y33 <= '1' ;
         current_robotben <= s12;

      end if;

   when s15 =>
      if ( x3 ) = '1' then
         y16 <= '1' ;
         current_robotben <= s17;

      else
         current_robotben <= s15;

      end if;

   when s16 =>
      if ( x2 ) = '1' then
         y32 <= '1' ;
         current_robotben <= s18;

      else
         current_robotben <= s16;

      end if;

   when s17 =>
      if ( x3 ) = '1' then
         y16 <= '1' ;
         current_robotben <= s17;

      else
         y1 <= '1' ;
         current_robotben <= s19;

      end if;

   when s18 =>
      if ( x2 ) = '1' then
         y32 <= '1' ;
         current_robotben <= s18;

      else
         y23 <= '1' ;
         current_robotben <= s20;

      end if;

   when s19 =>
         y6 <= '1' ;
         current_robotben <= s21;

   when s20 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y21 <= '1' ;
         current_robotben <= s22;

   when s21 =>
         y34 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_robotben <= s23;

   when s22 =>
         y8 <= '1' ;
         y9 <= '1' ;
         current_robotben <= s24;

   when s23 =>
      if ( x1 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_robotben <= s25;

      else
         y34 <= '1' ;
         y35 <= '1' ;
         current_robotben <= s26;

      end if;

   when s24 =>
         y26 <= '1' ;
         y27 <= '1' ;
         current_robotben <= s27;

   when s25 =>
         y26 <= '1' ;
         y27 <= '1' ;
         current_robotben <= s28;

   when s26 =>
      if ( x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         current_robotben <= s25;

      else
         y34 <= '1' ;
         current_robotben <= s29;

      end if;

   when s27 =>
         y34 <= '1' ;
         y43 <= '1' ;
         current_robotben <= s30;

   when s28 =>
         y34 <= '1' ;
         y43 <= '1' ;
         current_robotben <= s31;

   when s29 =>
      if ( x1 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         current_robotben <= s25;

      else
         y7 <= '1' ;
         current_robotben <= s32;

      end if;

   when s30 =>
      if ( x1 ) = '1' then
         y25 <= '1' ;
         current_robotben <= s33;

      else
         y24 <= '1' ;
         current_robotben <= s34;

      end if;

   when s31 =>
      if ( x1 ) = '1' then
         y25 <= '1' ;
         current_robotben <= s35;

      else
         y24 <= '1' ;
         current_robotben <= s36;

      end if;

   when s32 =>
      if ( x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_robotben <= s1;

      else
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_robotben <= s9;

      end if;

   when s33 =>
         y11 <= '1' ;
         y34 <= '1' ;
         y43 <= '1' ;
         current_robotben <= s37;

   when s34 =>
         y25 <= '1' ;
         current_robotben <= s33;

   when s35 =>
         y11 <= '1' ;
         y34 <= '1' ;
         y43 <= '1' ;
         current_robotben <= s38;

   when s36 =>
         y25 <= '1' ;
         current_robotben <= s35;

   when s37 =>
      if ( x1 ) = '1' then
         y34 <= '1' ;
         y43 <= '1' ;
         current_robotben <= s30;

      else
         y29 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_robotben <= s39;

      end if;

   when s38 =>
      if ( x1 ) = '1' then
         y34 <= '1' ;
         y43 <= '1' ;
         current_robotben <= s31;

      elsif ( not x1 and x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_robotben <= s1;

      else
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_robotben <= s9;

      end if;

   when s39 =>
         y33 <= '1' ;
         current_robotben <= s40;

   when s40 =>
         y34 <= '1' ;
         y37 <= '1' ;
         current_robotben <= s41;

   when s41 =>
      if ( x1 ) = '1' then
         y28 <= '1' ;
         current_robotben <= s42;

      else
         y33 <= '1' ;
         current_robotben <= s40;

      end if;

   when s42 =>
      if ( x2 ) = '1' then
         y32 <= '1' ;
         current_robotben <= s43;

      else
         current_robotben <= s42;

      end if;

   when s43 =>
      if ( x2 ) = '1' then
         y32 <= '1' ;
         current_robotben <= s43;

      else
         y22 <= '1' ;
         current_robotben <= s44;

      end if;

   when s44 =>
         y39 <= '1' ;
         current_robotben <= s45;

   when s45 =>
         y34 <= '1' ;
         y36 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_robotben <= s46;

   when s46 =>
      if ( x1 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_robotben <= s47;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y21 <= '1' ;
         current_robotben <= s22;

      end if;

   when s47 =>
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_robotben <= s2;

   end case;
   end proc_robotben;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;	y32  <= '0' ;
	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;	y36  <= '0' ;
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;	y40  <= '0' ;
	y41  <= '0' ;	y42  <= '0' ;	y43  <= '0' ;
	current_robotben <= s1;
      elsif (clk'event and clk ='1') then
        proc_robotben;
      end if;
   end process;
end ARC;
