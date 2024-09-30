module exxm ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24;

parameter s1=0, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54, s55=55, s56=56, s57=57, s58=58, s59=59, s60=60,
	s61=61, s62=62, s63=63, s64=64, s65=65, s66=66, s67=67, s68=68, s69=69, s70=70,
	s71=71, s72=72, s73=73, s74=74, s75=75, s76=76, s77=77, s78=78, s79=79;
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
	x46 or x47)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y23 = 1'b0;	y24 = 1'b0;	
		case ( pr_state )
				s1 : if( x44 && x45 && x10 && x46 && x39 && x36 && x35 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && x10 && x46 && x39 && x36 && ~x35 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && x10 && x46 && x39 && ~x36 && x43 && x42 && x40 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && x10 && x46 && x39 && ~x36 && x43 && x42 && ~x40 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x44 && x45 && x10 && x46 && x39 && ~x36 && x43 && ~x42 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && x10 && x46 && x39 && ~x36 && ~x43 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x44 && x45 && x10 && x46 && ~x39 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x44 && x45 && x10 && ~x46 && x11 && x1 && x2 && x4 && x5 && x3 )
						nx_state = s1;
					else if( x44 && x45 && x10 && ~x46 && x11 && x1 && x2 && x4 && x5 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x45 && x10 && ~x46 && x11 && x1 && x2 && x4 && ~x5 && x3 )
						nx_state = s1;
					else if( x44 && x45 && x10 && ~x46 && x11 && x1 && x2 && x4 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && x10 && ~x46 && x11 && x1 && x2 && ~x4 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && x45 && x10 && ~x46 && x11 && x1 && x2 && ~x4 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x44 && x45 && x10 && ~x46 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x44 && x45 && x10 && ~x46 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && x10 && ~x46 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x44 && x45 && x10 && ~x46 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && x34 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && x34 && ~x8 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && ~x34 && x32 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && ~x34 && x32 && ~x7 && x22 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && ~x34 && x32 && ~x7 && x22 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && ~x34 && x32 && ~x7 && ~x22 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x44 && x45 && ~x10 && x11 && x46 && ~x34 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x44 && x45 && ~x10 && x11 && ~x46 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s16;
						end
					else if( x44 && x45 && ~x10 && x11 && ~x46 && ~x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x44 && x45 && ~x10 && x11 && ~x46 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && ~x10 && ~x11 && x12 && x46 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x44 && x45 && ~x10 && ~x11 && x12 && x46 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && ~x10 && ~x11 && x12 && x46 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && x45 && ~x10 && ~x11 && x12 && ~x46 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x44 && x45 && ~x10 && ~x11 && x12 && ~x46 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && ~x10 && ~x11 && x12 && ~x46 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && x46 && x13 && x1 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && x46 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && x46 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && x46 && x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && x46 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && ~x46 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s20;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && ~x46 && ~x1 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && ~x46 && ~x1 && ~x2 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x12 && ~x46 && ~x1 && ~x2 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && ~x45 && x46 && x3 && x10 && x7 )
						begin
							y11 = 1'b1;	
							nx_state = s21;
						end
					else if( x44 && ~x45 && x46 && x3 && x10 && ~x7 && x1 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x45 && x46 && x3 && x10 && ~x7 && x1 && ~x5 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s22;
						end
					else if( x44 && ~x45 && x46 && x3 && x10 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && x46 && x3 && ~x10 && x1 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x45 && x46 && x3 && ~x10 && x1 && ~x5 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s22;
						end
					else if( x44 && ~x45 && x46 && x3 && ~x10 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && x46 && ~x3 && x10 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && ~x45 && x46 && ~x3 && ~x10 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x44 && ~x45 && ~x46 && x47 && x10 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s16;
						end
					else if( x44 && ~x45 && ~x46 && x47 && x10 && x12 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x44 && ~x45 && ~x46 && x47 && x10 && x12 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x44 && ~x45 && ~x46 && x47 && x10 && ~x12 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s25;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && ~x22 && x2 && x11 && x5 && x3 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && ~x22 && x2 && x11 && x5 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && ~x22 && x2 && x11 && ~x5 && x3 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && ~x22 && x2 && x11 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && ~x22 && x2 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && ~x22 && x2 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && ~x1 && x11 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && ~x1 && x11 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x44 && ~x45 && ~x46 && x47 && ~x10 && ~x1 && ~x11 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && x9 && x16 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && x9 && x16 && ~x8 && x5 )
						begin
							y7 = 1'b1;	
							nx_state = s29;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && x9 && x16 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && x9 && ~x16 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && ~x9 && x10 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && ~x9 && x10 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && ~x9 && ~x10 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && ~x9 && ~x10 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && ~x45 && ~x46 && ~x47 && ~x9 && ~x10 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && x46 && x47 && x7 && x45 && x9 && x5 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && x46 && x47 && x7 && x45 && x9 && x5 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && x47 && x7 && x45 && x9 && x5 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && x47 && x7 && x45 && x9 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x46 && x47 && x7 && x45 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x44 && x46 && x47 && x7 && ~x45 && x8 && x1 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && x46 && x47 && x7 && ~x45 && x8 && x1 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && x47 && x7 && ~x45 && x8 && x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && x47 && x7 && ~x45 && x8 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x46 && x47 && x7 && ~x45 && ~x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x44 && x46 && x47 && ~x7 && x1 && x45 && x15 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x44 && x46 && x47 && ~x7 && x1 && x45 && x15 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && x47 && ~x7 && x1 && x45 && ~x15 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x46 && x47 && ~x7 && x1 && ~x45 && x8 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x44 && x46 && x47 && ~x7 && x1 && ~x45 && x8 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && x47 && ~x7 && x1 && ~x45 && ~x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x46 && x47 && ~x7 && ~x1 && x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x46 && x47 && ~x7 && ~x1 && ~x8 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x44 && x46 && x47 && ~x7 && ~x1 && ~x8 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && x12 && x10 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && x12 && x10 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && x12 && ~x10 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && x12 && ~x10 && ~x8 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && x12 && ~x10 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && x10 && x1 && x5 && x13 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && x10 && x1 && x5 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && x10 && x1 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && x10 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && ~x10 && x13 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && ~x10 && x13 && ~x7 && x1 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && ~x10 && x13 && ~x7 && x1 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && ~x10 && x13 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x44 && x46 && ~x47 && x45 && x11 && ~x12 && ~x10 && ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && x10 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && x12 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && x12 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && x12 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && ~x12 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x44 && x46 && ~x47 && x45 && ~x11 && ~x10 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && x9 && x11 && x1 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && x9 && x11 && x1 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && x9 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && x9 && ~x11 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && x9 && ~x11 && ~x7 && x1 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && x9 && ~x11 && ~x7 && x1 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && x9 && ~x11 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && x10 && x11 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && x10 && x11 && ~x8 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && x10 && x11 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && x10 && ~x11 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && x10 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && ~x10 && x1 && x11 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && ~x10 && x1 && x11 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && ~x10 && x1 && x11 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && ~x10 && x1 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && ~x10 && x1 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x46 && ~x47 && ~x45 && ~x9 && ~x10 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && x45 && x47 && x10 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x44 && ~x46 && x45 && x47 && x10 && ~x1 && x4 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && ~x46 && x45 && x47 && x10 && ~x1 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x44 && ~x46 && x45 && x47 && ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x44 && ~x46 && x45 && x47 && ~x10 && ~x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x44 && ~x46 && x45 && x47 && ~x10 && ~x1 && ~x2 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && x11 && x10 )
						begin
							y18 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && x11 && ~x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && ~x11 && x10 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && ~x11 && ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && ~x11 && ~x10 && ~x1 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && ~x11 && ~x10 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && x9 && x11 && x1 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && x9 && x11 && x1 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && x9 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && x9 && ~x11 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && x9 && ~x11 && ~x7 && x1 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && x9 && ~x11 && ~x7 && x1 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && x9 && ~x11 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && x10 && x11 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && x10 && x11 && ~x8 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && x10 && x11 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && x10 && ~x11 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && x10 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && ~x10 && x1 && x11 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && ~x10 && x1 && x11 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && ~x10 && x1 && x11 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && ~x10 && x1 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && ~x10 && x1 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 && ~x9 && ~x10 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && x10 && x13 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && x10 && x13 && ~x7 && x1 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && x10 && x13 && ~x7 && x1 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && x10 && x13 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && x10 && ~x13 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && x10 && ~x13 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && ~x10 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && ~x10 && ~x8 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && x12 && ~x10 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && ~x12 && x10 && x1 && x5 && x13 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && ~x12 && x10 && x1 && x5 && ~x13 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && ~x12 && x10 && x1 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && ~x12 && x10 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && ~x45 && x11 && ~x12 && ~x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && x10 )
						begin
							y18 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && x12 && x1 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && x12 && x1 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && x12 && x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && x12 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && ~x12 && x13 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && ~x12 && x13 && ~x1 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && ~x12 && x13 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x11 && ~x10 && ~x12 && ~x13 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s1;
				s2 : if( x45 && x44 && x46 && x29 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x45 && x44 && x46 && x29 && ~x41 )
						nx_state = s2;
					else if( x45 && x44 && x46 && ~x29 && x14 )
						nx_state = s1;
					else if( x45 && x44 && x46 && ~x29 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x45 && x44 && ~x46 && x11 && x10 )
						nx_state = s1;
					else if( x45 && x44 && ~x46 && x11 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x45 && x44 && ~x46 && ~x11 && x10 && x12 && x4 && x1 )
						nx_state = s2;
					else if( x45 && x44 && ~x46 && ~x11 && x10 && x12 && x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x45 && x44 && ~x46 && ~x11 && x10 && x12 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x45 && x44 && ~x46 && ~x11 && x10 && ~x12 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x45 && x44 && ~x46 && ~x11 && ~x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x45 && ~x44 && x46 && x47 && x1 )
						nx_state = s1;
					else if( x45 && ~x44 && x46 && x47 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( x45 && ~x44 && x46 && ~x47 && x10 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x45 && ~x44 && x46 && ~x47 && x10 && ~x2 )
						nx_state = s2;
					else if( x45 && ~x44 && x46 && ~x47 && ~x10 && x3 )
						nx_state = s1;
					else if( x45 && ~x44 && x46 && ~x47 && ~x10 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x45 && ~x44 && ~x46 && x10 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else if( x45 && ~x44 && ~x46 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x45 && x44 && x46 && x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x45 && x44 && x46 && ~x2 )
						nx_state = s2;
					else if( ~x45 && x44 && ~x46 && x47 && x19 && x13 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x45 && x44 && ~x46 && x47 && x19 && ~x13 && x21 && x18 && x12 )
						nx_state = s2;
					else if( ~x45 && x44 && ~x46 && x47 && x19 && ~x13 && x21 && x18 && ~x12 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x45 && x44 && ~x46 && x47 && x19 && ~x13 && x21 && ~x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x45 && x44 && ~x46 && x47 && x19 && ~x13 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x45 && x44 && ~x46 && x47 && ~x19 )
						nx_state = s1;
					else if( ~x45 && x44 && ~x46 && ~x47 && x12 && x15 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x45 && x44 && ~x46 && ~x47 && x12 && ~x15 )
						nx_state = s2;
					else if( ~x45 && x44 && ~x46 && ~x47 && ~x12 && x3 )
						nx_state = s1;
					else if( ~x45 && x44 && ~x46 && ~x47 && ~x12 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x45 && ~x44 && x3 )
						nx_state = s1;
					else if( ~x45 && ~x44 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s2;
				s3 : if( x44 && x45 && x16 && x22 && x29 && x27 && x15 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s45;
						end
					else if( x44 && x45 && x16 && x22 && x29 && x27 && ~x15 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && x16 && x22 && x29 && ~x27 )
						nx_state = s3;
					else if( x44 && x45 && x16 && x22 && ~x29 && x27 && x33 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && x16 && x22 && ~x29 && x27 && ~x33 && x18 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x44 && x45 && x16 && x22 && ~x29 && x27 && ~x33 && ~x18 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && x16 && x22 && ~x29 && ~x27 )
						nx_state = s3;
					else if( x44 && x45 && x16 && ~x22 )
						nx_state = s1;
					else if( x44 && x45 && ~x16 && x37 && x21 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && ~x16 && x37 && x21 && ~x1 )
						nx_state = s3;
					else if( x44 && x45 && ~x16 && x37 && ~x21 )
						nx_state = s1;
					else if( x44 && x45 && ~x16 && ~x37 && x25 )
						nx_state = s1;
					else if( x44 && x45 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s46;
						end
					else if( x44 && x45 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s3;
					else if( x44 && x45 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s3;
					else if( x44 && ~x45 && x46 && x3 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x45 && x46 && x3 && ~x5 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s22;
						end
					else if( x44 && ~x45 && x46 && ~x3 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x45 && x46 && ~x3 && ~x10 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( x44 && ~x45 && ~x46 && x7 && x9 && x8 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && ~x45 && ~x46 && x7 && x9 && ~x8 )
						nx_state = s3;
					else if( x44 && ~x45 && ~x46 && x7 && ~x9 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x46 && ~x7 && x6 && x13 && x4 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	
							nx_state = s48;
						end
					else if( x44 && ~x45 && ~x46 && ~x7 && x6 && x13 && ~x4 )
						nx_state = s3;
					else if( x44 && ~x45 && ~x46 && ~x7 && x6 && ~x13 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && ~x45 && ~x46 && ~x7 && x6 && ~x13 && ~x4 )
						nx_state = s3;
					else if( x44 && ~x45 && ~x46 && ~x7 && ~x6 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && x10 && x47 && x7 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && x7 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && x7 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && ~x7 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && ~x7 && ~x9 && x1 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && x10 && x47 && ~x7 && ~x9 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x11 && x4 && x12 && x3 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x11 && x4 && x12 && ~x3 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x11 && x4 && ~x12 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x11 && x4 && ~x12 && ~x13 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x11 && x4 && ~x12 && ~x13 && ~x3 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x11 && ~x4 )
						nx_state = s3;
					else if( ~x44 && x45 && x46 && x10 && ~x47 && ~x11 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && ~x10 && x11 && x47 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x44 && x45 && x46 && ~x10 && x11 && x47 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && ~x10 && x11 && ~x47 && x13 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x45 && x46 && ~x10 && x11 && ~x47 && x13 && ~x4 )
						nx_state = s3;
					else if( ~x44 && x45 && x46 && ~x10 && x11 && ~x47 && ~x13 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && ~x10 && ~x11 && x47 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x45 && x46 && ~x10 && ~x11 && x47 && ~x9 && x1 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && ~x10 && ~x11 && x47 && ~x9 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && ~x10 && ~x11 && ~x47 && x12 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && ~x10 && ~x11 && ~x47 && ~x12 && x4 && x3 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x44 && x45 && x46 && ~x10 && ~x11 && ~x47 && ~x12 && x4 && ~x3 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x45 && x46 && ~x10 && ~x11 && ~x47 && ~x12 && ~x4 )
						nx_state = s3;
					else if( ~x44 && x45 && ~x46 && x12 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x45 && ~x46 && x12 && x10 && ~x11 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x44 && x45 && ~x46 && x12 && ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x45 && ~x46 && x12 && ~x10 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && x45 && ~x46 && x12 && ~x10 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && x9 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && x9 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && x11 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && x11 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && x11 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && x7 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && x7 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && x7 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && ~x7 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && ~x7 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && ~x8 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && ~x45 && x46 && x47 && ~x8 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x45 && x46 && x47 && ~x8 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && x9 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && x9 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && x11 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && x11 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && x11 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && x11 && x5 && x13 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && x11 && x5 && ~x13 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && ~x11 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x11 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x11 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x11 && x12 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x11 && x12 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x11 && x12 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x11 && ~x12 && x13 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x11 && ~x12 && x13 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x11 && ~x12 && x13 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s3;
				s4 : if( x44 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( x44 && ~x3 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && ~x3 && ~x2 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x3 && ~x2 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x11 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x44 && ~x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x44 && ~x11 && ~x5 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x11 && ~x5 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s4;
				s5 : if( x44 && x45 && x31 && x19 && x10 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else if( x44 && x45 && x31 && x19 && ~x10 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s52;
						end
					else if( x44 && x45 && x31 && ~x19 )
						nx_state = s5;
					else if( x44 && x45 && ~x31 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s52;
						end
					else if( x44 && ~x45 && x46 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s52;
						end
					else if( x44 && ~x45 && ~x46 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x44 && x45 && x46 && x47 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && x45 && x46 && ~x47 && x10 && x6 && x2 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x44 && x45 && x46 && ~x47 && x10 && x6 && ~x2 )
						nx_state = s5;
					else if( ~x44 && x45 && x46 && ~x47 && x10 && ~x6 && x2 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x44 && x45 && x46 && ~x47 && x10 && ~x6 && ~x2 )
						nx_state = s5;
					else if( ~x44 && x45 && x46 && ~x47 && ~x10 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x44 && x45 && ~x46 && x12 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && x45 && ~x46 && x12 && ~x9 && x7 )
						nx_state = s1;
					else if( ~x44 && x45 && ~x46 && x12 && ~x9 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x45 && x46 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x45 && ~x46 && x11 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x11 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x11 && ~x9 && x7 )
						nx_state = s1;
					else if( ~x44 && ~x45 && ~x46 && ~x11 && ~x9 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s5;
				s6 : if( x44 && x45 && x26 && x42 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && x45 && x26 && ~x42 && x15 && x40 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && x45 && x26 && ~x42 && x15 && ~x40 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && x26 && ~x42 && ~x15 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && x26 && ~x42 && ~x15 && ~x34 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && x45 && ~x26 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x45 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && ~x45 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x10 && x2 && x11 && x13 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x10 && x2 && x11 && ~x13 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && ~x10 && x2 && ~x11 && x12 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && ~x10 && x2 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x10 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s6;
				s7 : if( x44 && x35 )
						nx_state = s1;
					else if( x44 && ~x35 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x44 && ~x35 && ~x13 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x44 && x11 )
						nx_state = s1;
					else if( ~x44 && ~x11 && x1 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x11 && ~x1 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s7;
				s8 : if( x10 && x11 )
						nx_state = s1;
					else if( x10 && ~x11 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x10 && x11 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x10 && x11 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x10 && ~x11 && x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x10 && ~x11 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x1 && ~x4 )
						nx_state = s1;
					else nx_state = s8;
				s9 : if( x44 && x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x10 && ~x11 && x12 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x10 && ~x11 && x12 && ~x2 )
						nx_state = s1;
					else if( x44 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x44 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x44 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x44 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && ~x10 && x12 && x2 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s58;
						end
					else if( x44 && ~x10 && x12 && x2 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x44 && ~x10 && x12 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s59;
						end
					else if( x44 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x44 && x7 && x45 && x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x7 && x45 && ~x11 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x44 && x7 && x45 && ~x11 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x7 && ~x45 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x7 && ~x45 && ~x1 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x44 && x7 && ~x45 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x7 && x45 && x16 && x1 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x44 && ~x7 && x45 && x16 && ~x1 )
						nx_state = s9;
					else if( ~x44 && ~x7 && x45 && ~x16 && x1 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x44 && ~x7 && x45 && ~x16 && ~x1 )
						nx_state = s9;
					else if( ~x44 && ~x7 && ~x45 && x6 && x2 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x44 && ~x7 && ~x45 && x6 && ~x2 )
						nx_state = s9;
					else if( ~x44 && ~x7 && ~x45 && ~x6 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x44 && ~x7 && ~x45 && ~x6 && ~x2 )
						nx_state = s9;
					else nx_state = s9;
				s10 : if( x44 && x45 && x11 && x10 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && x11 && ~x10 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x44 && x45 && x11 && ~x10 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x45 && x11 && ~x10 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && ~x11 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && x45 && ~x11 && ~x10 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && ~x11 && ~x10 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x44 && ~x45 && x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x44 && ~x45 && x19 && x28 && ~x1 && x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x44 && ~x45 && x19 && x28 && ~x1 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && x19 && ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x44 && ~x45 && ~x19 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x10 && x5 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && x10 && ~x5 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x44 && ~x10 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x44 && ~x10 && ~x1 && x3 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x44 && ~x10 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s10;
				s11 : if( x11 && x45 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && ~x45 && x25 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && ~x45 && x25 && ~x3 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x11 && ~x45 && x25 && ~x3 && ~x5 )
						nx_state = s11;
					else if( x11 && ~x45 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x11 && x45 && x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && x45 && x1 && ~x2 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 && x45 && x1 && ~x2 && ~x3 )
						nx_state = s11;
					else if( ~x11 && x45 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x11 && ~x45 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s11;
				s12 : if( x10 && x11 && x4 && x5 && x3 )
						nx_state = s12;
					else if( x10 && x11 && x4 && x5 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x10 && x11 && x4 && ~x5 && x3 )
						nx_state = s12;
					else if( x10 && x11 && x4 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x11 && ~x4 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x10 && x11 && ~x4 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x10 && ~x11 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x10 && ~x11 && ~x2 )
						nx_state = s1;
					else if( ~x10 && x11 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x10 && x11 && ~x6 && x8 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x10 && x11 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x10 && x11 && ~x6 && ~x8 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x12 && x9 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x12 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x6 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x6 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s12;
				s13 : if( x44 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( x44 && ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x44 && x10 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x44 && x10 && ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x44 && ~x10 )
						nx_state = s13;
					else nx_state = s13;
				s14 : if( x44 && x45 && x46 && x8 && x26 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( x44 && x45 && x46 && x8 && ~x26 && x37 )
						nx_state = s1;
					else if( x44 && x45 && x46 && x8 && ~x26 && ~x37 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( x44 && x45 && x46 && ~x8 && x40 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( x44 && x45 && x46 && ~x8 && ~x40 && x37 )
						nx_state = s1;
					else if( x44 && x45 && x46 && ~x8 && ~x40 && ~x37 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( x44 && x45 && ~x46 && x11 && x6 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x44 && x45 && ~x46 && x11 && x6 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x44 && x45 && ~x46 && x11 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( x44 && x45 && ~x46 && ~x11 && x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && x45 && ~x46 && ~x11 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( x44 && ~x45 && x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x44 && ~x45 && ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x44 && ~x45 && ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x44 && x46 && x10 && x11 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x44 && x46 && x10 && ~x11 && x7 )
						nx_state = s1;
					else if( ~x44 && x46 && x10 && ~x11 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x44 && x46 && ~x10 && x13 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x44 && x46 && ~x10 && ~x13 && x7 )
						nx_state = s1;
					else if( ~x44 && x46 && ~x10 && ~x13 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x44 && ~x46 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x44 && ~x46 && ~x5 && x6 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && ~x46 && ~x5 && ~x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s14;
				s15 : if( x44 && x45 && x17 && x19 && x10 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else if( x44 && x45 && x17 && x19 && ~x10 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s52;
						end
					else if( x44 && x45 && x17 && ~x19 )
						nx_state = s15;
					else if( x44 && x45 && ~x17 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x44 && x45 && ~x17 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && x45 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x45 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x44 && ~x45 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && ~x45 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && x7 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && x7 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && x7 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && ~x7 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x45 && x46 && x10 && x47 && ~x7 && ~x9 && x1 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && x10 && x47 && ~x7 && ~x9 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x6 && x2 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && x6 && ~x2 )
						nx_state = s15;
					else if( ~x44 && x45 && x46 && x10 && ~x47 && ~x6 && x2 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x44 && x45 && x46 && x10 && ~x47 && ~x6 && ~x2 )
						nx_state = s15;
					else if( ~x44 && x45 && x46 && ~x10 && x47 && x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x44 && x45 && x46 && ~x10 && x47 && x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && ~x10 && x47 && ~x11 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x45 && x46 && ~x10 && x47 && ~x11 && ~x9 && x1 )
						nx_state = s1;
					else if( ~x44 && x45 && x46 && ~x10 && x47 && ~x11 && ~x9 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && x46 && ~x10 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x44 && x45 && x46 && ~x10 && ~x47 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && x45 && x46 && ~x10 && ~x47 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && x45 && ~x46 && x12 && x10 && x8 && x1 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x45 && ~x46 && x12 && x10 && x8 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && x12 && x10 && ~x8 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x45 && ~x46 && x12 && ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x44 && x45 && ~x46 && x12 && ~x10 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && x45 && ~x46 && x12 && ~x10 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && x9 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && x9 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && x10 && x5 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && x10 && x5 && ~x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && x10 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && ~x10 && x11 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && ~x10 && x11 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && ~x10 && x11 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && ~x10 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && x45 && ~x46 && ~x12 && ~x9 && ~x10 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && x7 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && x7 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && x7 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && ~x7 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x44 && ~x45 && x46 && x47 && x8 && ~x7 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && x47 && ~x8 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && ~x45 && x46 && x47 && ~x8 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x45 && x46 && x47 && ~x8 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && x9 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && x9 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && x10 && x5 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && x10 && x5 && ~x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && x10 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && ~x10 && x11 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && ~x10 && x11 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && ~x10 && x11 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && ~x10 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && ~x45 && x46 && ~x47 && ~x9 && ~x10 && ~x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && x11 && x5 && x13 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && x11 && x5 && ~x13 && x12 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && x11 && x5 && ~x13 && ~x12 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && ~x11 && x8 && x1 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && ~x11 && x8 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && x10 && ~x11 && ~x8 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x12 && x11 && x5 )
						begin
							y19 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x12 && x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x12 && ~x11 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x12 && ~x11 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && x12 && ~x11 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x12 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x12 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x45 && ~x46 && ~x10 && ~x12 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s15;
				s16 : if( x44 && x45 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( x44 && x45 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x44 && x45 && ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s58;
						end
					else if( x44 && x45 && ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x44 && ~x45 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s65;
						end
					else if( x44 && ~x45 && ~x19 && x26 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s66;
						end
					else if( x44 && ~x45 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s67;
						end
					else if( x44 && ~x45 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x44 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x44 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x44 && ~x4 && x1 && ~x3 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x44 && ~x4 && ~x1 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s16;
				s17 : if( x44 && x45 && x40 && x24 && x5 && x36 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && x40 && x24 && x5 && ~x36 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && x40 && x24 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && x40 && ~x24 && x31 && x29 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && x40 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && x40 && ~x24 && ~x31 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && ~x40 && x11 && x35 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && ~x40 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x40 && x11 && ~x35 && x14 )
						nx_state = s1;
					else if( x44 && x45 && ~x40 && x11 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x40 && ~x11 && x30 && x35 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && ~x40 && ~x11 && x30 && ~x35 && x14 )
						nx_state = s1;
					else if( x44 && x45 && ~x40 && ~x11 && x30 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x40 && ~x11 && ~x30 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x44 && x45 && ~x40 && ~x11 && ~x30 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x40 && ~x11 && ~x30 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && x46 && x3 )
						nx_state = s1;
					else if( x44 && ~x45 && x46 && ~x3 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s69;
						end
					else if( x44 && ~x45 && x46 && ~x3 && ~x1 )
						begin
							y8 = 1'b1;	y12 = 1'b1;	
							nx_state = s70;
						end
					else if( x44 && ~x45 && ~x46 && x16 && x14 && x5 )
						begin
							y7 = 1'b1;	
							nx_state = s29;
						end
					else if( x44 && ~x45 && ~x46 && x16 && x14 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && ~x46 && x16 && ~x14 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && ~x46 && x16 && ~x14 && ~x11 && x3 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x46 && x16 && ~x14 && ~x11 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && ~x46 && ~x16 && x11 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && ~x46 && ~x16 && x11 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && ~x46 && ~x16 && ~x11 && x3 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x46 && ~x16 && ~x11 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x11 && x10 && x5 && x12 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x11 && x10 && x5 && ~x12 && x13 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && x11 && x10 && x5 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x44 && x11 && x10 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x11 && ~x10 && x13 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && x11 && ~x10 && x13 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x11 && ~x10 && ~x13 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x11 && ~x10 && ~x13 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && x11 && ~x10 && ~x13 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x11 && x10 && x8 && x1 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && ~x11 && x10 && x8 && ~x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x11 && x10 && ~x8 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && ~x11 && ~x10 && x12 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && ~x11 && ~x10 && x12 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x11 && ~x10 && x12 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x11 && ~x10 && ~x12 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x11 && ~x10 && ~x12 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x11 && ~x10 && ~x12 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s17;
				s18 : if( x44 && x45 && x13 && x23 && x42 && x40 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && x13 && x23 && x42 && ~x40 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x44 && x45 && x13 && x23 && ~x42 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && x13 && ~x23 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && ~x13 && x28 && x35 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x44 && x45 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x13 && x28 && ~x35 && x14 )
						nx_state = s1;
					else if( x44 && x45 && ~x13 && x28 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x13 && ~x28 && x6 && x35 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && ~x13 && ~x28 && x6 && ~x35 && x14 )
						nx_state = s1;
					else if( x44 && x45 && ~x13 && ~x28 && x6 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && x45 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else if( x44 && ~x45 && x46 && x3 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y12 = 1'b1;	
							nx_state = s71;
						end
					else if( x44 && ~x45 && x46 && ~x3 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x44 && ~x45 && x46 && ~x3 && ~x5 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && x46 && ~x3 && ~x5 && ~x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s72;
						end
					else if( x44 && ~x45 && ~x46 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && ~x46 && ~x11 && x3 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x46 && ~x11 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x10 && x11 && x5 && x13 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && x10 && x11 && x5 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x44 && x10 && x11 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && x10 && ~x11 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && ~x10 && x11 && x13 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x44 && ~x10 && x11 && x13 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x10 && x11 && ~x13 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && ~x10 && x11 && ~x13 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x10 && x11 && ~x13 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x10 && ~x11 && x12 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && ~x10 && ~x11 && x12 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x44 && ~x10 && ~x11 && x12 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x10 && ~x11 && ~x12 && x13 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x10 && ~x11 && ~x12 && x13 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x10 && ~x11 && ~x12 && x13 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s18;
				s19 : if( x44 && x17 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s46;
						end
					else if( x44 && ~x17 && x18 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && ~x17 && ~x18 )
						nx_state = s19;
					else if( ~x44 && x46 && x45 && x47 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && x46 && x45 && ~x47 && x10 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x44 && x46 && x45 && ~x47 && ~x10 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && x46 && x45 && ~x47 && ~x10 && ~x4 )
						nx_state = s19;
					else if( ~x44 && x46 && ~x45 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && ~x46 && x45 && x12 && x7 )
						nx_state = s1;
					else if( ~x44 && ~x46 && x45 && x12 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && ~x46 && x45 && ~x12 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && ~x46 && ~x45 && x10 && x11 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && ~x46 && ~x45 && x10 && ~x11 && x7 )
						nx_state = s1;
					else if( ~x44 && ~x46 && ~x45 && x10 && ~x11 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x10 && x12 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x10 && ~x12 && x7 )
						nx_state = s1;
					else if( ~x44 && ~x46 && ~x45 && ~x10 && ~x12 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s19;
				s20 : if( x3 && x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s58;
						end
					else if( x3 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s20;
				s21 : if( x3 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y12 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x3 && x7 )
						nx_state = s1;
					else if( ~x3 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y12 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s21;
				s22 : if( x3 && x4 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s72;
						end
					else if( x3 && ~x4 )
						nx_state = s22;
					else if( ~x3 )
						nx_state = s1;
					else nx_state = s22;
				s23 : if( x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x30 && x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s65;
						end
					else if( x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s66;
						end
					else if( x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s67;
						end
					else if( x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s61;
						end
					else if( x30 && x16 && ~x6 && ~x8 )
						nx_state = s1;
					else if( x30 && ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x30 && ~x16 && ~x10 )
						nx_state = s1;
					else if( ~x30 && x5 && x9 )
						nx_state = s1;
					else if( ~x30 && x5 && ~x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x30 && ~x5 && x11 && x3 )
						nx_state = s23;
					else if( ~x30 && ~x5 && x11 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x30 && ~x5 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x30 && ~x5 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s23;
				s24 : if( x12 && x27 && x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x12 && x27 && ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x12 && x27 && ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x12 && ~x27 && x29 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s73;
						end
					else if( x12 && ~x27 && x29 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x12 && ~x27 && ~x29 && x2 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s65;
						end
					else if( x12 && ~x27 && ~x29 && ~x2 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x12 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x12 && ~x29 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s24;
				s25 : if( x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x2 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s25;
				s26 : if( x24 && x26 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s74;
						end
					else if( x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s55;
						end
					else if( x24 && ~x26 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x24 && ~x28 )
						nx_state = s1;
					else nx_state = s26;
				s27 : if( x44 && x14 && x8 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x44 && x14 && x8 && ~x10 )
						nx_state = s1;
					else if( x44 && x14 && ~x8 && x30 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s73;
						end
					else if( x44 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s66;
						end
					else if( x44 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s44;
						end
					else if( x44 && x14 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x44 && ~x14 && x3 && x21 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s67;
						end
					else if( x44 && ~x14 && x3 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x44 && ~x14 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x44 && x2 && x4 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x44 && x2 && ~x4 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x44 && ~x2 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s27;
				s28 : if( x44 && x45 && x46 && x37 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && x45 && x46 && ~x37 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && x45 && x46 && ~x37 && ~x9 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( x44 && x45 && ~x46 && x10 )
						nx_state = s1;
					else if( x44 && x45 && ~x46 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && x45 && ~x46 && ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && ~x46 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x45 && ~x46 && ~x10 && ~x11 && x1 )
						nx_state = s1;
					else if( x44 && x45 && ~x46 && ~x10 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && ~x45 )
						begin
							y8 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x44 && x46 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && x46 && ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && x46 && ~x11 && ~x9 && x7 )
						nx_state = s1;
					else if( ~x44 && x46 && ~x11 && ~x9 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x44 && ~x46 && x10 && x1 )
						nx_state = s1;
					else if( ~x44 && ~x46 && x10 && ~x1 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && ~x46 && ~x10 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x44 && ~x46 && ~x10 && ~x5 && x6 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && ~x46 && ~x10 && ~x5 && ~x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s29;
				s30 : if( x46 && x45 && x12 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x46 && x45 && ~x12 )
						nx_state = s30;
					else if( x46 && ~x45 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x46 && ~x45 && ~x4 )
						nx_state = s30;
					else if( ~x46 && x45 && x12 )
						begin
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x46 && x45 && ~x12 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x46 && x45 && ~x12 && ~x4 )
						nx_state = s30;
					else if( ~x46 && ~x45 && x10 )
						begin
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x46 && ~x45 && ~x10 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x46 && ~x45 && ~x10 && ~x4 )
						nx_state = s30;
					else nx_state = s30;
				s31 : if( x45 && x46 && x13 && x6 && x16 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x45 && x46 && x13 && x6 && x16 && ~x10 )
						nx_state = s31;
					else if( x45 && x46 && x13 && x6 && ~x16 && x10 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && x46 && x13 && x6 && ~x16 && ~x10 )
						nx_state = s31;
					else if( x45 && x46 && x13 && ~x6 )
						nx_state = s1;
					else if( x45 && x46 && ~x13 && x15 && x10 && x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x45 && x46 && ~x13 && x15 && x10 && ~x4 )
						nx_state = s31;
					else if( x45 && x46 && ~x13 && x15 && ~x10 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && x46 && ~x13 && x15 && ~x10 && ~x4 )
						nx_state = s31;
					else if( x45 && x46 && ~x13 && ~x15 )
						nx_state = s1;
					else if( x45 && ~x46 && x12 )
						nx_state = s1;
					else if( x45 && ~x46 && ~x12 && x4 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && ~x46 && ~x12 && x4 && ~x9 && x10 && x11 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && ~x46 && ~x12 && x4 && ~x9 && x10 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s45;
						end
					else if( x45 && ~x46 && ~x12 && x4 && ~x9 && x10 && ~x11 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && ~x46 && ~x12 && x4 && ~x9 && ~x10 && x3 && x11 )
						begin
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( x45 && ~x46 && ~x12 && x4 && ~x9 && ~x10 && x3 && ~x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s39;
						end
					else if( x45 && ~x46 && ~x12 && x4 && ~x9 && ~x10 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && ~x46 && ~x12 && ~x4 )
						nx_state = s31;
					else if( ~x45 && x46 && x47 && x8 && x4 && x3 && x7 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x45 && x46 && x47 && x8 && x4 && x3 && ~x7 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x45 && x46 && x47 && x8 && x4 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && x46 && x47 && x8 && ~x4 )
						nx_state = s31;
					else if( ~x45 && x46 && x47 && ~x8 )
						nx_state = s1;
					else if( ~x45 && x46 && ~x47 && x4 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && x46 && ~x47 && x4 && ~x9 && x10 && x11 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && x46 && ~x47 && x4 && ~x9 && x10 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x45 && x46 && ~x47 && x4 && ~x9 && x10 && ~x11 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && x46 && ~x47 && x4 && ~x9 && ~x10 && x3 && x11 )
						begin
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x45 && x46 && ~x47 && x4 && ~x9 && ~x10 && x3 && ~x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x45 && x46 && ~x47 && x4 && ~x9 && ~x10 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && x46 && ~x47 && ~x4 )
						nx_state = s31;
					else if( ~x45 && ~x46 && x10 && x11 && x4 && x13 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && ~x46 && x10 && x11 && x4 && ~x13 && x3 && x12 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x45 && ~x46 && x10 && x11 && x4 && ~x13 && x3 && ~x12 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x45 && ~x46 && x10 && x11 && x4 && ~x13 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && ~x46 && x10 && x11 && ~x4 )
						nx_state = s31;
					else if( ~x45 && ~x46 && x10 && ~x11 )
						nx_state = s1;
					else if( ~x45 && ~x46 && ~x10 && x12 && x4 && x11 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && ~x46 && ~x10 && x12 && x4 && ~x11 && x3 )
						begin
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x45 && ~x46 && ~x10 && x12 && x4 && ~x11 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && ~x46 && ~x10 && x12 && ~x4 )
						nx_state = s31;
					else if( ~x45 && ~x46 && ~x10 && ~x12 )
						nx_state = s1;
					else nx_state = s31;
				s32 : if( x46 && x45 && x12 && x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x46 && x45 && x12 && ~x14 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x46 && x45 && ~x12 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x46 && ~x45 && x47 && x2 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x46 && ~x45 && x47 && x2 && ~x8 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x46 && ~x45 && x47 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x46 && ~x45 && ~x47 && x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x46 && ~x45 && ~x47 && ~x2 )
						nx_state = s32;
					else if( ~x46 && x45 && x12 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x46 && x45 && x12 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x46 && x45 && ~x12 && x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x46 && x45 && ~x12 && ~x2 )
						nx_state = s32;
					else if( ~x46 && ~x45 && x2 && x12 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x46 && ~x45 && x2 && ~x12 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x46 && ~x45 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s32;
				s33 : if( x45 && x16 && x1 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( x45 && x16 && ~x1 )
						nx_state = s33;
					else if( x45 && ~x16 && x1 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x45 && ~x16 && ~x1 )
						nx_state = s33;
					else if( ~x45 && x2 && x6 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x45 && x2 && ~x6 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x45 && ~x2 )
						nx_state = s33;
					else nx_state = s33;
				s34 : if( x45 && x12 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x45 && x12 && ~x5 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x45 && x12 && ~x5 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && ~x12 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x45 && x11 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x45 && ~x11 && x46 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x45 && ~x11 && ~x46 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x45 && ~x11 && ~x46 && ~x5 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x45 && ~x11 && ~x46 && ~x5 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s34;
				s35 : if( x46 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x46 && ~x2 )
						nx_state = s35;
					else if( ~x46 && x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x46 && x10 && ~x2 )
						nx_state = s35;
					else if( ~x46 && ~x10 && x45 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x46 && ~x10 && x45 && ~x2 )
						nx_state = s35;
					else if( ~x46 && ~x10 && ~x45 && x3 )
						nx_state = s1;
					else if( ~x46 && ~x10 && ~x45 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s35;
				s36 : if( x45 && x12 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x45 && ~x12 && x6 && x2 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( x45 && ~x12 && x6 && ~x2 )
						nx_state = s36;
					else if( x45 && ~x12 && ~x6 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x45 && ~x12 && ~x6 && ~x2 )
						nx_state = s36;
					else if( ~x45 && x46 && x6 && x2 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x45 && x46 && x6 && ~x2 )
						nx_state = s36;
					else if( ~x45 && x46 && ~x6 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x45 && x46 && ~x6 && ~x2 )
						nx_state = s36;
					else if( ~x45 && ~x46 && x10 && x6 && x2 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x45 && ~x46 && x10 && x6 && ~x2 )
						nx_state = s36;
					else if( ~x45 && ~x46 && x10 && ~x6 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x45 && ~x46 && x10 && ~x6 && ~x2 )
						nx_state = s36;
					else if( ~x45 && ~x46 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s36;
				s37 : if( x10 && x9 )
						nx_state = s1;
					else if( x10 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x10 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x10 && ~x6 && x8 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x10 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x10 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y5 = 1'b1;	y13 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x10 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x10 && ~x6 && ~x8 )
						nx_state = s1;
					else nx_state = s37;
				s38 : if( x45 && x12 && x1 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( x45 && x12 && ~x1 )
						begin
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( x45 && ~x12 )
						nx_state = s1;
					else if( ~x45 && x11 )
						nx_state = s1;
					else if( ~x45 && ~x11 && x46 )
						nx_state = s1;
					else if( ~x45 && ~x11 && ~x46 && x1 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x45 && ~x11 && ~x46 && ~x1 )
						begin
							y20 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s38;
				s39 : if( x45 && x12 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( x45 && x12 && ~x1 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && x12 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x45 && ~x12 && x6 && x2 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( x45 && ~x12 && x6 && ~x2 )
						nx_state = s39;
					else if( x45 && ~x12 && ~x6 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x45 && ~x12 && ~x6 && ~x2 )
						nx_state = s39;
					else if( ~x45 && x46 && x6 && x2 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x45 && x46 && x6 && ~x2 )
						nx_state = s39;
					else if( ~x45 && x46 && ~x6 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x45 && x46 && ~x6 && ~x2 )
						nx_state = s39;
					else if( ~x45 && ~x46 && x10 && x6 && x2 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x45 && ~x46 && x10 && x6 && ~x2 )
						nx_state = s39;
					else if( ~x45 && ~x46 && x10 && ~x6 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x45 && ~x46 && x10 && ~x6 && ~x2 )
						nx_state = s39;
					else if( ~x45 && ~x46 && ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x45 && ~x46 && ~x10 && ~x1 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && ~x46 && ~x10 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s39;
				s40 : if( x10 && x12 )
						nx_state = s1;
					else if( x10 && ~x12 && x1 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x10 && ~x12 && x1 && ~x2 )
						nx_state = s1;
					else if( x10 && ~x12 && ~x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && ~x11 && x12 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && x12 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s40;
				s41 : if( x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x10 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x10 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s41;
				s42 : if( x44 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x44 && ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x44 && ~x11 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x44 && x46 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x46 && x45 && x47 && x10 && x9 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && ~x46 && x45 && x47 && x10 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x44 && ~x46 && x45 && x47 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && x12 && ~x4 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x44 && ~x46 && x45 && ~x47 && ~x12 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x46 && ~x45 && x10 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x10 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x44 && ~x46 && ~x45 && ~x10 && ~x4 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s42;
				s43 : if( x9 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x9 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x9 && ~x3 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s43;
				s44 : if( x25 && x22 )
						nx_state = s1;
					else if( x25 && ~x22 && x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x25 && ~x22 && x6 && ~x8 )
						nx_state = s1;
					else if( x25 && ~x22 && ~x6 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x25 && ~x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s44;
				s45 : if( x44 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && ~x41 )
						nx_state = s45;
					else if( ~x44 && x45 && x46 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x44 && x45 && x46 && ~x2 )
						nx_state = s45;
					else if( ~x44 && x45 && ~x46 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x44 && x45 && ~x46 && ~x2 )
						nx_state = s45;
					else if( ~x44 && ~x45 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x44 && ~x45 && ~x2 )
						nx_state = s45;
					else nx_state = s45;
				s46 : if( x44 && x37 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && x37 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x44 && ~x37 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && x10 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && x10 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x44 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s46;
				s47 : if( x5 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s21;
						end
					else if( x5 && ~x6 && x7 )
						nx_state = s1;
					else if( x5 && ~x6 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y12 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x5 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x5 && ~x4 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s47;
				s48 : if( x15 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 )
						nx_state = s48;
					else nx_state = s48;
				s49 : if( x46 && x45 && x12 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x46 && x45 && ~x12 )
						nx_state = s49;
					else if( x46 && ~x45 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x46 && ~x45 && ~x4 )
						nx_state = s49;
					else if( ~x46 && x45 && x12 && x5 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x46 && x45 && x12 && x5 && ~x6 && x7 )
						nx_state = s1;
					else if( ~x46 && x45 && x12 && x5 && ~x6 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x46 && x45 && x12 && ~x5 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x46 && x45 && x12 && ~x5 && ~x4 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x46 && x45 && ~x12 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x46 && x45 && ~x12 && ~x4 )
						nx_state = s49;
					else if( ~x46 && ~x45 && x10 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x46 && ~x45 && x10 && ~x4 )
						nx_state = s49;
					else if( ~x46 && ~x45 && ~x10 && x5 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x46 && ~x45 && ~x10 && x5 && ~x6 && x7 )
						nx_state = s1;
					else if( ~x46 && ~x45 && ~x10 && x5 && ~x6 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x46 && ~x45 && ~x10 && ~x5 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x46 && ~x45 && ~x10 && ~x5 && ~x4 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s49;
				s50 : if( x44 && x43 && x3 && x23 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x44 && x43 && x3 && ~x23 )
						nx_state = s50;
					else if( x44 && x43 && ~x3 )
						nx_state = s1;
					else if( x44 && ~x43 && x2 && x23 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x44 && ~x43 && x2 && ~x23 )
						nx_state = s50;
					else if( x44 && ~x43 && ~x2 )
						nx_state = s1;
					else if( ~x44 && x10 && x11 && x4 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x44 && x10 && x11 && ~x4 )
						nx_state = s50;
					else if( ~x44 && x10 && ~x11 )
						nx_state = s1;
					else if( ~x44 && ~x10 && x13 && x4 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x44 && ~x10 && x13 && ~x4 )
						nx_state = s50;
					else if( ~x44 && ~x10 && ~x13 )
						nx_state = s1;
					else nx_state = s50;
				s51 : if( x44 && x28 && x18 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && x28 && ~x18 )
						nx_state = s51;
					else if( x44 && ~x28 && x27 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && ~x28 && x27 && ~x8 && x37 )
						nx_state = s1;
					else if( x44 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( x44 && ~x28 && ~x27 && x41 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && ~x28 && ~x27 && ~x41 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x44 && x10 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && x10 && ~x4 )
						nx_state = s51;
					else if( ~x44 && ~x10 && x5 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && ~x10 && x5 && ~x6 && x7 )
						nx_state = s1;
					else if( ~x44 && ~x10 && x5 && ~x6 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x44 && ~x10 && ~x5 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x10 && ~x5 && ~x4 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s51;
				s52 : if( x44 && x45 && x38 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x44 && x45 && ~x38 && x41 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x44 && x45 && ~x38 && ~x41 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else if( x44 && ~x45 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x44 && ~x45 && ~x4 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x44 && x10 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x44 && ~x10 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x10 && ~x4 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s52;
				s53 : if( x46 && x4 && x45 )
						begin
							y12 = 1'b1;	
							nx_state = s1;
						end
					else if( x46 && x4 && ~x45 && x47 )
						begin
							y12 = 1'b1;	
							nx_state = s1;
						end
					else if( x46 && x4 && ~x45 && ~x47 )
						begin
							y18 = 1'b1;	
							nx_state = s38;
						end
					else if( x46 && ~x4 )
						nx_state = s53;
					else if( ~x46 && x45 && x12 )
						nx_state = s1;
					else if( ~x46 && x45 && ~x12 && x4 )
						begin
							y18 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x46 && x45 && ~x12 && ~x4 )
						nx_state = s53;
					else if( ~x46 && ~x45 && x10 && x11 && x4 )
						begin
							y18 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x46 && ~x45 && x10 && x11 && ~x4 )
						nx_state = s53;
					else if( ~x46 && ~x45 && x10 && ~x11 )
						nx_state = s1;
					else if( ~x46 && ~x45 && ~x10 && x12 && x4 )
						begin
							y18 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x46 && ~x45 && ~x10 && x12 && ~x4 )
						nx_state = s53;
					else if( ~x46 && ~x45 && ~x10 && ~x12 )
						nx_state = s1;
					else nx_state = s53;
				s54 : if( x10 && x5 && x44 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x10 && x5 && x44 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x10 && x5 && x44 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && x5 && ~x44 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && x44 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x10 && x44 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x44 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && x44 && ~x11 )
						nx_state = s54;
					else if( ~x10 && ~x44 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x10 && ~x44 && ~x1 && x3 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x10 && ~x44 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s54;
				s55 : if( x44 && x45 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x45 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x44 && x45 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x45 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && x45 && ~x10 && ~x11 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x44 && ~x45 && x16 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x44 && ~x45 && x16 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x44 && ~x45 && ~x16 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x44 && x10 && x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x44 && x10 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x44 && ~x10 && x6 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x44 && ~x10 && x6 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x44 && ~x10 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s55;
				s56 : if( x44 && x45 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && x45 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( x44 && x45 && ~x10 && ~x11 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x44 && x45 && ~x10 && ~x11 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && ~x45 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x44 && ~x45 && x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s65;
						end
					else if( x44 && ~x45 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s66;
						end
					else if( x44 && ~x45 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s67;
						end
					else if( x44 && ~x45 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s61;
						end
					else if( x44 && ~x45 && x16 && ~x6 && ~x8 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x44 && ~x45 && ~x16 && ~x10 )
						nx_state = s1;
					else if( ~x44 && x10 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x44 && x10 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x44 && ~x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s56;
				s57 : if( x44 && x45 && x10 && x6 && x7 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x44 && x45 && x10 && x6 && x7 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x44 && x45 && x10 && x6 && x7 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x44 && x45 && x10 && x6 && x7 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && x45 && x10 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && x45 && x10 && x6 && ~x7 && ~x8 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x44 && x45 && x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x44 && x45 && x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x44 && x45 && x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x44 && x45 && x10 && ~x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && x45 && x10 && ~x6 && ~x2 )
						nx_state = s1;
					else if( x44 && x45 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( x44 && x45 && ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( x44 && x45 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( x44 && x45 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x44 && ~x45 && x9 )
						begin
							y11 = 1'b1;	
							nx_state = s21;
						end
					else if( x44 && ~x45 && ~x9 && x7 )
						nx_state = s1;
					else if( x44 && ~x45 && ~x9 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y12 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x44 && x10 )
						nx_state = s1;
					else if( ~x44 && ~x10 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x44 && ~x10 && ~x5 && x6 )
						begin
							y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x44 && ~x10 && ~x5 && ~x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s57;
				s58 : if( x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x10 && ~x11 && x12 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x10 && ~x11 && x12 && ~x8 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s58;
				s59 : if( x7 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x7 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s59;
				s60 : if( x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x1 && x44 && x45 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x1 && x44 && x45 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x1 && x44 && ~x45 && x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x1 && x44 && ~x45 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x1 && ~x44 && x3 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x1 && ~x44 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s60;
				s61 : if( x44 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x44 && ~x1 && x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x44 && ~x1 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x44 && x10 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x44 && x10 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x44 && ~x10 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x44 && ~x10 && ~x1 && x3 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x44 && ~x10 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s61;
				s62 : if( x10 && x44 && x2 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x10 && x44 && x2 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x10 && x44 && x2 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && x44 && x2 && ~x1 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x10 && x44 && x2 && ~x1 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x10 && x44 && ~x2 && x1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( x10 && x44 && ~x2 && ~x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s54;
						end
					else if( x10 && ~x44 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x10 && x44 )
						nx_state = s62;
					else if( ~x10 && ~x44 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x10 && ~x44 && ~x1 && x3 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x10 && ~x44 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s62;
				s63 : if( x8 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s20;
						end
					else if( x8 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s59;
						end
					else if( x8 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s63;
				s64 : if( x22 && x2 && x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x22 && x2 && ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x22 && x2 && ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x22 && ~x2 )
						nx_state = s1;
					else if( ~x22 && x31 )
						nx_state = s1;
					else if( ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s64;
				s65 : if( x2 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x2 && x8 && ~x1 && x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x2 && x8 && ~x1 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x2 && ~x8 && x21 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s73;
						end
					else if( x2 && ~x8 && x21 && ~x1 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s66;
						end
					else if( x2 && ~x8 && x21 && ~x1 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s44;
						end
					else if( x2 && ~x8 && ~x21 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s65;
				s66 : if( x16 && x19 && x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x16 && x19 && ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x16 && x19 && ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x16 && ~x19 && x30 && x26 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s73;
						end
					else if( x16 && ~x19 && x30 && x26 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x16 && ~x19 && x30 && ~x26 && x3 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x16 && ~x19 && x30 && ~x26 && ~x3 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s73;
						end
					else if( x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x16 && ~x19 && ~x30 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x16 && ~x19 && ~x30 && ~x8 )
						nx_state = s1;
					else if( ~x16 )
						nx_state = s1;
					else nx_state = s66;
				s67 : if( x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x10 && x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x10 && ~x25 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s67;
				s68 : if( x10 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s54;
						end
					else if( x10 && ~x8 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s68;
				s69 : if( 1'b1 )
						begin
							y8 = 1'b1;	y12 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s69;
				s70 : if( x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s70;
				s71 : if( x3 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x3 && ~x4 )
						nx_state = s71;
					else if( ~x3 )
						nx_state = s1;
					else nx_state = s71;
				s72 : if( x3 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( x3 && ~x5 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x3 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x3 && ~x1 && x8 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x3 && ~x1 && ~x8 )
						begin
							y2 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s72;
				s73 : if( x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x5 && x17 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x5 && ~x17 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s73;
				s74 : if( x7 && x15 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s60;
						end
					else if( x7 && x15 && ~x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x7 && ~x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x7 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s74;
				s75 : if( x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s75;
				s76 : if( x4 )
						begin
							y9 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 )
						nx_state = s76;
					else nx_state = s76;
				s77 : if( x45 && x12 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x45 && x12 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( x45 && ~x12 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x45 && x10 && x46 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x45 && x10 && ~x46 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x45 && x10 && ~x46 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x45 && ~x10 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s77;
				s78 : if( x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s78;
				s79 : if( 1'b1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s79;

			default : nx_state = 0;
		endcase
	end
endmodule
