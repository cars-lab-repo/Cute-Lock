module ball ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13;

parameter s1=0, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24;
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
	x31 or x32 or x33 or x34 or x35 or x36 or x37 or x38 or x39 or x40 or x41 or x42 or x43 or x44)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	
		case ( pr_state )
				s1 : if( x14 && x10 && x39 && x36 )
						nx_state = s1;
					else if( x14 && x10 && x39 && ~x36 && x44 && x41 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && x10 && x39 && ~x36 && x44 && ~x41 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x14 && x10 && x39 && ~x36 && ~x44 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x14 && x10 && ~x39 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( x14 && ~x10 && x11 && x34 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x14 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x14 && ~x10 && x11 && ~x34 && x32 && ~x7 && x26 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && ~x10 && x11 && ~x34 && x32 && ~x7 && x26 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x26 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x14 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x14 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x14 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( x14 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x14 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && x10 && x11 && x1 && x2 && x3 && x4 )
						nx_state = s1;
					else if( ~x14 && x10 && x11 && x1 && x2 && x3 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && x10 && x11 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && x10 && x11 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x14 && x10 && x11 && x1 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && x10 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x14 && x10 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x14 && x10 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x14 && ~x10 && x11 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x10 && ~x11 && x1 && x12 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && ~x10 && ~x11 && x1 && ~x12 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x1 && x12 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x1 && x12 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x1 && ~x12 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x1 && ~x12 && ~x2 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x1 && ~x12 && ~x2 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s1;
				s2 : if( x14 && x35 )
						nx_state = s1;
					else if( x14 && ~x35 && x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( x14 && ~x35 && ~x13 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x14 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x14 && ~x10 && ~x11 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s2;
				s3 : if( x14 && x42 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( x14 && x42 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( x14 && x42 && ~x19 )
						nx_state = s3;
					else if( x14 && ~x42 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && x11 && x10 )
						nx_state = s1;
					else if( ~x14 && x11 && ~x10 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x14 && x11 && ~x10 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x14 && ~x11 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && ~x11 && ~x10 && x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x14 && ~x11 && ~x10 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x14 && ~x11 && ~x10 && ~x12 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x11 && ~x10 && ~x12 && ~x1 && ~x4 )
						nx_state = s1;
					else nx_state = s3;
				s4 : if( x14 && x30 && x43 )
						nx_state = s4;
					else if( x14 && x30 && ~x43 && x18 && x41 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && x30 && ~x43 && x18 && ~x41 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && x30 && ~x43 && ~x18 && x34 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && x30 && ~x43 && ~x18 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && ~x30 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && ~x11 && x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && ~x11 && x1 && ~x2 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s4;
					else if( ~x14 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s4;
				s5 : if( x28 && x21 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x28 && ~x21 )
						nx_state = s5;
					else if( ~x28 && x27 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x28 && x27 && ~x8 && x37 )
						nx_state = s1;
					else if( ~x28 && x27 && ~x8 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x28 && ~x27 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s5;
				s6 : if( x42 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 )
						nx_state = s6;
					else nx_state = s6;
				s7 : if( x14 && x16 && x26 && x27 && x29 && x18 )
						begin
							y13 = 1'b1;	
							nx_state = s19;
						end
					else if( x14 && x16 && x26 && x27 && x29 && ~x18 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && x16 && x26 && x27 && ~x29 && x33 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && x16 && x26 && x27 && ~x29 && ~x33 && x21 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x14 && x16 && x26 && x27 && ~x29 && ~x33 && ~x21 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && x16 && x26 && ~x27 )
						nx_state = s7;
					else if( x14 && x16 && ~x26 )
						nx_state = s1;
					else if( x14 && ~x16 && x37 && x22 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && ~x16 && x37 && x22 && ~x1 )
						nx_state = s7;
					else if( x14 && ~x16 && x37 && ~x22 )
						nx_state = s1;
					else if( x14 && ~x16 && ~x37 && x25 )
						nx_state = s1;
					else if( x14 && ~x16 && ~x37 && ~x25 && x4 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s14;
						end
					else if( x14 && ~x16 && ~x37 && ~x25 && x4 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && ~x16 && ~x37 && ~x25 && ~x4 )
						nx_state = s7;
					else if( ~x14 && x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && x10 && ~x11 && x12 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && x10 && ~x11 && x12 && ~x2 )
						nx_state = s1;
					else if( ~x14 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x14 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x10 && x12 && x2 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x14 && ~x10 && x12 && x2 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && ~x10 && x12 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x14 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s7;
				s8 : if( x14 && x17 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( x14 && x17 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( x14 && x17 && ~x19 )
						nx_state = s8;
					else if( x14 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x14 && ~x17 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && x11 && x10 )
						nx_state = s1;
					else if( ~x14 && x11 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x14 && ~x11 && x12 && x10 && x4 && x1 )
						nx_state = s8;
					else if( ~x14 && ~x11 && x12 && x10 && x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && ~x11 && x12 && x10 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && ~x11 && x12 && ~x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s8;
				s9 : if( x14 && x41 && x24 && x5 && x36 )
						nx_state = s9;
					else if( x14 && x41 && x24 && x5 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && x41 && x24 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && x41 && ~x24 && x31 && x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && x41 && ~x24 && x31 && ~x29 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && x41 && ~x24 && ~x31 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && ~x41 && x11 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && ~x41 && x11 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x41 && x11 && ~x35 && x15 )
						nx_state = s1;
					else if( x14 && ~x41 && x11 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x41 && ~x11 && x40 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s21;
						end
					else if( x14 && ~x41 && ~x11 && x40 && ~x35 && x15 )
						nx_state = s1;
					else if( x14 && ~x41 && ~x11 && x40 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x41 && ~x11 && ~x40 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( x14 && ~x41 && ~x11 && ~x40 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x41 && ~x11 && ~x40 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && x11 && x10 && x3 && x4 )
						nx_state = s9;
					else if( ~x14 && x11 && x10 && x3 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && x11 && x10 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && x11 && x10 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x14 && x11 && x10 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && x11 && ~x10 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x14 && x11 && ~x10 && ~x6 && x8 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x14 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x14 && x11 && ~x10 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && x11 && ~x10 && ~x6 && ~x8 )
						nx_state = s1;
					else if( ~x14 && ~x11 && x10 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x11 && x10 && ~x2 )
						nx_state = s1;
					else if( ~x14 && ~x11 && ~x10 && x12 && x9 )
						nx_state = s1;
					else if( ~x14 && ~x11 && ~x10 && x12 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x14 && ~x11 && ~x10 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x14 && ~x11 && ~x10 && ~x12 && ~x6 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x11 && ~x10 && ~x12 && ~x6 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s9;
				s10 : if( x14 && x13 && x23 && x41 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && x13 && x23 && ~x41 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x14 && x13 && ~x23 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && ~x13 && x28 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( x14 && ~x13 && x28 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x13 && x28 && ~x35 && x15 )
						nx_state = s1;
					else if( x14 && ~x13 && x28 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x13 && ~x28 && x6 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s21;
						end
					else if( x14 && ~x13 && ~x28 && x6 && ~x35 && x15 )
						nx_state = s1;
					else if( x14 && ~x13 && ~x28 && x6 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x14 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && x10 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x14 && x10 && ~x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x14 && ~x10 && ~x11 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s10;
				s11 : if( x14 && x8 && x30 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( x14 && x8 && ~x30 && x37 )
						nx_state = s1;
					else if( x14 && x8 && ~x30 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( x14 && ~x8 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( x14 && ~x8 && ~x41 && x37 )
						nx_state = s1;
					else if( x14 && ~x8 && ~x41 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x14 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x14 && ~x10 && ~x11 && x12 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x14 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x14 && ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s11;
				s12 : if( x7 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x7 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s12;
				s13 : if( x14 && x29 && x42 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x14 && x29 && ~x42 )
						nx_state = s13;
					else if( x14 && ~x29 && x15 )
						nx_state = s1;
					else if( x14 && ~x29 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && x11 && x6 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x14 && x11 && x6 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x14 && x11 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x14 && ~x11 && x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && ~x11 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s13;
				s14 : if( x14 && x44 && x3 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( x14 && x44 && x3 && ~x23 )
						nx_state = s14;
					else if( x14 && x44 && ~x3 )
						nx_state = s1;
					else if( x14 && ~x44 && x2 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( x14 && ~x44 && x2 && ~x23 )
						nx_state = s14;
					else if( x14 && ~x44 && ~x2 )
						nx_state = s1;
					else if( ~x14 && x10 )
						nx_state = s1;
					else if( ~x14 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x14 && ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x10 && ~x11 && x1 )
						nx_state = s1;
					else if( ~x14 && ~x10 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s14;
				s15 : if( x38 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x38 )
						nx_state = s15;
					else nx_state = s15;
				s16 : if( x10 && x6 && x7 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( x10 && x6 && x7 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && ~x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( x10 && ~x6 && ~x2 )
						nx_state = s1;
					else if( ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 )
						nx_state = s1;
					else nx_state = s16;
				s17 : if( x10 && x12 )
						nx_state = s1;
					else if( x10 && ~x12 && x1 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( x10 && ~x12 && x1 && ~x2 )
						nx_state = s1;
					else if( x10 && ~x12 && ~x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && ~x11 && x12 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && x12 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s17;
				s18 : if( x14 && x17 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s14;
						end
					else if( x14 && ~x17 && x21 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x14 && ~x17 && ~x21 )
						nx_state = s18;
					else if( ~x14 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x14 && ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s18;
				s19 : if( x14 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( x14 && ~x3 && x2 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x14 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && ~x3 && ~x2 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && x10 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x14 && x10 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && x10 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && x10 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x14 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x14 && ~x10 && ~x11 )
						nx_state = s19;
					else nx_state = s19;
				s20 : if( x14 && x42 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x14 && ~x42 )
						nx_state = s20;
					else if( ~x14 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x14 && ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x14 && ~x11 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s20;
				s21 : if( x14 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && x37 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && ~x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x14 && x10 && x1 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x14 && x10 && x1 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && x10 && x1 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x14 && x10 && x1 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x14 && x10 && ~x1 && x2 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x14 && x10 && ~x1 && x2 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x14 && x10 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x14 && ~x10 )
						nx_state = s21;
					else nx_state = s21;
				s22 : if( x3 && x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x3 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s22;
				s23 : if( x8 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s13;
						end
					else if( x8 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s20;
						end
					else if( x8 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s23;
				s24 : if( x14 && x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x14 && ~x9 && x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x14 && ~x9 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x14 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x14 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x14 && ~x10 && ~x11 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s24;

			default : nx_state = 0;
		endcase
	end
endmodule
