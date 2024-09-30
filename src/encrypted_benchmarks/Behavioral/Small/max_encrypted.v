/******** Key Information: *********** 
Key 1:   bin: '11010000111111001001011000'    dec: 54784600
Key 2:   bin: '01010110010101010100011001'    dec: 22631705
Key 3:   bin: '01111101110111001101110010'    dec: 32994162
Key 4:   bin: '11011010010110100100101101'    dec: 57239853
Key 5:   bin: '10110101000111101010000100'    dec: 47479428
Key 6:   bin: '00101000010011000110100000'    dec: 10564000
Key 7:   bin: '10111111111101100011101011'    dec: 50321643
Key 8:   bin: '01101110011101100000111001'    dec: 28956729
**************************************/

module max (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41;
reg[8:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 167) ? 0 : counter + 1;
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
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s19;
		end
		if ( counter > 20 && counter <= 41 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s15;
		end
		if ( counter > 41 && counter <= 62 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s26;
		end
		if ( counter > 62 && counter <= 83 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s8;
		end
		if ( counter > 83 && counter <= 104 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s9;
		end
		if ( counter > 104 && counter <= 125 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s25;
		end
		if ( counter > 125 && counter <= 146 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s4;
		end
		if ( counter > 146 && counter <= 167 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s13;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26)
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
			y37 = 1'b0;	y38 = 1'b0;	y39 = 1'b0;	y40 = 1'b0;	
			y41 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y7 = 1'b1;	
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
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y5 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s6;
				s7 : if( x3 && x5 && x6 && x21 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y31 = 1'b1;	y34 = 1'b1;	y35 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x5 && x6 && x21 && ~x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y34 = 1'b1;	y36 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x5 && x6 && ~x21 && x22 && x10 && x24 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x3 && x5 && x6 && ~x21 && x22 && x10 && ~x24 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x5 && x6 && ~x21 && x22 && x10 && ~x24 && x26 && ~x25 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x21 && x22 && x10 && ~x24 && ~x26 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x21 && x22 && ~x10 && x25 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x3 && x5 && x6 && ~x21 && x22 && ~x10 && ~x25 && x26 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x5 && x6 && ~x21 && x22 && ~x10 && ~x25 && x26 && ~x24 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x21 && x22 && ~x10 && ~x25 && ~x26 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x21 && ~x22 && x23 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x5 && x6 && ~x21 && ~x22 && x23 && ~x10 )
						begin
							y22 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x5 && x6 && ~x21 && ~x22 && ~x23 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x5 && x6 && ~x21 && ~x22 && ~x23 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x5 && x6 && ~x21 && ~x22 && ~x23 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x21 && ~x22 && ~x23 && ~x26 )
						nx_state = s1;
					else if( x3 && x5 && ~x6 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y26 = 1'b1;	
							y37 = 1'b1;	y38 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x5 && ~x6 && ~x7 && x8 )
						begin
							y5 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x5 && ~x6 && ~x7 && ~x8 && x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x5 && ~x6 && ~x7 && ~x8 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x3 && ~x5 && x6 && x8 && x9 && x14 )
						begin
							y33 = 1'b1;	
							nx_state = s11;
						end
					else if( x3 && ~x5 && x6 && x8 && x9 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x3 && ~x5 && x6 && x8 && ~x9 && x10 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y15 = 1'b1;	
							nx_state = s13;
						end
					else if( x3 && ~x5 && x6 && x8 && ~x9 && ~x10 && x13 && x14 )
						begin
							y33 = 1'b1;	
							nx_state = s11;
						end
					else if( x3 && ~x5 && x6 && x8 && ~x9 && ~x10 && x13 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x3 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( x3 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && ~x26 )
						nx_state = s1;
					else if( x3 && ~x5 && x6 && ~x8 && x9 && x10 && x11 && x14 )
						begin
							y33 = 1'b1;	
							nx_state = s11;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && x10 && x11 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( x3 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && ~x26 )
						nx_state = s1;
					else if( x3 && ~x5 && x6 && ~x8 && x9 && ~x10 && x12 && x14 )
						begin
							y33 = 1'b1;	
							nx_state = s11;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && ~x10 && x12 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( x3 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && ~x26 )
						nx_state = s1;
					else if( x3 && ~x5 && x6 && ~x8 && ~x9 && x10 && x14 )
						begin
							y33 = 1'b1;	
							nx_state = s11;
						end
					else if( x3 && ~x5 && x6 && ~x8 && ~x9 && x10 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x3 && ~x5 && x6 && ~x8 && ~x9 && ~x10 )
						begin
							y30 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && ~x5 && ~x6 && x8 )
						begin
							y5 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && ~x5 && ~x6 && ~x8 && x14 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	y39 = 1'b1;	
							y40 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && ~x5 && ~x6 && ~x8 && ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x3 )
						begin
							y5 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s8;
				s9 : if( x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x26 )
						nx_state = s1;
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y9 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s10;
				s11 : if( x19 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x19 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x19 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x19 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x19 && ~x26 )
						nx_state = s1;
					else nx_state = s11;
				s12 : if( x15 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y23 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && ~x16 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s12;
				s13 : if( x14 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s9;
						end
					else if( x14 && ~x5 && x6 )
						begin
							y33 = 1'b1;	
							nx_state = s11;
						end
					else if( x14 && ~x5 && ~x6 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	y39 = 1'b1;	
							y40 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x14 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y11 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s13;
				s14 : if( x4 )
						begin
							y10 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x4 && x5 && x6 && x21 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y31 = 1'b1;	y34 = 1'b1;	y35 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && x5 && x6 && x21 && ~x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y34 = 1'b1;	y36 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && x5 && x6 && ~x21 && x22 && x10 && x24 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x4 && x5 && x6 && ~x21 && x22 && x10 && ~x24 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && x5 && x6 && ~x21 && x22 && x10 && ~x24 && x26 && ~x25 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x21 && x22 && x10 && ~x24 && ~x26 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x21 && x22 && ~x10 && x25 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x4 && x5 && x6 && ~x21 && x22 && ~x10 && ~x25 && x26 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && x5 && x6 && ~x21 && x22 && ~x10 && ~x25 && x26 && ~x24 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x21 && x22 && ~x10 && ~x25 && ~x26 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x21 && ~x22 && x23 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && x5 && x6 && ~x21 && ~x22 && x23 && ~x10 )
						begin
							y22 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && x5 && x6 && ~x21 && ~x22 && ~x23 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && x5 && x6 && ~x21 && ~x22 && ~x23 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && x5 && x6 && ~x21 && ~x22 && ~x23 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x21 && ~x22 && ~x23 && ~x26 )
						nx_state = s1;
					else if( ~x4 && x5 && ~x6 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y26 = 1'b1;	
							y37 = 1'b1;	y38 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && x5 && ~x6 && ~x7 && x8 )
						begin
							y5 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && x5 && ~x6 && ~x7 && ~x8 && x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x15 && x9 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x15 && x9 && ~x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x15 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && x6 && x8 && x9 && x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && ~x5 && x6 && x8 && x9 && ~x15 && x17 )
						begin
							y31 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && ~x5 && x6 && x8 && x9 && ~x15 && ~x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && x10 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y15 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && ~x10 && x13 && x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && ~x10 && x13 && ~x15 && x17 )
						begin
							y31 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && ~x10 && x13 && ~x15 && ~x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x4 && ~x5 && x6 && x8 && ~x9 && ~x10 && ~x13 && ~x26 )
						nx_state = s1;
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && x10 && x11 && x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && x10 && x11 && ~x15 && x17 )
						begin
							y31 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && x10 && x11 && ~x15 && ~x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && x10 && ~x11 && ~x26 )
						nx_state = s1;
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && ~x10 && x12 && x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && ~x10 && x12 && ~x15 && x17 )
						begin
							y31 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && ~x10 && x12 && ~x15 && ~x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x4 && ~x5 && x6 && ~x8 && x9 && ~x10 && ~x12 && ~x26 )
						nx_state = s1;
					else if( ~x4 && ~x5 && x6 && ~x8 && ~x9 && x10 && x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && ~x9 && x10 && ~x15 && x17 )
						begin
							y31 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && ~x9 && x10 && ~x15 && ~x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && x6 && ~x8 && ~x9 && ~x10 )
						begin
							y30 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && ~x6 && x8 )
						begin
							y5 = 1'b1;	y23 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x8 && x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x8 && ~x15 )
						begin
							y5 = 1'b1;	y23 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y39 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s14;
				s15 : if( x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y23 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x16 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s16;
				s17 : if( 1'b1 )
						begin
							y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s18;
				s19 : if( x20 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x20 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x20 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x20 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x20 && ~x26 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y25 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x17 )
						begin
							y31 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && ~x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y28 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s22;
				s23 : if( x5 && x9 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s24;
						end
					else if( x5 && x9 && ~x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s9;
						end
					else if( x5 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y26 = 1'b1;	
							y29 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x5 && x6 && x17 )
						begin
							y32 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x5 && x6 && ~x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x5 && ~x6 )
						begin
							y5 = 1'b1;	y26 = 1'b1;	y29 = 1'b1;	
							y39 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y26 = 1'b1;	
							y29 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s24;
				s25 : if( x18 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x18 && x26 && x25 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x18 && x26 && ~x25 && x24 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x18 && x26 && ~x25 && ~x24 )
						nx_state = s1;
					else if( ~x18 && ~x26 )
						nx_state = s1;
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y29 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s26;

			default : nx_state = 0;
		endcase
	end
endmodule
