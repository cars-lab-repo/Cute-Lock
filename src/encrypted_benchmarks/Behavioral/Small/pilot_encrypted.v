/******** Key Information: *********** 
Key 1:   bin: '001000000110000100000011100'    dec: 16975900
Key 2:   bin: '101001111110110110010101100'    dec: 88042668
Key 3:   bin: '010001001011111001111001110'    dec: 36041678
Key 4:   bin: '101111011010111001011101110'    dec: 99447534
Key 5:   bin: '011110000101110110011011000'    dec: 63106264
Key 6:   bin: '011000001110111101100000010'    dec: 50821890
Key 7:   bin: '011101010001111011100010111'    dec: 61404951
Key 8:   bin: '011101001001000010110101000'    dec: 61113768
Key 9:   bin: '000101011100100010110100111'    dec: 11421095
**************************************/

module pilot (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x24, x25, x26, x27, 
	y1, y2, y3, y4, y5, y6, y7, y8, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x24, x25, x26, x27;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26;
output y1, y2, y3, y4, y5, y6, y7, y8, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22;
reg[8:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 188) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 20 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s16;
		end
		if ( counter > 20 && counter <= 41 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s3;
		end
		if ( counter > 41 && counter <= 62 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s13;
		end
		if ( counter > 62 && counter <= 83 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s1;
		end
		if ( counter > 83 && counter <= 104 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s5;
		end
		if ( counter > 104 && counter <= 125 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s17;
		end
		if ( counter > 125 && counter <= 146 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s6;
		end
		if ( counter > 146 && counter <= 167 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s8;
		end
		if ( counter > 167 && counter <= 188 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s7;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x24 or x25 or x26 or x27)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y11 = 1'b0;	y12 = 1'b0;	y13 = 1'b0;	y14 = 1'b0;	
			y15 = 1'b0;	y16 = 1'b0;	y17 = 1'b0;	y18 = 1'b0;	
			y19 = 1'b0;	y20 = 1'b0;	y21 = 1'b0;	y22 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x25 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s2;
						end
					else if( x1 && ~x25 && x26 && x27 )
						begin
							y14 = 1'b1;	
							nx_state = s3;
						end
					else if( x1 && ~x25 && x26 && ~x27 && x2 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else if( x1 && ~x25 && x26 && ~x27 && x2 && ~x4 && x5 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	
							nx_state = s4;
						end
					else if( x1 && ~x25 && x26 && ~x27 && x2 && ~x4 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s5;
						end
					else if( x1 && ~x25 && x26 && ~x27 && ~x2 && x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x1 && ~x25 && x26 && ~x27 && ~x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x1 && ~x25 && ~x26 && x27 && x14 && x12 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else if( x1 && ~x25 && ~x26 && x27 && x14 && ~x12 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( x1 && ~x25 && ~x26 && x27 && ~x14 && x15 && x12 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else if( x1 && ~x25 && ~x26 && x27 && ~x14 && x15 && ~x12 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( x1 && ~x25 && ~x26 && x27 && ~x14 && ~x15 && x16 && x12 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else if( x1 && ~x25 && ~x26 && x27 && ~x14 && ~x15 && x16 && ~x12 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( x1 && ~x25 && ~x26 && x27 && ~x14 && ~x15 && ~x16 )
						begin
							y19 = 1'b1;	
							nx_state = s8;
						end
					else if( x1 && ~x25 && ~x26 && ~x27 && x12 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( x1 && ~x25 && ~x26 && ~x27 && ~x12 )
						begin
							y16 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x1 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s2;
				s3 : if( x7 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x7 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s4;
				s5 : if( x25 && x9 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( x25 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x25 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s5;
				s6 : if( x2 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else if( x2 && ~x4 && x5 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	
							nx_state = s4;
						end
					else if( x2 && ~x4 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x2 && x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s6;
				s7 : if( x25 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s9;
						end
					else if( x25 && ~x7 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x25 && x26 && x7 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x25 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x25 && ~x26 && x12 )
						begin
							y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x25 && ~x26 && ~x12 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s7;
				s8 : if( x17 && x18 && x19 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y17 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( x17 && x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( x17 && ~x18 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x17 && x18 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x17 && ~x18 && x19 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x17 && ~x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s8;
				s9 : if( x25 && x8 )
						begin
							y2 = 1'b1;	y19 = 1'b1;	
							nx_state = s13;
						end
					else if( x25 && ~x8 )
						begin
							y1 = 1'b1;	y17 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x25 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x25 && ~x13 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s9;
				s10 : if( x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s10;
				s11 : if( x25 && x9 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else if( x25 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x25 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x25 && ~x13 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s11;
				s12 : if( x20 && x17 && x18 && x19 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y17 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( x20 && x17 && x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( x20 && x17 && ~x18 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x20 && ~x17 && x18 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( x20 && ~x17 && ~x18 && x19 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x20 && ~x17 && ~x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && x22 && x17 && x18 && x19 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y17 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x20 && x22 && x17 && x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && x22 && x17 && ~x18 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && x22 && ~x17 && x18 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && x22 && ~x17 && ~x18 && x19 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && x22 && ~x17 && ~x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && ~x22 && x21 && x17 && x18 && x19 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y17 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x20 && ~x22 && x21 && x17 && x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && ~x22 && x21 && x17 && ~x18 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && ~x22 && x21 && ~x17 && x18 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && ~x22 && x21 && ~x17 && ~x18 && x19 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && ~x22 && x21 && ~x17 && ~x18 && ~x19 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x20 && ~x22 && ~x21 && x2 && x24 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x20 && ~x22 && ~x21 && x2 && x24 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x20 && ~x22 && ~x21 && x2 && ~x24 )
						begin
							y2 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x20 && ~x22 && ~x21 && ~x2 && x24 )
						begin
							y1 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x20 && ~x22 && ~x21 && ~x2 && ~x24 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x20 && ~x22 && ~x21 && ~x2 && ~x24 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y21 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s13;
				s14 : if( x2 && x24 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s5;
						end
					else if( x2 && x24 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s14;
						end
					else if( x2 && ~x24 )
						begin
							y2 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x2 && x24 )
						begin
							y1 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x2 && ~x24 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x2 && ~x24 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s14;
				s15 : if( x9 && x10 )
						begin
							y21 = 1'b1;	
							nx_state = s15;
						end
					else if( x9 && ~x10 && x8 )
						begin
							y5 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x9 && ~x10 && ~x8 )
						begin
							y4 = 1'b1;	y18 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s15;
				s16 : if( x11 )
						begin
							y1 = 1'b1;	y22 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s16;
				s17 : if( x11 )
						begin
							y2 = 1'b1;	y22 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s17;
				s18 : if( x10 )
						begin
							y21 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x8 )
						begin
							y5 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x8 )
						begin
							y4 = 1'b1;	y18 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s18;

			default : nx_state = 0;
		endcase
	end
endmodule
