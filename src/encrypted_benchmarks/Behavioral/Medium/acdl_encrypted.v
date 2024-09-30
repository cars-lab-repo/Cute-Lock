/******** Key Information: *********** 
Key 1:   bin: '0110001001010111'    dec: 25175
Key 2:   bin: '0111000111110010'    dec: 29170
Key 3:   bin: '1000011111100111'    dec: 34791
Key 4:   bin: '0111100101101110'    dec: 31086
Key 5:   bin: '1110101011101001'    dec: 60137
**************************************/

module acdl (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27;
reg[6:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 59) ? 0 : counter + 1;
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
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s21;
		end
		if ( counter > 11 && counter <= 23 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 23 && counter <= 35 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s1;
		end
		if ( counter > 35 && counter <= 47 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s14;
		end
		if ( counter > 47 && counter <= 59 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s20;
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
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y23 = 1'b0;	y24 = 1'b0;	
			y25 = 1'b0;	y26 = 1'b0;	y27 = 1'b0;	
		case ( pr_state )
				s1 : if( x15 && x16 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && x16 && ~x5 && ~x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( x15 && ~x16 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && ~x1 )
						nx_state = s1;
					else if( ~x15 && x1 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && x1 && ~x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x1 )
						begin
							y11 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s1;
				s2 : if( x15 && x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s2;
				s3 : if( x15 && x16 && x6 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x16 && x6 && ~x5 )
						begin
							y11 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && x16 && ~x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && ~x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s3;
				s4 : if( x15 && x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s4;
					else if( ~x15 && x16 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 && x14 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s4;
				s5 : if( x15 && x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x2 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x2 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && ~x2 )
						nx_state = s5;
					else if( ~x15 && x16 && x4 && x1 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x1 && ~x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x1 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && x4 && ~x1 && ~x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x16 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s5;
				s6 : if( x15 && x16 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && ~x16 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x1 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x1 && ~x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x1 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && x4 && ~x1 && ~x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s6;
				s7 : if( x15 && x16 && x5 )
						begin
							y11 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else if( x15 && ~x16 && x13 && x11 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s7;
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s7;
					else if( ~x15 && x16 && x2 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && ~x2 && x4 && x5 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x16 && ~x2 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && ~x2 && x4 && ~x5 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && ~x2 && ~x4 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 )
						nx_state = s1;
					else nx_state = s7;
				s8 : if( x16 && x15 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( x16 && x15 && ~x5 )
						begin
							y11 = 1'b1;	
							nx_state = s5;
						end
					else if( x16 && ~x15 && x4 )
						nx_state = s1;
					else if( x16 && ~x15 && ~x4 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x16 && ~x15 && ~x4 && ~x2 && x1 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( x16 && ~x15 && ~x4 && ~x2 && ~x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x16 && x15 && x12 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x16 && x15 && ~x12 )
						nx_state = s8;
					else if( ~x16 && ~x15 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s8;
				s9 : if( x16 && x15 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s18;
						end
					else if( x16 && ~x15 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x16 && ~x15 && ~x2 && x1 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( x16 && ~x15 && ~x2 && ~x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x16 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s9;
				s10 : if( x15 && x16 && x5 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && ~x4 )
						nx_state = s1;
					else if( x15 && x16 && x5 && ~x1 && x2 && ~x3 )
						nx_state = s1;
					else if( x15 && x16 && x5 && ~x1 && ~x2 )
						nx_state = s1;
					else if( x15 && x16 && ~x5 && x6 )
						nx_state = s1;
					else if( x15 && x16 && ~x5 && ~x6 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && ~x4 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && ~x3 )
						nx_state = s1;
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && ~x2 )
						nx_state = s1;
					else if( x15 && ~x16 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && ~x16 )
						nx_state = s1;
					else nx_state = s10;
				s11 : if( x15 && x16 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && x16 && ~x1 && x5 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && x2 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && x2 && ~x3 )
						nx_state = s1;
					else if( x15 && x16 && ~x1 && ~x5 && x6 && ~x2 )
						nx_state = s1;
					else if( x15 && x16 && ~x1 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x15 && ~x16 && x7 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x15 && ~x16 && ~x7 && x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s11;
					else if( ~x15 && x16 && x5 && x4 && x2 )
						begin
							y11 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && x16 && x5 && x4 && ~x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x16 && x5 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && x16 && ~x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x2 && x3 && x11 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && ~x16 && x2 && x3 && ~x11 && x4 && x12 && x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x16 && x2 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s11;
					else if( ~x15 && ~x16 && x2 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s11;
					else if( ~x15 && ~x16 && x2 && x3 && ~x11 && ~x4 )
						nx_state = s11;
					else if( ~x15 && ~x16 && x2 && ~x3 && x4 && x11 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && x4 && ~x11 && x12 && ~x13 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && x4 && ~x11 && ~x12 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && x5 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && x2 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x2 )
						nx_state = s11;
					else nx_state = s11;
				s12 : if( x16 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x16 && x15 && x8 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x16 && x15 && ~x8 && x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && x10 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s12;
					else if( ~x16 && ~x15 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s12;
				s13 : if( x15 && x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 )
						nx_state = s1;
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && ~x4 && x2 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && ~x4 && x2 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && ~x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s13;
				s14 : if( x15 && x16 )
						nx_state = s1;
					else if( x15 && ~x16 && x13 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s14;
					else if( ~x15 && x16 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x16 )
						nx_state = s1;
					else nx_state = s14;
				s15 : if( x15 && x16 && x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s15;
					else if( ~x15 && x16 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x16 && x13 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && ~x16 && ~x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s15;
				s16 : if( x15 && x16 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && x2 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x2 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && ~x2 )
						nx_state = s16;
					else if( ~x15 && x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && ~x1 && x16 && x4 && x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && ~x1 && x16 && x4 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && ~x1 && x16 && ~x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x1 && ~x16 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s16;
				s17 : if( x15 && x16 )
						nx_state = s1;
					else if( x15 && ~x16 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x12 && x13 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && ~x16 && x12 && x13 && ~x3 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && ~x16 && x12 && x13 && ~x3 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && ~x16 && x12 && ~x13 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y22 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 && ~x12 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s17;
				s18 : if( x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x14 && x13 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x14 && ~x13 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && ~x14 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s18;
				s19 : if( x15 && x16 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s22;
						end
					else if( x15 && ~x16 && x11 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y14 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && ~x11 && x10 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && ~x16 && ~x11 && ~x10 )
						nx_state = s19;
					else if( ~x15 && x16 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x16 && ~x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s21;
				s22 : if( x15 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y23 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s22;

			default : nx_state = 0;
		endcase
	end
endmodule
