/******** Key Information: *********** 
Key 1:   bin: '1111110011010110'    dec: 64726
Key 2:   bin: '0110001111011100'    dec: 25564
Key 3:   bin: '0000001000110110'    dec: 566
Key 4:   bin: '1101100101000000'    dec: 55616
Key 5:   bin: '1001010010110110'    dec: 38070
**************************************/

module e161 (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17;
reg[7:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 64) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 12 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s3;
		end
		if ( counter > 12 && counter <= 25 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s4;
		end
		if ( counter > 25 && counter <= 38 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s7;
		end
		if ( counter > 38 && counter <= 51 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s6;
		end
		if ( counter > 51 && counter <= 64 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s2;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	
		case ( pr_state )
				s1 : if( x7 && x9 && x5 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s2;
						end
					else if( x7 && x9 && x5 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x7 && x9 && x5 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x7 && x9 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x7 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x7 && x1 && x15 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x7 && x1 && x15 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x7 && x1 && ~x15 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x7 && ~x1 && x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x7 && ~x1 && ~x8 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x7 && ~x1 && ~x8 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s1;
				s2 : if( x12 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x12 )
						nx_state = s2;
					else nx_state = s2;
				s3 : if( x13 && x6 && x10 && x16 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x13 && x6 && x10 && ~x16 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && x6 && ~x10 )
						nx_state = s3;
					else if( x13 && ~x6 )
						nx_state = s1;
					else if( ~x13 && x15 && x4 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x13 && x15 && x4 && ~x10 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x13 && x15 && ~x4 )
						nx_state = s3;
					else if( ~x13 && ~x15 )
						nx_state = s1;
					else nx_state = s3;
				s4 : if( x12 && x14 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x12 && ~x14 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x12 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s4;
				s5 : if( x7 && x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s4;
						end
					else if( x7 && ~x11 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x7 && ~x11 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x7 && x1 && x16 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x7 && x1 && ~x16 )
						begin
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x7 && ~x1 )
						nx_state = s5;
					else nx_state = s5;
				s6 : if( x1 && x16 )
						begin
							y1 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x16 )
						begin
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x1 )
						nx_state = s6;
					else nx_state = s6;
				s7 : if( x10 && x7 && x3 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x7 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x7 && ~x3 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x7 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( x10 && ~x7 && ~x9 && x1 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x9 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && x5 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && ~x5 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && ~x9 && x1 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x9 && ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s9;
				s10 : if( x1 )
						nx_state = s1;
					else if( ~x1 )
						begin
							y1 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s10;
				s11 : if( x4 )
						begin
							y12 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 )
						nx_state = s11;
					else nx_state = s11;

			default : nx_state = 0;
		endcase
	end
endmodule
