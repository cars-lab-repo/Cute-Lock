/******** Key Information: *********** 
Key 1:   bin: '000010010010101'    dec: 1173
Key 2:   bin: '110100100100010'    dec: 26914
Key 3:   bin: '010111100101110'    dec: 12078
Key 4:   bin: '110011101001010'    dec: 26442
Key 5:   bin: '111111010111010'    dec: 32442
**************************************/

module v110 (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18;
reg[6:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 44) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 8 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s16;
		end
		if ( counter > 8 && counter <= 17 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s8;
		end
		if ( counter > 17 && counter <= 26 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s9;
		end
		if ( counter > 26 && counter <= 35 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s10;
		end
		if ( counter > 35 && counter <= 44 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s18;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	
		case ( pr_state )
				s1 : if( x13 && x15 && x10 && x1 && x14 && x3 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s2;
						end
					else if( x13 && x15 && x10 && x1 && x14 && x3 && ~x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && x10 && x1 && x14 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && x10 && x1 && ~x14 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s4;
						end
					else if( x13 && x15 && x10 && x1 && ~x14 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && x10 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else if( x13 && x15 && ~x10 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else if( x13 && x15 && ~x10 && ~x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s4;
						end
					else if( x13 && ~x15 && x11 && x14 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( x13 && ~x15 && x11 && x14 && ~x8 && x5 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && ~x15 && x11 && x14 && ~x8 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && x11 && ~x14 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s8;
						end
					else if( x13 && ~x15 && x11 && ~x14 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && ~x11 && x14 && x10 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( x13 && ~x15 && ~x11 && x14 && x10 && ~x7 && x1 && x5 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && ~x15 && ~x11 && x14 && x10 && ~x7 && x1 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && ~x11 && x14 && x10 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else if( x13 && ~x15 && ~x11 && x14 && ~x10 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( x13 && ~x15 && ~x11 && ~x14 && x1 && x10 && x5 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && ~x15 && ~x11 && ~x14 && x1 && x10 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && ~x11 && ~x14 && x1 && ~x10 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && ~x15 && ~x11 && ~x14 && ~x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x13 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s1;
				s2 : if( x15 && x13 && x14 && x10 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && x13 && x14 && x10 && ~x4 )
						nx_state = s2;
					else if( x15 && x13 && x14 && ~x10 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && x13 && ~x14 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x13 && ~x14 && ~x3 && x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( x15 && x13 && ~x14 && ~x3 && ~x2 )
						nx_state = s2;
					else if( x15 && ~x13 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x13 && ~x3 && x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( x15 && ~x13 && ~x3 && ~x2 )
						nx_state = s2;
					else if( ~x15 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x3 && x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x15 && ~x3 && ~x2 )
						nx_state = s2;
					else nx_state = s2;
				s3 : if( x13 && x10 && x4 && x15 && x3 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x13 && x10 && x4 && x15 && x3 && ~x14 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( x13 && x10 && x4 && x15 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && x10 && x4 && ~x15 && x11 && x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && x10 && x4 && ~x15 && x11 && ~x14 && x3 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( x13 && x10 && x4 && ~x15 && x11 && ~x14 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && x10 && x4 && ~x15 && ~x11 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && x10 && ~x4 )
						nx_state = s3;
					else if( x13 && ~x10 && x15 && x14 )
						nx_state = s1;
					else if( x13 && ~x10 && x15 && ~x14 )
						begin
							y5 = 1'b1;	
							nx_state = s2;
						end
					else if( x13 && ~x10 && ~x15 && x11 && x4 && x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && ~x10 && ~x15 && x11 && x4 && ~x14 && x3 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s13;
						end
					else if( x13 && ~x10 && ~x15 && x11 && x4 && ~x14 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && ~x10 && ~x15 && x11 && ~x4 )
						nx_state = s3;
					else if( x13 && ~x10 && ~x15 && ~x11 )
						nx_state = s1;
					else if( ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s3;
				s4 : if( x13 && x15 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && x15 && ~x14 && x10 && x2 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s14;
						end
					else if( x13 && x15 && ~x14 && x10 && x2 && ~x6 )
						begin
							y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x13 && x15 && ~x14 && x10 && ~x2 )
						nx_state = s4;
					else if( x13 && x15 && ~x14 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x13 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s4;
				s5 : if( x13 && x10 )
						nx_state = s1;
					else if( x13 && ~x10 && x15 && x14 && x1 )
						begin
							y5 = 1'b1;	
							nx_state = s2;
						end
					else if( x13 && ~x10 && x15 && x14 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x13 && ~x10 && x15 && ~x14 && x2 && x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else if( x13 && ~x10 && x15 && ~x14 && x2 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( x13 && ~x10 && x15 && ~x14 && ~x2 )
						nx_state = s5;
					else if( x13 && ~x10 && ~x15 && x11 )
						nx_state = s1;
					else if( x13 && ~x10 && ~x15 && ~x11 && x2 && x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else if( x13 && ~x10 && ~x15 && ~x11 && x2 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( x13 && ~x10 && ~x15 && ~x11 && ~x2 )
						nx_state = s5;
					else if( ~x13 && x2 && x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x13 && x2 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y12 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x13 && ~x2 )
						nx_state = s5;
					else nx_state = s5;
				s6 : if( x10 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && x15 && x7 )
						nx_state = s1;
					else if( ~x10 && x15 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x15 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s6;
				s7 : if( x14 && x13 && x10 && x15 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && x13 && x10 && x15 && ~x3 && x2 )
						nx_state = s1;
					else if( x14 && x13 && x10 && x15 && ~x3 && ~x2 )
						nx_state = s7;
					else if( x14 && x13 && x10 && ~x15 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s16;
						end
					else if( x14 && x13 && ~x10 && x15 && x5 )
						begin
							y18 = 1'b1;	
							nx_state = s17;
						end
					else if( x14 && x13 && ~x10 && x15 && ~x5 && x1 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( x14 && x13 && ~x10 && x15 && ~x5 && ~x1 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && x13 && ~x10 && ~x15 && x11 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s16;
						end
					else if( x14 && x13 && ~x10 && ~x15 && ~x11 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && x13 && ~x10 && ~x15 && ~x11 && ~x3 && x2 )
						nx_state = s1;
					else if( x14 && x13 && ~x10 && ~x15 && ~x11 && ~x3 && ~x2 )
						nx_state = s7;
					else if( x14 && ~x13 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x14 && ~x13 && ~x3 && x2 )
						nx_state = s1;
					else if( x14 && ~x13 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x14 && x9 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && x9 && ~x3 && x2 )
						nx_state = s1;
					else if( ~x14 && x9 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x14 && ~x9 && x15 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x14 && ~x9 && x15 && ~x3 && x2 )
						nx_state = s1;
					else if( ~x14 && ~x9 && x15 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x14 && ~x9 && ~x15 && x7 )
						nx_state = s1;
					else if( ~x14 && ~x9 && ~x15 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s7;
				s8 : if( x11 && x14 && x3 )
						nx_state = s1;
					else if( x11 && x14 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x11 && ~x14 && x2 )
						begin
							y18 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x14 && ~x2 )
						nx_state = s8;
					else if( ~x11 && x3 )
						nx_state = s1;
					else if( ~x11 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s8;
				s9 : if( x10 && x13 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && x13 && ~x14 && x15 && x2 && x6 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s14;
						end
					else if( x10 && x13 && ~x14 && x15 && x2 && ~x6 )
						begin
							y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x10 && x13 && ~x14 && x15 && ~x2 )
						nx_state = s9;
					else if( x10 && x13 && ~x14 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && x11 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && x13 && x14 && x15 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && x13 && x14 && ~x15 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && ~x11 && x13 && x14 && ~x15 && ~x1 && x2 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && x13 && x14 && ~x15 && ~x1 && ~x2 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x11 && x13 && ~x14 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s9;
				s10 : if( x13 && x15 && x10 && x14 && x3 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s2;
						end
					else if( x13 && x15 && x10 && x14 && x3 && ~x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && x10 && x14 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && x10 && ~x14 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s4;
						end
					else if( x13 && x15 && x10 && ~x14 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && ~x10 && x14 && x8 && x1 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && x15 && ~x10 && x14 && x8 && ~x1 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && ~x10 && x14 && ~x8 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && x15 && ~x10 && ~x14 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else if( x13 && ~x15 && x11 && x5 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && ~x15 && x11 && x5 && ~x14 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s8;
						end
					else if( x13 && ~x15 && x11 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && ~x11 && x10 && x5 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && ~x15 && ~x11 && x10 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && ~x11 && ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s8;
						end
					else if( x13 && ~x15 && ~x11 && ~x10 && ~x1 && x3 )
						nx_state = s1;
					else if( x13 && ~x15 && ~x11 && ~x10 && ~x1 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s10;
				s11 : if( x13 && x10 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( x13 && x10 && ~x2 && x15 )
						nx_state = s11;
					else if( x13 && x10 && ~x2 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( x13 && ~x10 && x11 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( x13 && ~x10 && ~x11 && x15 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( x13 && ~x10 && ~x11 && ~x15 && x2 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && ~x10 && ~x11 && ~x15 && ~x2 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s11;
				s12 : if( x15 && x13 && x14 && x10 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && x13 && x14 && ~x10 && x1 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x13 && x14 && ~x10 && ~x1 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x13 && ~x14 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x13 && ~x14 && ~x3 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s4;
						end
					else if( x15 && x13 && ~x14 && ~x3 && ~x6 )
						nx_state = s12;
					else if( x15 && ~x13 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x13 && ~x3 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s4;
						end
					else if( x15 && ~x13 && ~x3 && ~x6 )
						nx_state = s12;
					else if( ~x15 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x3 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x3 && ~x6 )
						nx_state = s12;
					else nx_state = s12;
				s13 : if( x2 )
						begin
							y18 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x2 )
						nx_state = s13;
					else nx_state = s13;
				s14 : if( x10 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x4 )
						nx_state = s14;
					else if( ~x10 && x5 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x5 && ~x6 && x7 )
						nx_state = s1;
					else if( ~x10 && x5 && ~x6 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x5 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x5 && ~x4 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s14;
				s15 : if( x10 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x4 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s15;
				s16 : if( x10 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x4 )
						nx_state = s16;
					else if( ~x10 && x15 )
						nx_state = s1;
					else if( ~x10 && ~x15 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && ~x15 && ~x4 )
						nx_state = s16;
					else nx_state = s16;
				s17 : if( x9 )
						begin
							y16 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x9 )
						nx_state = s17;
					else nx_state = s17;
				s18 : if( x13 && x15 && x10 && x14 && x3 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s2;
						end
					else if( x13 && x15 && x10 && x14 && x3 && ~x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && x10 && x14 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && x10 && ~x14 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							nx_state = s4;
						end
					else if( x13 && x15 && x10 && ~x14 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && x15 && ~x10 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && x15 && ~x10 && ~x14 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s14;
						end
					else if( x13 && ~x15 && x11 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( x13 && ~x15 && x11 && ~x3 && x5 && x7 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && x11 && ~x3 && x5 && ~x7 )
						nx_state = s18;
					else if( x13 && ~x15 && x11 && ~x3 && ~x5 && x12 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && x11 && ~x3 && ~x5 && ~x12 )
						nx_state = s18;
					else if( x13 && ~x15 && ~x11 && x10 && x5 )
						begin
							y5 = 1'b1;	
							nx_state = s7;
						end
					else if( x13 && ~x15 && ~x11 && x10 && ~x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x15 && ~x11 && ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s8;
						end
					else if( x13 && ~x15 && ~x11 && ~x10 && ~x1 && x3 )
						nx_state = s1;
					else if( x13 && ~x15 && ~x11 && ~x10 && ~x1 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x13 && ~x3 && x5 && x7 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && ~x3 && x5 && ~x7 )
						nx_state = s18;
					else if( ~x13 && ~x3 && ~x5 && x12 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && ~x3 && ~x5 && ~x12 )
						nx_state = s18;
					else nx_state = s18;

			default : nx_state = 0;
		endcase
	end
endmodule
