module e4 ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
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
	x31)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y23 = 1'b0;	y24 = 1'b0;	
		case ( pr_state )
				s1 : if( x10 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x12 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x12 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x12 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x1 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && x1 && ~x22 && x2 && x3 && x11 )
						nx_state = s1;
					else if( ~x10 && x1 && ~x22 && x2 && x3 && ~x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && x1 && ~x22 && x2 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x1 && ~x22 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && ~x1 && x11 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && ~x1 && x11 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && ~x1 && ~x11 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s1;
				s2 : if( x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x19 && x26 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s2;
				s3 : if( x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s14;
						end
					else if( x19 && x28 && ~x1 && x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x19 && x28 && ~x1 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( x19 && ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x19 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s3;
				s4 : if( x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x30 && x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s11;
						end
					else if( x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s12;
						end
					else if( x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s13;
						end
					else if( x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s14;
						end
					else if( x30 && x16 && ~x6 && ~x8 )
						nx_state = s1;
					else if( x30 && ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x30 && ~x16 && ~x10 )
						nx_state = s1;
					else if( ~x30 && x5 && x9 )
						nx_state = s1;
					else if( ~x30 && x5 && ~x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x30 && ~x5 && x3 && x11 )
						nx_state = s4;
					else if( ~x30 && ~x5 && x3 && ~x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x30 && ~x5 && ~x3 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x30 && ~x5 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s4;
				s5 : if( x11 && x25 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s3;
						end
					else if( x11 && x25 && ~x3 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( x11 && x25 && ~x3 && ~x5 )
						nx_state = s5;
					else if( x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s5;
				s6 : if( x12 && x27 && x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( x12 && x27 && ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( x12 && x27 && ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x12 && ~x27 && x29 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x12 && ~x27 && x29 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( x12 && ~x27 && ~x29 && x2 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s11;
						end
					else if( x12 && ~x27 && ~x29 && ~x2 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x12 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x12 && ~x29 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s6;
				s7 : if( x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x2 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s7;
				s8 : if( x14 && x8 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && x8 && ~x10 )
						nx_state = s1;
					else if( x14 && ~x8 && x30 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s12;
						end
					else if( x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else if( x14 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && x3 && x21 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x14 && x3 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s8;
				s9 : if( x24 && x26 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s20;
						end
					else if( x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s22;
						end
					else if( x24 && ~x26 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x24 && ~x28 )
						nx_state = s1;
					else nx_state = s9;
				s10 : if( x19 && x13 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s16;
						end
					else if( x19 && ~x13 && x21 && x18 && x12 )
						nx_state = s10;
					else if( x19 && ~x13 && x21 && x18 && ~x12 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else if( x19 && ~x13 && x21 && ~x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( x19 && ~x13 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x19 )
						nx_state = s1;
					else nx_state = s10;
				s11 : if( x2 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s14;
						end
					else if( x2 && x8 && ~x1 && x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x2 && x8 && ~x1 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( x2 && ~x8 && x21 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x2 && ~x8 && x21 && ~x1 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s12;
						end
					else if( x2 && ~x8 && x21 && ~x1 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else if( x2 && ~x8 && ~x21 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s11;
				s12 : if( x16 && x19 && x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( x16 && x19 && ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( x16 && x19 && ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x16 && ~x19 && x30 && x26 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x16 && ~x19 && x30 && x26 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( x16 && ~x19 && x30 && ~x26 && x3 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( x16 && ~x19 && x30 && ~x26 && ~x3 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( x16 && ~x19 && ~x30 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( x16 && ~x19 && ~x30 && ~x8 )
						nx_state = s1;
					else if( ~x16 )
						nx_state = s1;
					else nx_state = s12;
				s13 : if( x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x10 && ~x25 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s13;
				s14 : if( x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x1 && x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x1 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s14;
				s15 : if( x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s11;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s12;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s13;
						end
					else if( x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s14;
						end
					else if( x16 && ~x6 && ~x8 )
						nx_state = s1;
					else if( ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x16 && ~x10 )
						nx_state = s1;
					else nx_state = s15;
				s16 : if( x9 )
						begin
							y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x9 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x9 && ~x3 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s16;
				s17 : if( x22 && x2 && x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( x22 && x2 && ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( x22 && x2 && ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x22 && ~x2 )
						nx_state = s1;
					else if( ~x22 && x31 )
						nx_state = s1;
					else if( ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s17;
				s18 : if( x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x5 && x17 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x5 && ~x17 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s18;
				s19 : if( x25 && x22 )
						nx_state = s1;
					else if( x25 && ~x22 && x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( x25 && ~x22 && x6 && ~x8 )
						nx_state = s1;
					else if( x25 && ~x22 && ~x6 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x25 && ~x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s19;
				s20 : if( x7 && x15 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s14;
						end
					else if( x7 && x15 && ~x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( x7 && ~x15 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x7 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s20;
				s21 : if( x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s21;
				s22 : if( x16 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x16 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x16 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s22;
				s23 : if( x20 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x20 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x20 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s24;

			default : nx_state = 0;
		endcase
	end
endmodule
