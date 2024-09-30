/******** Key Information: *********** 
Key 1:   bin: '100010100101'    dec: 2213
Key 2:   bin: '000000111010'    dec: 58
Key 3:   bin: '110101111011'    dec: 3451
Key 4:   bin: '100110110100'    dec: 2484
**************************************/

module robm (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10;
reg[6:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 47) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 11 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s1;
		end
		if ( counter > 11 && counter <= 23 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s7;
		end
		if ( counter > 23 && counter <= 35 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s4;
		end
		if ( counter > 35 && counter <= 47 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s5;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x11 && x12 )
						begin
							y4 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && x11 && ~x12 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x1 && ~x11 && x12 && x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s4;
						end
					else if( x1 && ~x11 && x12 && ~x8 && x5 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x1 && ~x11 && x12 && ~x8 && ~x5 && x6 )
						begin
							y10 = 1'b1;	
							nx_state = s5;
						end
					else if( x1 && ~x11 && x12 && ~x8 && ~x5 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x11 && ~x12 && x10 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s5;
						end
					else if( x1 && ~x11 && ~x12 && x10 && ~x9 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s4;
						end
					else if( x1 && ~x11 && ~x12 && ~x10 && x9 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x1 && ~x11 && ~x12 && ~x10 && ~x9 )
						begin
							y4 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x1 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s3;
				s4 : if( x4 )
						begin
							y4 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x4 )
						nx_state = s4;
					else nx_state = s4;
				s5 : if( x12 )
						begin
							y2 = 1'b1;	y9 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x12 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s5;
				s6 : if( x2 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s4;
						end
					else if( x2 && ~x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s6;
				s7 : if( x7 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x7 )
						nx_state = s7;
					else nx_state = s7;

			default : nx_state = 0;
		endcase
	end
endmodule
