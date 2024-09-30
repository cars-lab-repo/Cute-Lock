module bech ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14;
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
	x16 or x17 or x18)
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
				s1 : if( x1 && x2 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x1 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y37 = 1'b1;	y38 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y3 = 1'b1;	y28 = 1'b1;	y34 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y39 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s5;
				s6 : if( x6 && x3 && x7 && x9 )
						begin
							y28 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && x7 && ~x9 )
						begin
							y29 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && x8 && x9 && x11 )
						begin
							y3 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && x8 && x9 && ~x11 && x14 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x3 && ~x7 && x8 && x9 && ~x11 && x14 && ~x10 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && x8 && x9 && ~x11 && ~x14 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && x8 && ~x9 && x10 )
						begin
							y3 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && x8 && ~x9 && ~x10 && x14 && x11 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x3 && ~x7 && x8 && ~x9 && ~x10 && x14 && ~x11 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && x8 && ~x9 && ~x10 && ~x14 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && ~x8 && x9 )
						begin
							y32 = 1'b1;	y33 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && ~x8 && ~x9 )
						begin
							y30 = 1'b1;	y31 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && x14 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && x14 && ~x10 && x11 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && x8 && x9 && ~x16 )
						begin
							y3 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && x17 )
						begin
							y3 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && x14 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && x14 && ~x10 && x11 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && x9 && x18 )
						begin
							y3 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && x14 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && x14 && ~x10 && x11 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && x14 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && x14 && ~x10 && x11 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && ~x18 )
						begin
							y3 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && x8 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && x8 && ~x9 )
						begin
							y17 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && ~x8 && x9 )
						begin
							y19 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && ~x8 && ~x9 )
						begin
							y18 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && x8 && x9 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && x8 && ~x9 )
						begin
							y22 = 1'b1;	y23 = 1'b1;	y24 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && ~x8 && x9 )
						begin
							y20 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && ~x8 && ~x9 )
						begin
							y21 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x6 && ~x3 && x12 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x6 && ~x3 && x12 && ~x4 && x5 )
						begin
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x6 && ~x3 && x12 && ~x4 && ~x5 )
						begin
							y14 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 && ~x3 && ~x12 && x4 && x5 )
						begin
							y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 && ~x3 && ~x12 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x6 && ~x3 && ~x12 && ~x4 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s6;
				s7 : if( x14 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && ~x10 && x11 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x14 )
						nx_state = s1;
					else nx_state = s7;
				s8 : if( x12 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else if( x12 && ~x4 && x5 )
						begin
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s10;
						end
					else if( x12 && ~x4 && ~x5 )
						begin
							y14 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x12 && x4 && x5 )
						begin
							y11 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x12 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x12 && ~x4 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y12 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y14 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s11;
				s12 : if( x5 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x5 )
						begin
							y10 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s13;
				s14 : if( x13 )
						begin
							y3 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x13 && x14 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && x14 && ~x10 && x11 )
						begin
							y34 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x13 && ~x14 )
						nx_state = s1;
					else nx_state = s14;

			default : nx_state = 0;
		endcase
	end
endmodule
