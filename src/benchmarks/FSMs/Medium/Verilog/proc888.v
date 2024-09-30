module proc888 ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45;

parameter s1=0, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54, s55=55, s56=56, s57=57, s58=58, s59=59, s60=60,
	s61=61, s62=62, s63=63, s64=64, s65=65, s66=66, s67=67, s68=68, s69=69, s70=70,
	s71=71, s72=72, s73=73, s74=74;
integer pr_state;
integer nx_state;

always@ ( posedge rst or negedge clk )
begin
	if ( rst == 1'b1 )
		pr_state = s1;
	else
		pr_state = nx_state;
end

always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y23 = 1'b0;	y24 = 1'b0;	
			y25 = 1'b0;	y26 = 1'b0;	y27 = 1'b0;	y28 = 1'b0;	
			y29 = 1'b0;	y30 = 1'b0;	y31 = 1'b0;	y32 = 1'b0;	
			y33 = 1'b0;	y34 = 1'b0;	y35 = 1'b0;	y36 = 1'b0;	
			y37 = 1'b0;	y38 = 1'b0;	y39 = 1'b0;	y40 = 1'b0;	
			y41 = 1'b0;	y42 = 1'b0;	y43 = 1'b0;	y44 = 1'b0;	
			y45 = 1'b0;	
		case ( pr_state )
				s1 : if( x6 && x5 && x20 && x19 )
						begin
							y40 = 1'b1;	y18 = 1'b1;	y9 = 1'b1;	
							y8 = 1'b1;	y25 = 1'b1;	
							nx_state = s2;
						end
					else if( x6 && x5 && x20 && ~x19 )
						begin
							y40 = 1'b1;	y8 = 1'b1;	y43 = 1'b1;	
							nx_state = s3;
						end
					else if( x6 && x5 && ~x20 && x19 )
						begin
							y40 = 1'b1;	y8 = 1'b1;	y18 = 1'b1;	
							y9 = 1'b1;	y45 = 1'b1;	
							nx_state = s4;
						end
					else if( x6 && x5 && ~x20 && ~x19 )
						begin
							y40 = 1'b1;	y9 = 1'b1;	y2 = 1'b1;	
							y43 = 1'b1;	
							nx_state = s5;
						end
					else if( x6 && ~x5 && x4 )
						begin
							y6 = 1'b1;	y40 = 1'b1;	y18 = 1'b1;	
							y1 = 1'b1;	y8 = 1'b1;	
							nx_state = s6;
						end
					else if( x6 && ~x5 && ~x4 )
						begin
							y11 = 1'b1;	y40 = 1'b1;	y2 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y18 = 1'b1;	y9 = 1'b1;	y1 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y44 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y18 = 1'b1;	y9 = 1'b1;	y1 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y2 = 1'b1;	y44 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y18 = 1'b1;	y1 = 1'b1;	y2 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y11 = 1'b1;	y40 = 1'b1;	y34 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s13;
				s14 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y18 = 1'b1;	y1 = 1'b1;	y25 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s16;
				s17 : if( x12 && x14 && x13 && x16 )
						begin
							y33 = 1'b1;	
							nx_state = s19;
						end
					else if( x12 && x14 && x13 && ~x16 )
						begin
							y32 = 1'b1;	
							nx_state = s19;
						end
					else if( x12 && x14 && ~x13 )
						begin
							y1 = 1'b1;	y21 = 1'b1;	y7 = 1'b1;	
							nx_state = s20;
						end
					else if( x12 && ~x14 && x15 && x13 && x16 )
						begin
							y1 = 1'b1;	y21 = 1'b1;	y7 = 1'b1;	
							nx_state = s20;
						end
					else if( x12 && ~x14 && x15 && x13 && ~x16 )
						begin
							y18 = 1'b1;	y9 = 1'b1;	y2 = 1'b1;	
							y16 = 1'b1;	y10 = 1'b1;	y7 = 1'b1;	
							y8 = 1'b1;	y29 = 1'b1;	
							nx_state = s21;
						end
					else if( x12 && ~x14 && x15 && ~x13 )
						begin
							y1 = 1'b1;	y21 = 1'b1;	y7 = 1'b1;	
							nx_state = s20;
						end
					else if( x12 && ~x14 && ~x15 && x13 && x16 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && ~x14 && ~x15 && x13 && x16 && ~x11 && x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x14 && ~x15 && x13 && x16 && ~x11 && x18 && ~x10 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && x13 && x16 && ~x11 && ~x18 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && ~x10 && x18 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && ~x10 && x18 && ~x11 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && ~x10 && ~x18 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && ~x13 && x3 )
						begin
							y11 = 1'b1;	y40 = 1'b1;	y2 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s23;
						end
					else if( x12 && ~x14 && ~x15 && ~x13 && ~x3 && x16 && x2 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s24;
						end
					else if( x12 && ~x14 && ~x15 && ~x13 && ~x3 && x16 && ~x2 )
						begin
							y1 = 1'b1;	y21 = 1'b1;	y7 = 1'b1;	
							nx_state = s20;
						end
					else if( x12 && ~x14 && ~x15 && ~x13 && ~x3 && ~x16 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && x3 )
						begin
							y11 = 1'b1;	y40 = 1'b1;	y2 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x12 && ~x3 && x13 && x15 && x16 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && x9 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && x8 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && x7 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x3 && ~x13 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s18;
				s19 : if( x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x18 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y21 = 1'b1;	y22 = 1'b1;	y9 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y18 = 1'b1;	y1 = 1'b1;	y2 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y24 = 1'b1;	y10 = 1'b1;	y34 = 1'b1;	
							y8 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y11 = 1'b1;	y40 = 1'b1;	y34 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y24 = 1'b1;	y10 = 1'b1;	y34 = 1'b1;	
							y8 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y18 = 1'b1;	y9 = 1'b1;	y1 = 1'b1;	
							y2 = 1'b1;	y16 = 1'b1;	y34 = 1'b1;	
							y33 = 1'b1;	y19 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s31;
				s32 : if( x13 )
						begin
							y30 = 1'b1;	y31 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 && x15 )
						begin
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x13 && ~x15 && x14 )
						begin
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x13 && ~x15 && ~x14 )
						begin
							y41 = 1'b1;	y9 = 1'b1;	y21 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y24 = 1'b1;	y18 = 1'b1;	y22 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s35;
				s36 : if( x12 && x16 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s40;
						end
					else if( x12 && ~x16 && x2 )
						begin
							y6 = 1'b1;	y9 = 1'b1;	y21 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s41;
						end
					else if( x12 && ~x16 && ~x2 )
						begin
							y21 = 1'b1;	y22 = 1'b1;	y9 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x12 && x13 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x12 && ~x13 && x2 && x14 )
						begin
							y6 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x12 && ~x13 && x2 && ~x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x12 && ~x13 && ~x2 && x14 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x12 && ~x13 && ~x2 && ~x14 )
						begin
							y1 = 1'b1;	y10 = 1'b1;	y4 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y9 = 1'b1;	y2 = 1'b1;	y21 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s38;
				s39 : if( x12 && x1 && x16 && x2 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s48;
						end
					else if( x12 && x1 && x16 && ~x2 && x17 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y8 = 1'b1;	
							y21 = 1'b1;	y25 = 1'b1;	
							nx_state = s41;
						end
					else if( x12 && x1 && x16 && ~x2 && ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else if( x12 && x1 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s47;
						end
					else if( x12 && ~x1 && x2 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s48;
						end
					else if( x12 && ~x1 && ~x2 && x17 && x16 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y8 = 1'b1;	
							y21 = 1'b1;	y25 = 1'b1;	
							nx_state = s41;
						end
					else if( x12 && ~x1 && ~x2 && x17 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s49;
						end
					else if( x12 && ~x1 && ~x2 && ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x12 && x13 && x15 && x16 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y26 = 1'b1;	y27 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x1 && x2 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x1 && ~x2 && x17 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y26 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x1 && ~x2 && ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y26 = 1'b1;	y27 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x1 && x2 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x1 && ~x2 && x17 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y26 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x1 && ~x2 && ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && ~x18 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && x16 && x8 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y26 = 1'b1;	y27 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x1 && x2 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x1 && ~x2 && x17 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y26 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x1 && ~x2 && ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && ~x18 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y26 = 1'b1;	y27 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x1 && x2 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x1 && ~x2 && x17 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y26 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x1 && ~x2 && ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x18 && x10 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x13 && x1 && x14 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x12 && ~x13 && x1 && ~x14 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x12 && ~x13 && ~x1 && x2 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x12 && ~x13 && ~x1 && ~x2 && x17 && x14 )
						begin
							y11 = 1'b1;	y9 = 1'b1;	y7 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x12 && ~x13 && ~x1 && ~x2 && x17 && ~x14 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x12 && ~x13 && ~x1 && ~x2 && ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s39;
				s40 : if( x12 )
						begin
							y1 = 1'b1;	y21 = 1'b1;	y7 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x12 )
						begin
							y4 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s40;
				s41 : if( 1'b1 )
						begin
							y17 = 1'b1;	y23 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y9 = 1'b1;	y2 = 1'b1;	y7 = 1'b1;	
							y8 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y1 = 1'b1;	y21 = 1'b1;	y7 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s44;
				s45 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y24 = 1'b1;	y18 = 1'b1;	y22 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s46;
				s47 : if( x12 )
						begin
							y21 = 1'b1;	y22 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x12 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s48;
				s49 : if( 1'b1 )
						begin
							y6 = 1'b1;	y9 = 1'b1;	y21 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s49;
				s50 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s51;
				s52 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s52;
				s53 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s53;
				s54 : if( x16 )
						begin
							y24 = 1'b1;	y1 = 1'b1;	y25 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x16 )
						begin
							y24 = 1'b1;	y22 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s54;
				s55 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s55;
				s56 : if( 1'b1 )
						begin
							y21 = 1'b1;	y22 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s56;
				s57 : if( 1'b1 )
						begin
							y24 = 1'b1;	y16 = 1'b1;	y22 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s57;
				s58 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s58;
				s59 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s59;
				s60 : if( x13 )
						begin
							y27 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 )
						begin
							y8 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s60;
				s61 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s61;
				s62 : if( 1'b1 )
						begin
							y24 = 1'b1;	y10 = 1'b1;	y34 = 1'b1;	
							y8 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s62;
				s63 : if( 1'b1 )
						begin
							y24 = 1'b1;	y10 = 1'b1;	y34 = 1'b1;	
							y8 = 1'b1;	
							nx_state = s69;
						end
					else nx_state = s63;
				s64 : if( x14 )
						begin
							y18 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y10 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x14 )
						begin
							y1 = 1'b1;	y21 = 1'b1;	y7 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s64;
				s65 : if( 1'b1 )
						begin
							y24 = 1'b1;	y18 = 1'b1;	y22 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s65;
				s66 : if( 1'b1 )
						begin
							y18 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y10 = 1'b1;	y36 = 1'b1;	y37 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s66;
				s67 : if( 1'b1 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s67;
				s68 : if( 1'b1 )
						begin
							y38 = 1'b1;	y39 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s68;
				s69 : if( x12 )
						begin
							y9 = 1'b1;	y25 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x12 )
						begin
							y6 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s69;
				s70 : if( x17 && x12 && x16 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y8 = 1'b1;	
							y21 = 1'b1;	y25 = 1'b1;	
							nx_state = s41;
						end
					else if( x17 && x12 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s49;
						end
					else if( x17 && ~x12 && x13 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y26 = 1'b1;	
							nx_state = s50;
						end
					else if( x17 && ~x12 && ~x13 && x14 )
						begin
							y11 = 1'b1;	y9 = 1'b1;	y7 = 1'b1;	
							nx_state = s50;
						end
					else if( x17 && ~x12 && ~x13 && ~x14 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x17 )
						begin
							y41 = 1'b1;	y1 = 1'b1;	y21 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s70;
				s71 : if( 1'b1 )
						begin
							y9 = 1'b1;	y1 = 1'b1;	y2 = 1'b1;	
							y3 = 1'b1;	y10 = 1'b1;	y34 = 1'b1;	
							y36 = 1'b1;	y37 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s71;
				s72 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s72;
				s73 : if( x12 && x16 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y8 = 1'b1;	
							y21 = 1'b1;	y25 = 1'b1;	
							nx_state = s41;
						end
					else if( x12 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x12 && x13 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y26 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x12 && ~x13 && x14 )
						begin
							y11 = 1'b1;	y9 = 1'b1;	y7 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x12 && ~x13 && ~x14 )
						begin
							y11 = 1'b1;	y8 = 1'b1;	y4 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s73;
				s74 : if( 1'b1 )
						begin
							y25 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s74;

			default : nx_state = 0;
		endcase
	end
endmodule
