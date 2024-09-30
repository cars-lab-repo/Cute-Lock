module klain ( clk,rst,
	x1, x2, x3, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x20, x21, x22, x23, x24, x25, x26, x27, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30, y32, y34, y37, y38, y39, y40, y41, y42, y44, y45,
	y46, y47, y48, y49, y50, y53, y54, y55, y56, y57, y58, y59, y60,
	y61);

input clk, rst, x1, x2, x3, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x20, x21, x22, x23, x24, x25, x26, x27;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30, y32, y34, y37, y38, y39, y40, y41, y42, y44, y45,
	y46, y47, y48, y49, y50, y53, y54, y55, y56, y57, y58, y59, y60,
	y61;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30, y32, y34, y37, y38, y39, y40, y41, y42, y44, y45,
	y46, y47, y48, y49, y50, y53, y54, y55, y56, y57, y58, y59, y60,
	y61;

parameter s1=0, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54;
integer pr_state;
integer nx_state;

always@ ( posedge rst or negedge clk )
begin
	if ( rst == 1'b1 )
		pr_state = s1;
	else
		pr_state = nx_state;
end

always@ ( pr_state or x1 or x2 or x3 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y20 = 1'b0;	y21 = 1'b0;	
			y22 = 1'b0;	y23 = 1'b0;	y24 = 1'b0;	y25 = 1'b0;	
			y26 = 1'b0;	y27 = 1'b0;	y28 = 1'b0;	y29 = 1'b0;	
			y30 = 1'b0;	y32 = 1'b0;	y34 = 1'b0;	y37 = 1'b0;	
			y38 = 1'b0;	y39 = 1'b0;	y40 = 1'b0;	y41 = 1'b0;	
			y42 = 1'b0;	y44 = 1'b0;	y45 = 1'b0;	y46 = 1'b0;	
			y47 = 1'b0;	y48 = 1'b0;	y49 = 1'b0;	y50 = 1'b0;	
			y53 = 1'b0;	y54 = 1'b0;	y55 = 1'b0;	y56 = 1'b0;	
			y57 = 1'b0;	y58 = 1'b0;	y59 = 1'b0;	y60 = 1'b0;	
			y61 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x2 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x1 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y5 = 1'b1;	
							y10 = 1'b1;	y16 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y3 = 1'b1;	y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y8 = 1'b1;	y10 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s9;
				s10 : if( x17 )
						begin
							y3 = 1'b1;	y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x17 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y5 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s13;
				s14 : if( 1'b1 )
						begin
							y10 = 1'b1;	y22 = 1'b1;	y23 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s14;
				s15 : if( x17 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x17 )
						begin
							y5 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s15;
				s16 : if( x18 && x26 && x14 && x27 && x6 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s20;
						end
					else if( x18 && x26 && x14 && x27 && x6 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s21;
						end
					else if( x18 && x26 && x14 && x27 && ~x6 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s17;
						end
					else if( x18 && x26 && x14 && x27 && ~x6 && ~x5 )
						begin
							y5 = 1'b1;	y14 = 1'b1;	y16 = 1'b1;	
							nx_state = s18;
						end
					else if( x18 && x26 && x14 && ~x27 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s19;
						end
					else if( x18 && x26 && x14 && ~x27 && ~x5 )
						begin
							y5 = 1'b1;	y14 = 1'b1;	y16 = 1'b1;	
							nx_state = s18;
						end
					else if( x18 && x26 && ~x14 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s20;
						end
					else if( x18 && x26 && ~x14 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s21;
						end
					else if( x18 && ~x26 && x27 && x14 && x5 )
						begin
							y50 = 1'b1;	
							nx_state = s22;
						end
					else if( x18 && ~x26 && x27 && x14 && ~x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s17;
						end
					else if( x18 && ~x26 && x27 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s20;
						end
					else if( x18 && ~x26 && ~x27 && x6 && x7 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x26 && ~x27 && x6 && x7 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x26 && ~x27 && x6 && x7 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && x6 && x7 && x22 && ~x23 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && x6 && x7 && ~x22 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && x6 && ~x7 && x8 )
						begin
							y57 = 1'b1;	
							nx_state = s19;
						end
					else if( x18 && ~x26 && ~x27 && x6 && ~x7 && ~x8 )
						begin
							y56 = 1'b1;	
							nx_state = s19;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && x8 && x15 )
						begin
							y10 = 1'b1;	
							nx_state = s19;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && ~x23 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && ~x22 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && x16 )
						begin
							y10 = 1'b1;	
							nx_state = s19;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && ~x23 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && ~x22 )
						nx_state = s1;
					else if( x18 && ~x26 && ~x27 && ~x6 && ~x7 && x8 )
						begin
							y5 = 1'b1;	y44 = 1'b1;	y55 = 1'b1;	
							y60 = 1'b1;	
							nx_state = s19;
						end
					else if( x18 && ~x26 && ~x27 && ~x6 && ~x7 && ~x8 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y53 = 1'b1;	
							y54 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x18 )
						begin
							y5 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s16;
				s17 : if( x3 && x21 && x26 && x27 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && x26 && x27 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && x26 && x27 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x3 && x21 && x26 && x27 && x22 && ~x23 )
						nx_state = s1;
					else if( x3 && x21 && x26 && x27 && ~x22 )
						nx_state = s1;
					else if( x3 && x21 && x26 && ~x27 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s6;
						end
					else if( x3 && x21 && ~x26 && x6 && x7 && x8 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && x6 && x7 && x8 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && x6 && x7 && x8 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && x6 && x7 && x8 && x22 && ~x23 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && x6 && x7 && x8 && ~x22 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && x6 && x7 && ~x8 )
						begin
							y11 = 1'b1;	
							nx_state = s8;
						end
					else if( x3 && x21 && ~x26 && x6 && ~x7 && x8 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y42 = 1'b1;	
							nx_state = s24;
						end
					else if( x3 && x21 && ~x26 && x6 && ~x7 && ~x8 && x11 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x3 && x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && ~x23 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && ~x22 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && ~x6 && x7 && x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x3 && x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && ~x23 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && ~x22 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && ~x6 && x7 && ~x8 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x3 && x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && ~x23 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && ~x22 )
						nx_state = s1;
					else if( x3 && x21 && ~x26 && ~x6 && ~x7 && x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x3 && x21 && ~x26 && ~x6 && ~x7 && ~x8 )
						begin
							y49 = 1'b1;	
							nx_state = s25;
						end
					else if( x3 && ~x21 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y16 = 1'b1;	y24 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s17;
				s18 : if( x26 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x26 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x26 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x26 && x22 && ~x23 )
						nx_state = s1;
					else if( x26 && ~x22 )
						nx_state = s1;
					else if( ~x26 && x12 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && x12 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && x12 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x26 && x12 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x26 && x12 && ~x22 )
						nx_state = s1;
					else if( ~x26 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s18;
				s19 : if( x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x22 && ~x23 )
						nx_state = s1;
					else if( ~x22 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( x26 && x27 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s28;
						end
					else if( x26 && ~x27 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x26 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x26 && ~x12 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && ~x12 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && ~x12 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x26 && ~x12 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x26 && ~x12 && ~x22 )
						nx_state = s1;
					else nx_state = s20;
				s21 : if( x27 && x6 && x7 && x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y48 = 1'b1;	
							nx_state = s19;
						end
					else if( x27 && x6 && x7 && ~x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y47 = 1'b1;	
							nx_state = s19;
						end
					else if( x27 && x6 && ~x7 && x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s19;
						end
					else if( x27 && x6 && ~x7 && ~x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y46 = 1'b1;	
							nx_state = s19;
						end
					else if( x27 && ~x6 && x7 && x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	y44 = 1'b1;	
							nx_state = s19;
						end
					else if( x27 && ~x6 && x7 && ~x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	y44 = 1'b1;	
							nx_state = s19;
						end
					else if( x27 && ~x6 && ~x7 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	y44 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x27 && x7 && x6 && x8 )
						begin
							y37 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x27 && x7 && x6 && ~x8 )
						begin
							y39 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x27 && x7 && ~x6 && x13 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x27 && x7 && ~x6 && x13 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x27 && x7 && ~x6 && x13 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x27 && x7 && ~x6 && x13 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x27 && x7 && ~x6 && x13 && ~x22 )
						nx_state = s1;
					else if( ~x27 && x7 && ~x6 && ~x13 && x3 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x27 && x7 && ~x6 && ~x13 && x3 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x27 && x7 && ~x6 && ~x13 && x3 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x27 && x7 && ~x6 && ~x13 && x3 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x27 && x7 && ~x6 && ~x13 && x3 && ~x22 )
						nx_state = s1;
					else if( ~x27 && x7 && ~x6 && ~x13 && ~x3 )
						begin
							y5 = 1'b1;	y34 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x27 && ~x7 && x6 && x8 )
						begin
							y40 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x27 && ~x7 && x6 && ~x8 )
						begin
							y18 = 1'b1;	y41 = 1'b1;	y42 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x27 && ~x7 && ~x6 && x8 )
						begin
							y5 = 1'b1;	y17 = 1'b1;	y32 = 1'b1;	
							y42 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x27 && ~x7 && ~x6 && ~x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y32 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y5 = 1'b1;	y14 = 1'b1;	y16 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s22;
				s23 : if( x13 )
						begin
							y61 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x13 && x26 && x14 && x27 && x6 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x13 && x26 && x14 && x27 && x6 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x13 && x26 && x14 && x27 && ~x6 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x13 && x26 && x14 && x27 && ~x6 && ~x5 )
						begin
							y5 = 1'b1;	y14 = 1'b1;	y16 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x13 && x26 && x14 && ~x27 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 && x26 && x14 && ~x27 && ~x5 )
						begin
							y5 = 1'b1;	y14 = 1'b1;	y16 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x13 && x26 && ~x14 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x13 && x26 && ~x14 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x13 && ~x26 && x27 && x14 && x5 )
						begin
							y50 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x13 && ~x26 && x27 && x14 && ~x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x13 && ~x26 && x27 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x13 && ~x26 && ~x27 && x6 && x7 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && ~x26 && ~x27 && x6 && x7 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && ~x26 && ~x27 && x6 && x7 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && x6 && x7 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && x6 && x7 && ~x22 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && x6 && ~x7 && x8 )
						begin
							y57 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 && ~x26 && ~x27 && x6 && ~x7 && ~x8 )
						begin
							y56 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && x8 && x15 )
						begin
							y10 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && x8 && ~x15 && ~x22 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && x16 )
						begin
							y10 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && ~x6 && x7 && ~x8 && ~x16 && ~x22 )
						nx_state = s1;
					else if( ~x13 && ~x26 && ~x27 && ~x6 && ~x7 && x8 )
						begin
							y5 = 1'b1;	y44 = 1'b1;	y55 = 1'b1;	
							y60 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x13 && ~x26 && ~x27 && ~x6 && ~x7 && ~x8 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y53 = 1'b1;	
							y54 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s25;
				s26 : if( x26 && x27 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x26 && x27 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x26 && x27 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x26 && x27 && x22 && ~x23 )
						nx_state = s1;
					else if( x26 && x27 && ~x22 )
						nx_state = s1;
					else if( x26 && ~x27 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x26 && x6 && x7 && x8 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && x6 && x7 && x8 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && x6 && x7 && x8 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x26 && x6 && x7 && x8 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x26 && x6 && x7 && x8 && ~x22 )
						nx_state = s1;
					else if( ~x26 && x6 && x7 && ~x8 )
						begin
							y11 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x26 && x6 && ~x7 && x8 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y42 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x26 && x6 && ~x7 && ~x8 && x11 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x26 && x6 && ~x7 && ~x8 && ~x11 && ~x22 )
						nx_state = s1;
					else if( ~x26 && ~x6 && x7 && x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x26 && ~x6 && x7 && x8 && ~x9 && ~x22 )
						nx_state = s1;
					else if( ~x26 && ~x6 && x7 && ~x8 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x26 && ~x6 && x7 && ~x8 && ~x10 && ~x22 )
						nx_state = s1;
					else if( ~x26 && ~x6 && ~x7 && x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x26 && ~x6 && ~x7 && ~x8 )
						begin
							y49 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y25 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y25 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s28;
				s29 : if( x8 )
						begin
							y5 = 1'b1;	y17 = 1'b1;	y32 = 1'b1;	
							y42 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x8 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x8 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x8 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( ~x8 && x22 && ~x23 )
						nx_state = s1;
					else if( ~x8 && ~x22 )
						nx_state = s1;
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y26 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y26 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y30 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s34;
				s35 : if( x17 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y18 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x17 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s37;
				s38 : if( x17 )
						begin
							y24 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x17 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y30 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s38;
				s39 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s39;
				s40 : if( x17 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y16 = 1'b1;	y27 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x17 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s40;
				s41 : if( x17 )
						begin
							y24 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x17 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y18 = 1'b1;	y27 = 1'b1;	y29 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s42;
				s43 : if( x20 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x20 )
						begin
							y26 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y16 = 1'b1;	y27 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s44;
				s45 : if( x20 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x20 && x22 && ~x23 )
						nx_state = s1;
					else if( x20 && ~x22 )
						nx_state = s1;
					else if( ~x20 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s45;
				s46 : if( x21 && x26 && x27 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x26 && x27 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x26 && x27 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x21 && x26 && x27 && x22 && ~x23 )
						nx_state = s1;
					else if( x21 && x26 && x27 && ~x22 )
						nx_state = s1;
					else if( x21 && x26 && ~x27 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s6;
						end
					else if( x21 && ~x26 && x6 && x7 && x8 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && x6 && x7 && x8 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && x6 && x7 && x8 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x21 && ~x26 && x6 && x7 && x8 && x22 && ~x23 )
						nx_state = s1;
					else if( x21 && ~x26 && x6 && x7 && x8 && ~x22 )
						nx_state = s1;
					else if( x21 && ~x26 && x6 && x7 && ~x8 )
						begin
							y11 = 1'b1;	
							nx_state = s8;
						end
					else if( x21 && ~x26 && x6 && ~x7 && x8 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y42 = 1'b1;	
							nx_state = s24;
						end
					else if( x21 && ~x26 && x6 && ~x7 && ~x8 && x11 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && x22 && ~x23 )
						nx_state = s1;
					else if( x21 && ~x26 && x6 && ~x7 && ~x8 && ~x11 && ~x22 )
						nx_state = s1;
					else if( x21 && ~x26 && ~x6 && x7 && x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && x22 && ~x23 )
						nx_state = s1;
					else if( x21 && ~x26 && ~x6 && x7 && x8 && ~x9 && ~x22 )
						nx_state = s1;
					else if( x21 && ~x26 && ~x6 && x7 && ~x8 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && x22 && ~x23 )
						nx_state = s1;
					else if( x21 && ~x26 && ~x6 && x7 && ~x8 && ~x10 && ~x22 )
						nx_state = s1;
					else if( x21 && ~x26 && ~x6 && ~x7 && x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x26 && ~x6 && ~x7 && ~x8 )
						begin
							y49 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x21 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s46;
				s47 : if( x20 && x26 && x27 && x6 && x7 && x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y48 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && x26 && x27 && x6 && x7 && ~x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y47 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && x26 && x27 && x6 && ~x7 && x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && x26 && x27 && x6 && ~x7 && ~x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y46 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && x26 && x27 && ~x6 && x7 && x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	y44 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && x26 && x27 && ~x6 && x7 && ~x8 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	y44 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && x26 && x27 && ~x6 && ~x7 )
						begin
							y5 = 1'b1;	y32 = 1'b1;	y41 = 1'b1;	
							y42 = 1'b1;	y44 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && x26 && ~x27 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s21;
						end
					else if( x20 && ~x26 )
						begin
							y58 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x20 )
						begin
							y26 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y3 = 1'b1;	y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s48;
				s49 : if( 1'b1 )
						begin
							y25 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s49;
				s50 : if( 1'b1 )
						begin
							y26 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s51;
				s52 : if( x17 )
						begin
							y24 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x17 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	y17 = 1'b1;	
							y38 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s52;
				s53 : if( 1'b1 )
						begin
							y3 = 1'b1;	y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s53;
				s54 : if( x20 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s19;
						end
					else if( x20 && ~x12 && x22 && x23 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && ~x12 && x22 && x23 && ~x24 && x25 )
						begin
							y59 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && ~x12 && x22 && x23 && ~x24 && ~x25 )
						nx_state = s1;
					else if( x20 && ~x12 && x22 && ~x23 )
						nx_state = s1;
					else if( x20 && ~x12 && ~x22 )
						nx_state = s1;
					else if( ~x20 )
						begin
							y26 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s54;

			default : nx_state = 0;
		endcase
	end
endmodule
