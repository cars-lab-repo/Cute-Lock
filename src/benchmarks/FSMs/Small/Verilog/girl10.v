module girl10 ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, 
	y1, y2, y3, y4, y6, y7, y8, y9, y10);

input clk, rst, x1, x2, x3, x4, x5, x6, x7;
output y1, y2, y3, y4, y6, y7, y8, y9, y10;
reg y1, y2, y3, y4, y6, y7, y8, y9, y10;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6;
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
			y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	y9 = 1'b0;	
			y10 = 1'b0;	
		case ( pr_state )
				s1 : if( x6 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x6 && x7 )
						begin
							y6 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x6 && ~x7 )
						begin
							y3 = 1'b1;	y6 = 1'b1;	y10 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s1;
				s2 : if( x4 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s2;
						end
					else if( x4 && ~x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s2;
				s3 : if( x1 && x2 && x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && x2 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s6;
						end
					else if( x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x1 )
						begin
							y4 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s4;
				s5 : if( x5 )
						nx_state = s1;
					else if( ~x5 && x1 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x5 && ~x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s6;

			default : nx_state = 0;
		endcase
	end
endmodule
