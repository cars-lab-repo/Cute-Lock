module e16 ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18;
integer pr_state;
integer nx_state;

always@ ( posedge rst or negedge clk )
begin
	if ( rst == 1'b1 )
		pr_state = s1;
	else
		pr_state = nx_state;
end

always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	
		case ( pr_state )
				s1 : if( x10 && x11 && x12 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x11 && x12 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && ~x12 && x1 && x5 && x13 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x11 && ~x12 && x1 && x5 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x11 && ~x12 && x1 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && ~x12 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x11 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && x11 && x12 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x11 && x12 && ~x8 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x12 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x12 && x13 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x11 && ~x12 && x13 && ~x7 && x1 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && ~x12 && x13 && ~x7 && x1 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x12 && x13 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && ~x12 && ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x10 && ~x11 && x12 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && ~x11 && x12 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && x12 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s1;
				s2 : if( x10 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && ~x2 )
						nx_state = s2;
					else if( ~x10 && x3 )
						nx_state = s1;
					else if( ~x10 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s2;
				s3 : if( x10 && x11 && x4 && x12 && x3 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s14;
						end
					else if( x10 && x11 && x4 && x12 && ~x3 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x10 && x11 && x4 && ~x12 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x10 && x11 && x4 && ~x12 && ~x13 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else if( x10 && x11 && x4 && ~x12 && ~x13 && ~x3 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x10 && x11 && ~x4 )
						nx_state = s3;
					else if( x10 && ~x11 )
						nx_state = s1;
					else if( ~x10 && x11 && x13 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && x11 && x13 && ~x4 )
						nx_state = s3;
					else if( ~x10 && x11 && ~x13 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x12 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x12 && x4 && x3 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && ~x11 && ~x12 && x4 && ~x3 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x4 )
						nx_state = s3;
					else nx_state = s3;
				s4 : if( x11 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x11 && ~x5 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x11 && ~x5 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s4;
				s5 : if( x10 && x2 && x6 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else if( x10 && x2 && ~x6 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x10 && ~x2 )
						nx_state = s5;
					else if( ~x10 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s5;
				s6 : if( x2 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( x2 && ~x10 && x11 && x13 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( x2 && ~x10 && x11 && ~x13 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x2 && ~x10 && ~x11 && x12 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x2 && ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s6;
				s7 : if( x11 )
						nx_state = s1;
					else if( ~x11 && x1 )
						begin
							y16 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 && ~x1 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s7;
				s8 : if( x10 && x11 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( x10 && ~x11 && x7 )
						nx_state = s1;
					else if( x10 && ~x11 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && x13 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x13 && x7 )
						nx_state = s1;
					else if( ~x10 && ~x13 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s8;
				s9 : if( x10 && x2 && x6 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else if( x10 && x2 && ~x6 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x10 && ~x2 )
						nx_state = s9;
					else if( ~x10 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s9;
				s10 : if( x10 && x11 && x5 && x12 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x11 && x5 && ~x12 && x13 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x11 && x5 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x11 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && x8 && x1 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x11 && x8 && ~x1 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && ~x8 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x13 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x13 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x13 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && x11 && ~x13 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x13 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && x12 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && ~x11 && x12 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x12 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x12 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s10;
				s11 : if( x10 && x11 && x5 && x13 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x11 && x5 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x11 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x13 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x13 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x13 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && x11 && ~x13 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x13 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && x12 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && ~x11 && x12 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x12 && ~x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s11;
				s12 : if( x10 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && ~x4 )
						nx_state = s12;
					else nx_state = s12;
				s13 : if( x11 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x11 && ~x9 && x7 )
						nx_state = s1;
					else if( ~x11 && ~x9 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s13;
				s14 : if( x2 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x2 )
						nx_state = s14;
					else nx_state = s14;
				s15 : if( x10 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s15;
				s16 : if( x10 && x11 && x4 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && x11 && ~x4 )
						nx_state = s16;
					else if( x10 && ~x11 )
						nx_state = s1;
					else if( ~x10 && x13 && x4 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && x13 && ~x4 )
						nx_state = s16;
					else if( ~x10 && ~x13 )
						nx_state = s1;
					else nx_state = s16;
				s17 : if( x10 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( x10 && ~x4 )
						nx_state = s17;
					else if( ~x10 && x5 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x5 && ~x6 && x7 )
						nx_state = s1;
					else if( ~x10 && x5 && ~x6 && ~x7 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x5 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && ~x5 && ~x4 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s17;
				s18 : if( x10 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && ~x4 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s18;

			default : nx_state = 0;
		endcase
	end
endmodule
