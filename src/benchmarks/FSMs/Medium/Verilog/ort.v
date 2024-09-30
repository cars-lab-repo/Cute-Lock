module ort ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48;

parameter s1=0, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54, s55=55, s56=56;
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
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27 or x28 or x29 or x30 or 
	x31 or x32 or x33 or x34 or x35 or x36 or x37 or x38 or x39 or x40 or x41 or x42 or x43 or x44 or x45 or 
	x46 or x47 or x48 or x49 or x50 or x51 or x52 or x53 or x54 or x55 or x56 or x57 or x58 or x59 or x60 or 
	x61)
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
			y45 = 1'b0;	y46 = 1'b0;	y47 = 1'b0;	y48 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y1 = 1'b1;	y26 = 1'b1;	y37 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x1 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y12 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y40 = 1'b1;	
							y42 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y15 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y37 = 1'b1;	
							y40 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y15 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y1 = 1'b1;	y12 = 1'b1;	y26 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y37 = 1'b1;	
							y40 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s13;
				s14 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s14;
				s15 : if( x4 && x5 && x6 && x30 && x36 )
						begin
							y8 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && x5 && x6 && x30 && ~x36 )
						begin
							y24 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && x5 && x6 && ~x30 && x31 && x33 && x34 )
						begin
							y7 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && x5 && x6 && ~x30 && x31 && x33 && ~x34 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x5 && x6 && ~x30 && x31 && x33 && ~x34 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x5 && x6 && ~x30 && x31 && x33 && ~x34 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( x4 && x5 && x6 && ~x30 && x31 && x33 && ~x34 && ~x27 )
						nx_state = s1;
					else if( x4 && x5 && x6 && ~x30 && x31 && ~x33 && x35 )
						begin
							y7 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && x5 && x6 && ~x30 && x31 && ~x33 && ~x35 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x5 && x6 && ~x30 && x31 && ~x33 && ~x35 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x5 && x6 && ~x30 && x31 && ~x33 && ~x35 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( x4 && x5 && x6 && ~x30 && x31 && ~x33 && ~x35 && ~x27 )
						nx_state = s1;
					else if( x4 && x5 && x6 && ~x30 && ~x31 && x32 )
						begin
							y1 = 1'b1;	y22 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s18;
						end
					else if( x4 && x5 && x6 && ~x30 && ~x31 && ~x32 )
						begin
							y1 = 1'b1;	y20 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( x4 && x5 && ~x6 && x7 && x23 && x24 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y15 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s20;
						end
					else if( x4 && x5 && ~x6 && x7 && x23 && ~x24 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && x5 && ~x6 && x7 && ~x23 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && x5 && ~x6 && ~x7 )
						begin
							y1 = 1'b1;	y6 = 1'b1;	y33 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s21;
						end
					else if( x4 && ~x5 && x8 )
						begin
							y1 = 1'b1;	y6 = 1'b1;	y33 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s21;
						end
					else if( x4 && ~x5 && ~x8 && x9 && x25 && x26 )
						begin
							y14 = 1'b1;	y19 = 1'b1;	y33 = 1'b1;	
							y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && ~x5 && ~x8 && x9 && x25 && ~x26 )
						begin
							y14 = 1'b1;	y18 = 1'b1;	y33 = 1'b1;	
							y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && ~x5 && ~x8 && x9 && ~x25 )
						begin
							y14 = 1'b1;	y17 = 1'b1;	y35 = 1'b1;	
							y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else if( x4 && ~x5 && ~x8 && ~x9 )
						begin
							y1 = 1'b1;	y6 = 1'b1;	y33 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x4 )
						begin
							y1 = 1'b1;	y33 = 1'b1;	y37 = 1'b1;	
							y46 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s16;
				s17 : if( x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x27 )
						nx_state = s1;
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s18;
				s19 : if( 1'b1 )
						begin
							y21 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y1 = 1'b1;	y15 = 1'b1;	y37 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s20;
				s21 : if( x36 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y26 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x36 && x38 && x39 && x41 && x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x36 && x38 && x39 && x41 && ~x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x36 && x38 && x39 && ~x41 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x36 && x38 && ~x39 && x40 && x55 && x56 )
						begin
							y28 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x36 && x38 && ~x39 && x40 && x55 && ~x56 && x58 )
						begin
							y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x36 && x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && x59 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x36 && x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x36 && x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x36 && x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x36 && x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && ~x27 )
						nx_state = s1;
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && x57 && x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && ~x27 )
						nx_state = s1;
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && ~x27 )
						nx_state = s1;
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && ~x54 && x53 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x36 && x38 && ~x39 && x40 && ~x55 && ~x54 && ~x53 )
						begin
							y30 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x36 && x38 && ~x39 && ~x40 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x36 && ~x38 )
						begin
							y2 = 1'b1;	y35 = 1'b1;	y37 = 1'b1;	
							y43 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s21;
				s22 : if( x10 )
						begin
							y25 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && x14 && x30 && x36 )
						begin
							y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && x14 && x30 && ~x36 )
						begin
							y24 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && x14 && ~x30 && x31 && x33 && x34 )
						begin
							y7 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && x14 && ~x30 && x31 && x33 && ~x34 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x14 && ~x30 && x31 && x33 && ~x34 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x14 && ~x30 && x31 && x33 && ~x34 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x10 && x11 && x14 && ~x30 && x31 && x33 && ~x34 && ~x27 )
						nx_state = s1;
					else if( ~x10 && x11 && x14 && ~x30 && x31 && ~x33 && x35 )
						begin
							y7 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && x14 && ~x30 && x31 && ~x33 && ~x35 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x14 && ~x30 && x31 && ~x33 && ~x35 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x14 && ~x30 && x31 && ~x33 && ~x35 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x10 && x11 && x14 && ~x30 && x31 && ~x33 && ~x35 && ~x27 )
						nx_state = s1;
					else if( ~x10 && x11 && x14 && ~x30 && ~x31 && x32 )
						begin
							y1 = 1'b1;	y22 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && x11 && x14 && ~x30 && ~x31 && ~x32 )
						begin
							y1 = 1'b1;	y20 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x11 && ~x14 && x15 && x16 && x20 && x22 )
						begin
							y34 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x14 && x15 && x16 && x20 && ~x22 )
						begin
							y36 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x14 && x15 && x16 && ~x20 && x21 )
						begin
							y38 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x14 && x15 && x16 && ~x20 && ~x21 )
						begin
							y37 = 1'b1;	y39 = 1'b1;	y44 = 1'b1;	
							y47 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x14 && x15 && ~x16 && x17 && x19 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y41 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x10 && x11 && ~x14 && x15 && ~x16 && x17 && ~x19 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y44 = 1'b1;	
							y48 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x14 && x15 && ~x16 && ~x17 && x18 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x14 && x15 && ~x16 && ~x17 && ~x18 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x14 && ~x15 )
						begin
							y1 = 1'b1;	y6 = 1'b1;	y37 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y6 = 1'b1;	y37 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 )
						begin
							y1 = 1'b1;	y6 = 1'b1;	y37 = 1'b1;	
							y45 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 && x43 && x46 && x48 )
						begin
							y37 = 1'b1;	y39 = 1'b1;	y47 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 && x43 && x46 && ~x48 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 && x43 && ~x46 && x47 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 && x43 && ~x46 && ~x47 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 && ~x43 && x44 && x45 )
						begin
							y19 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 && ~x43 && x44 && ~x45 )
						begin
							y14 = 1'b1;	y18 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	y45 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 && ~x43 && ~x44 )
						begin
							y14 = 1'b1;	y31 = 1'b1;	y35 = 1'b1;	
							y37 = 1'b1;	y39 = 1'b1;	y45 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y37 = 1'b1;	y40 = 1'b1;	y41 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s27;
				s28 : if( x60 )
						begin
							y7 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x60 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x60 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x60 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x60 && ~x27 )
						nx_state = s1;
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y1 = 1'b1;	y4 = 1'b1;	y37 = 1'b1;	
							y40 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s30;
				s31 : if( x39 && x41 && x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s26;
						end
					else if( x39 && x41 && ~x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s17;
						end
					else if( x39 && ~x41 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x39 && x40 && x55 && x56 )
						begin
							y28 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x39 && x40 && x55 && ~x56 && x58 )
						begin
							y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x39 && x40 && x55 && ~x56 && ~x58 && x59 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && ~x27 )
						nx_state = s1;
					else if( ~x39 && x40 && ~x55 && x54 && x57 && x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && ~x27 )
						nx_state = s1;
					else if( ~x39 && x40 && ~x55 && x54 && ~x57 && x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && ~x27 )
						nx_state = s1;
					else if( ~x39 && x40 && ~x55 && ~x54 && x53 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x39 && x40 && ~x55 && ~x54 && ~x53 )
						begin
							y30 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x39 && ~x40 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y44 = 1'b1;	
							y48 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s32;
				s33 : if( x51 && x41 && x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s26;
						end
					else if( x51 && x41 && ~x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s17;
						end
					else if( x51 && ~x41 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x51 && x52 && x55 && x56 )
						begin
							y28 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x51 && x52 && x55 && ~x56 && x58 )
						begin
							y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x51 && x52 && x55 && ~x56 && ~x58 && x59 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x51 && x52 && x55 && ~x56 && ~x58 && ~x59 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x51 && x52 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x51 && x52 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x51 && x52 && x55 && ~x56 && ~x58 && ~x59 && ~x27 )
						nx_state = s1;
					else if( ~x51 && x52 && ~x55 && x54 && x57 && x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x51 && x52 && ~x55 && x54 && x57 && ~x28 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x51 && x52 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x51 && x52 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x51 && x52 && ~x55 && x54 && x57 && ~x28 && ~x27 )
						nx_state = s1;
					else if( ~x51 && x52 && ~x55 && x54 && ~x57 && x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x51 && x52 && ~x55 && x54 && ~x57 && ~x29 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x51 && x52 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x51 && x52 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( ~x51 && x52 && ~x55 && x54 && ~x57 && ~x29 && ~x27 )
						nx_state = s1;
					else if( ~x51 && x52 && ~x55 && ~x54 && x53 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x51 && x52 && ~x55 && ~x54 && ~x53 )
						begin
							y30 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x51 && ~x52 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y9 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s38;
				s39 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y1 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s40;
				s41 : if( 1'b1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s44;
				s45 : if( 1'b1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s46;
				s47 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s48;
				s49 : if( x38 && x39 && x41 && x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s26;
						end
					else if( x38 && x39 && x41 && ~x42 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y40 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s17;
						end
					else if( x38 && x39 && ~x41 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s27;
						end
					else if( x38 && ~x39 && x40 && x55 && x56 )
						begin
							y28 = 1'b1;	
							nx_state = s28;
						end
					else if( x38 && ~x39 && x40 && x55 && ~x56 && x58 )
						begin
							y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && x59 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( x38 && ~x39 && x40 && x55 && ~x56 && ~x58 && ~x59 && ~x27 )
						nx_state = s1;
					else if( x38 && ~x39 && x40 && ~x55 && x54 && x57 && x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( x38 && ~x39 && x40 && ~x55 && x54 && x57 && ~x28 && ~x27 )
						nx_state = s1;
					else if( x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s1;
						end
					else if( x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && x27 && ~x37 && ~x3 )
						nx_state = s1;
					else if( x38 && ~x39 && x40 && ~x55 && x54 && ~x57 && ~x29 && ~x27 )
						nx_state = s1;
					else if( x38 && ~x39 && x40 && ~x55 && ~x54 && x53 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( x38 && ~x39 && x40 && ~x55 && ~x54 && ~x53 )
						begin
							y30 = 1'b1;	
							nx_state = s17;
						end
					else if( x38 && ~x39 && ~x40 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x38 )
						begin
							y2 = 1'b1;	y35 = 1'b1;	y37 = 1'b1;	
							y43 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s49;
				s50 : if( 1'b1 )
						begin
							y1 = 1'b1;	y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y27 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s51;
				s52 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s52;
				s53 : if( 1'b1 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s53;
				s54 : if( x61 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x61 )
						begin
							y1 = 1'b1;	y4 = 1'b1;	y37 = 1'b1;	
							y40 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s54;
				s55 : if( 1'b1 )
						begin
							y1 = 1'b1;	y13 = 1'b1;	y37 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s55;
				s56 : if( x49 && x50 )
						begin
							y29 = 1'b1;	
							nx_state = s17;
						end
					else if( x49 && ~x50 )
						begin
							y16 = 1'b1;	y18 = 1'b1;	y37 = 1'b1;	
							y39 = 1'b1;	y44 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x49 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	y35 = 1'b1;	
							y37 = 1'b1;	y39 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s56;

			default : nx_state = 0;
		endcase
	end
endmodule
