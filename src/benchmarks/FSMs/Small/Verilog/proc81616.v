module proc81616 ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36;
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
			y37 = 1'b0;	y38 = 1'b0;	y39 = 1'b0;	
		case ( pr_state )
				s1 : if( x6 && x5 && x20 && x19 )
						begin
							y17 = 1'b1;	y29 = 1'b1;	y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x5 && x20 && ~x19 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x5 && ~x20 && x19 )
						begin
							y39 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x5 && ~x20 && ~x19 )
						begin
							y36 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x5 && x4 )
						begin
							y1 = 1'b1;	y17 = 1'b1;	y19 = 1'b1;	
							y29 = 1'b1;	y36 = 1'b1;	
							nx_state = s2;
						end
					else if( x6 && ~x5 && ~x4 )
						begin
							y35 = 1'b1;	y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x6 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y1 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y35 = 1'b1;	y38 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s3;
				s4 : if( x12 && x14 && x13 && x16 )
						begin
							y25 = 1'b1;	
							nx_state = s5;
						end
					else if( x12 && x14 && x13 && ~x16 )
						begin
							y24 = 1'b1;	
							nx_state = s5;
						end
					else if( x12 && x14 && ~x13 )
						begin
							y8 = 1'b1;	
							nx_state = s6;
						end
					else if( x12 && ~x14 && x15 && x13 && x16 )
						begin
							y8 = 1'b1;	
							nx_state = s6;
						end
					else if( x12 && ~x14 && x15 && x13 && ~x16 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y8 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s7;
						end
					else if( x12 && ~x14 && x15 && ~x13 )
						begin
							y8 = 1'b1;	
							nx_state = s6;
						end
					else if( x12 && ~x14 && ~x15 && x13 && x16 && x11 )
						begin
							y20 = 1'b1;	
							nx_state = s8;
						end
					else if( x12 && ~x14 && ~x15 && x13 && x16 && ~x11 && x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x14 && ~x15 && x13 && x16 && ~x11 && x17 && ~x10 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && x13 && x16 && ~x11 && ~x17 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && x10 )
						begin
							y20 = 1'b1;	
							nx_state = s8;
						end
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && ~x10 && x17 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && ~x10 && x17 && ~x11 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && x13 && ~x16 && ~x10 && ~x17 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x15 && ~x13 && x3 )
						begin
							y9 = 1'b1;	y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s9;
						end
					else if( x12 && ~x14 && ~x15 && ~x13 && ~x3 && x16 && x1 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s10;
						end
					else if( x12 && ~x14 && ~x15 && ~x13 && ~x3 && x16 && ~x1 )
						begin
							y8 = 1'b1;	
							nx_state = s6;
						end
					else if( x12 && ~x14 && ~x15 && ~x13 && ~x3 && ~x16 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x12 && x3 )
						begin
							y9 = 1'b1;	y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x12 && ~x3 && x13 && x15 && x16 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && x9 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x17 && ~x10 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x17 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && ~x17 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && x8 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x17 && ~x10 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x17 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && ~x17 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && x7 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x17 && ~x10 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x17 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && ~x17 )
						nx_state = s1;
					else if( ~x12 && ~x3 && ~x13 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s4;
				s5 : if( x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( x17 && ~x10 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( x17 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x17 )
						nx_state = s1;
					else nx_state = s5;
				s6 : if( x13 )
						begin
							y5 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y3 = 1'b1;	y26 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y27 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y27 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y27 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s13;
				s14 : if( x12 && x2 && x16 && x1 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else if( x12 && x2 && x16 && ~x1 && x18 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( x12 && x2 && x16 && ~x1 && ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else if( x12 && x2 && ~x16 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y8 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s19;
						end
					else if( x12 && ~x2 && x1 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else if( x12 && ~x2 && ~x1 && x18 && x16 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( x12 && ~x2 && ~x1 && x18 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && ~x2 && ~x1 && ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x12 && x13 && x15 && x16 && x2 )
						begin
							y1 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x2 && x1 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x2 && ~x1 && x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x2 && ~x1 && ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && x2 )
						begin
							y1 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x2 && x1 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x2 && ~x1 && x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x2 && ~x1 && ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x17 && ~x10 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x17 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && ~x17 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && x16 && x8 && x2 )
						begin
							y1 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x2 && x1 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x2 && ~x1 && x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x2 && ~x1 && ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x17 && ~x10 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x17 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && ~x17 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && x2 )
						begin
							y1 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x2 && x1 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x2 && ~x1 && x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x2 && ~x1 && ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x17 && x10 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x17 && ~x10 && x11 )
						begin
							y28 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x17 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && ~x17 )
						nx_state = s1;
					else if( ~x12 && ~x13 && x2 && x14 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && ~x13 && x2 && ~x14 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x12 && ~x13 && ~x2 && x1 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x12 && ~x13 && ~x2 && ~x1 && x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && ~x13 && ~x2 && ~x1 && ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y27 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s16;
				s17 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s18;
				s19 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y9 = 1'b1;	y29 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s20;
				s21 : if( x16 )
						begin
							y5 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x16 && x12 )
						begin
							y3 = 1'b1;	y26 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x16 && ~x12 )
						begin
							y5 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s21;
				s22 : if( x12 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x12 && x13 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x12 && ~x13 )
						begin
							y9 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y8 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s25;
				s26 : if( x12 && x13 )
						begin
							y22 = 1'b1;	y23 = 1'b1;	
							nx_state = s5;
						end
					else if( x12 && ~x13 )
						begin
							y1 = 1'b1;	y17 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x12 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s26;
				s27 : if( x15 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x15 && x14 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x15 && ~x14 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s27;
				s28 : if( x18 && x12 && x16 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( x18 && x12 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( x18 && ~x12 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x18 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s28;
				s29 : if( x14 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x14 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y27 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s30;
				s31 : if( x12 && x1 )
						begin
							y9 = 1'b1;	
							nx_state = s33;
						end
					else if( x12 && ~x1 && x16 )
						begin
							y9 = 1'b1;	
							nx_state = s33;
						end
					else if( x12 && ~x1 && ~x16 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x12 && x13 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x12 && ~x13 )
						begin
							y9 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s32;
				s33 : if( x12 && x16 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( x12 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && ~x1 && x14 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && ~x1 && ~x14 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y30 = 1'b1;	y31 = 1'b1;	y32 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y9 = 1'b1;	y29 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s35;
				s36 : if( x12 && x16 )
						begin
							y8 = 1'b1;	
							nx_state = s21;
						end
					else if( x12 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s36;

			default : nx_state = 0;
		endcase
	end
endmodule
