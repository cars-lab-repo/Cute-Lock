/******** Key Information: *********** 
Key 1:   bin: '101110100111000001'    dec: 190913
Key 2:   bin: '011011000111011000'    dec: 111064
Key 3:   bin: '111100001011001011'    dec: 246475
Key 4:   bin: '100000100111101100'    dec: 133612
Key 5:   bin: '001010110000101101'    dec: 44077
Key 6:   bin: '000001011111111101'    dec: 6141
**************************************/

module bcomp (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39;
reg[5:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 29) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 4 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s9;
		end
		if ( counter > 4 && counter <= 9 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s7;
		end
		if ( counter > 9 && counter <= 14 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s2;
		end
		if ( counter > 14 && counter <= 19 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s4;
		end
		if ( counter > 19 && counter <= 24 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s5;
		end
		if ( counter > 24 && counter <= 29 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s1;
		end
	end
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
							y2 = 1'b1;	y36 = 1'b1;	y37 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x1 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y14 = 1'b1;	y38 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y7 = 1'b1;	y10 = 1'b1;	y23 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s5;
				s6 : if( x6 && x3 && x7 && x9 )
						begin
							y23 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && x7 && ~x9 )
						begin
							y22 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && x8 && x9 && x11 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && x8 && x9 && ~x11 && x14 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x3 && ~x7 && x8 && x9 && ~x11 && x14 && ~x10 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && x8 && x9 && ~x11 && ~x14 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && x8 && ~x9 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && x8 && ~x9 && ~x10 && x14 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x3 && ~x7 && x8 && ~x9 && ~x10 && x14 && ~x11 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && x8 && ~x9 && ~x10 && ~x14 )
						nx_state = s1;
					else if( x6 && x3 && ~x7 && ~x8 && x9 )
						begin
							y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && x3 && ~x7 && ~x8 && ~x9 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && x14 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && x14 && ~x10 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && x8 && x9 && x16 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && x8 && x9 && ~x16 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && x17 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && x14 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && x14 && ~x10 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && x8 && ~x9 && ~x17 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && x9 && x18 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && x14 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && x14 && ~x10 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && x9 && ~x18 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && x14 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && x14 && ~x10 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && x18 && ~x14 )
						nx_state = s1;
					else if( x6 && ~x3 && x15 && ~x8 && ~x9 && ~x18 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && x8 && x9 )
						begin
							y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && x8 && ~x9 )
						begin
							y33 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && ~x8 && x9 )
						begin
							y39 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && x7 && ~x8 && ~x9 )
						begin
							y32 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && x8 && x9 )
						begin
							y29 = 1'b1;	y30 = 1'b1;	y31 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && x8 && ~x9 )
						begin
							y26 = 1'b1;	y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && ~x8 && x9 )
						begin
							y25 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x3 && ~x15 && ~x7 && ~x8 && ~x9 )
						begin
							y24 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 && x3 )
						begin
							y1 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x6 && ~x3 && x12 && x4 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x6 && ~x3 && x12 && ~x4 && x5 )
						begin
							y2 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x6 && ~x3 && x12 && ~x4 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 && ~x3 && ~x12 && x4 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 && ~x3 && ~x12 && x4 && ~x5 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x6 && ~x3 && ~x12 && ~x4 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s6;
				s7 : if( x14 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && ~x10 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x14 )
						nx_state = s1;
					else nx_state = s7;
				s8 : if( x12 && x4 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( x12 && ~x4 && x5 )
						begin
							y2 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s10;
						end
					else if( x12 && ~x4 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x12 && x4 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x12 && x4 && ~x5 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x12 && ~x4 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s11;
				s12 : if( x5 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x5 )
						begin
							y9 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s13;
				s14 : if( x13 )
						begin
							y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x13 && x14 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x13 && x14 && ~x10 && x11 )
						begin
							y35 = 1'b1;	
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
