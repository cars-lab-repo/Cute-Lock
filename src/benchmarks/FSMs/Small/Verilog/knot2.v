module knot2 ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9);

input clk, rst, x1, x2, x3, x4, x5, x6, x7;
output y1, y2, y3, y4, y5, y6, y7, y8, y9;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9;
integer pr_state;
integer nx_state;

always@ ( posedge rst or negedge clk )
begin
	if ( rst == 1'b1 )
		pr_state = s1;
	else
		pr_state = nx_state;
end

always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x2 && x3 && x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x1 && ~x2 && x3 && ~x6 && x7 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s3;
						end
					else if( x1 && ~x2 && x3 && ~x6 && ~x7 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x1 && ~x2 && ~x3 )
						begin
							y1 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s1;
				s2 : if( x4 && x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s2;
						end
					else if( x4 && x5 && ~x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	
							nx_state = s6;
						end
					else if( x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x4 )
						begin
							y3 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s2;
				s3 : if( x6 && x4 && x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s2;
						end
					else if( x6 && x4 && x5 && ~x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	
							nx_state = s6;
						end
					else if( x6 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else if( x6 && ~x4 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s3;
				s4 : if( x4 && x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s2;
						end
					else if( x4 && x5 && ~x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	
							nx_state = s6;
						end
					else if( x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s4;
				s5 : if( x3 )
						begin
							y4 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x3 && x4 && x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x3 && x4 && x5 && ~x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x3 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x3 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s5;
				s6 : if( x2 )
						begin
							y3 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x2 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s6;
				s7 : if( x2 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x2 && x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x2 && ~x1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s7;
				s8 : if( x3 && x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x3 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x3 && x4 && x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x3 && x4 && x5 && ~x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x3 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x3 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s8;
				s9 : if( x6 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s9;
						end
					else if( x6 && ~x3 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s2;
						end
					else if( x6 && ~x3 && ~x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s9;

			default : nx_state = 0;
		endcase
	end
endmodule
