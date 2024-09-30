/******** Key Information: *********** 
Key 1:   bin: '010001111111111100110011'    dec: 4718387
Key 2:   bin: '010010110111000011101011'    dec: 4944107
Key 3:   bin: '001000001101010000110110'    dec: 2151478
Key 4:   bin: '110011110101101110000101'    dec: 13589381
Key 5:   bin: '110101010000111110011010'    dec: 13963162
Key 6:   bin: '111000111011100001010110'    dec: 14923862
Key 7:   bin: '010011101100111001011011'    dec: 5164635
Key 8:   bin: '000110101011000000000111'    dec: 1748999
**************************************/

module lior (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31;
reg[7:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 119) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 14 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s25;
		end
		if ( counter > 14 && counter <= 29 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s2;
		end
		if ( counter > 29 && counter <= 44 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 44 && counter <= 59 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s3;
		end
		if ( counter > 59 && counter <= 74 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s11;
		end
		if ( counter > 74 && counter <= 89 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s7;
		end
		if ( counter > 89 && counter <= 104 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s9;
		end
		if ( counter > 104 && counter <= 119 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s20;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y23 = 1'b0;	y24 = 1'b0;	
			y25 = 1'b0;	y26 = 1'b0;	y27 = 1'b0;	y28 = 1'b0;	
			y29 = 1'b0;	y30 = 1'b0;	y31 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
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
							y9 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y2 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y10 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s6;
				s7 : if( x3 && x24 && x23 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s9;
						end
					else if( x3 && x24 && x23 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s10;
						end
					else if( x3 && x24 && ~x23 && x5 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x3 && x24 && ~x23 && x5 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x3 && x24 && ~x23 && x5 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x3 && x24 && ~x23 && x5 && ~x20 )
						nx_state = s1;
					else if( x3 && x24 && ~x23 && ~x5 )
						begin
							y14 = 1'b1;	
							nx_state = s12;
						end
					else if( x3 && ~x24 && x5 && x11 && x12 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x24 && x5 && x11 && x12 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x3 && ~x24 && x5 && x11 && ~x12 && x13 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && ~x24 && x5 && x11 && ~x12 && x13 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x3 && ~x24 && x5 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( x3 && ~x24 && x5 && ~x11 )
						nx_state = s1;
					else if( x3 && ~x24 && ~x5 )
						begin
							y14 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s7;
				s8 : if( x24 )
						nx_state = s1;
					else if( ~x24 && x23 && x10 )
						begin
							y25 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x24 && x23 && ~x10 )
						begin
							y23 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x24 && ~x23 )
						nx_state = s1;
					else nx_state = s8;
				s9 : if( x24 && x23 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && x23 && x10 && ~x11 && x12 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && x23 && x10 && ~x11 && ~x12 )
						nx_state = s1;
					else if( x24 && x23 && ~x10 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && x9 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s18;
						end
					else if( x24 && ~x23 && x7 && x9 && x10 && ~x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x23 && x7 && x9 && ~x10 && x13 && x14 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x7 && x9 && ~x10 && x13 && ~x14 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && x9 && ~x10 && x13 && ~x14 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && x9 && ~x10 && ~x13 && x15 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x7 && x9 && ~x10 && ~x13 && ~x15 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && x9 && ~x10 && ~x13 && ~x15 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && ~x9 && x16 && x17 && x18 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x7 && ~x9 && x16 && x17 && ~x18 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && ~x9 && x16 && x17 && ~x18 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && ~x9 && x16 && ~x17 && x19 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x7 && ~x9 && x16 && ~x17 && ~x19 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x7 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && ~x9 && x16 && ~x17 && ~x19 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && x7 && ~x9 && ~x16 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x24 && x7 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x24 && x7 && ~x23 && x8 && x9 && x10 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x24 && x7 && ~x23 && x8 && x9 && ~x10 )
						begin
							y22 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x24 && x7 && ~x23 && x8 && ~x9 && x10 )
						begin
							y21 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x24 && x7 && ~x23 && x8 && ~x9 && ~x10 )
						begin
							y20 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x24 && x7 && ~x23 && ~x8 && x9 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x24 && x7 && ~x23 && ~x8 && x9 && ~x10 )
						begin
							y18 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x24 && x7 && ~x23 && ~x8 && ~x9 )
						begin
							y17 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x24 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s9;
				s10 : if( x24 && x23 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && x23 && x10 && ~x11 && x12 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && x23 && x10 && ~x11 && ~x12 )
						nx_state = s1;
					else if( x24 && x23 && ~x10 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s18;
						end
					else if( x24 && ~x23 && x9 && x10 && ~x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && x14 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && x15 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && x17 && x18 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && x19 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && ~x16 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x24 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x24 && ~x23 && x8 && x9 && x10 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x24 && ~x23 && x8 && x9 && ~x10 )
						begin
							y22 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x24 && ~x23 && x8 && ~x9 && x10 )
						begin
							y21 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x24 && ~x23 && x8 && ~x9 && ~x10 )
						begin
							y20 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x24 && ~x23 && ~x8 && x9 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x24 && ~x23 && ~x8 && x9 && ~x10 )
						begin
							y18 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x24 && ~x23 && ~x8 && ~x9 )
						begin
							y17 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s10;
				s11 : if( x23 && x11 && x12 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && x13 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( x23 && ~x11 )
						nx_state = s1;
					else if( ~x23 && x24 )
						nx_state = s1;
					else if( ~x23 && ~x24 && x11 && x12 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && x13 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x23 && ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s11;
				s12 : if( x24 && x23 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && x23 && x10 && ~x11 && x12 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && x23 && x10 && ~x11 && ~x12 )
						nx_state = s1;
					else if( x24 && x23 && ~x10 )
						nx_state = s1;
					else if( x24 && ~x23 && x6 )
						begin
							y15 = 1'b1;	
							nx_state = s9;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s18;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && x10 && ~x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && x13 && x14 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && x13 && ~x14 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && x13 && ~x14 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && ~x13 && x15 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && ~x13 && ~x15 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && x9 && ~x10 && ~x13 && ~x15 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && x17 && x18 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && x17 && ~x18 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && x17 && ~x18 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && ~x17 && x19 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && ~x17 && ~x19 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && x16 && ~x17 && ~x19 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x6 && x7 && ~x9 && ~x16 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x6 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x24 && x6 )
						begin
							y15 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x24 && ~x6 && x7 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x24 && ~x6 && x7 && ~x23 && x8 && x9 && x10 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x24 && ~x6 && x7 && ~x23 && x8 && x9 && ~x10 )
						begin
							y22 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x24 && ~x6 && x7 && ~x23 && x8 && ~x9 && x10 )
						begin
							y21 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x24 && ~x6 && x7 && ~x23 && x8 && ~x9 && ~x10 )
						begin
							y20 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x24 && ~x6 && x7 && ~x23 && ~x8 && x9 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x24 && ~x6 && x7 && ~x23 && ~x8 && x9 && ~x10 )
						begin
							y18 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x24 && ~x6 && x7 && ~x23 && ~x8 && ~x9 )
						begin
							y17 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x24 && ~x6 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s12;
				s13 : if( x23 && x11 && x12 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && x13 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( x23 && ~x11 )
						nx_state = s1;
					else if( ~x23 )
						nx_state = s1;
					else nx_state = s13;
				s14 : if( x24 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s3;
						end
					else if( x24 && ~x4 && x23 && x5 && x6 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x4 && x23 && x5 && x6 && x10 && ~x11 && x12 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x4 && x23 && x5 && x6 && x10 && ~x11 && ~x12 )
						nx_state = s1;
					else if( x24 && ~x4 && x23 && x5 && x6 && ~x10 )
						nx_state = s1;
					else if( x24 && ~x4 && x23 && x5 && ~x6 && x7 )
						begin
							y17 = 1'b1;	
							nx_state = s25;
						end
					else if( x24 && ~x4 && x23 && x5 && ~x6 && ~x7 )
						begin
							y18 = 1'b1;	
							nx_state = s26;
						end
					else if( x24 && ~x4 && x23 && ~x5 && x6 && x7 && x8 )
						begin
							y14 = 1'b1;	
							nx_state = s12;
						end
					else if( x24 && ~x4 && x23 && ~x5 && x6 && x7 && ~x8 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x4 && x23 && ~x5 && x6 && x7 && ~x8 && x10 && ~x11 && x12 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x4 && x23 && ~x5 && x6 && x7 && ~x8 && x10 && ~x11 && ~x12 )
						nx_state = s1;
					else if( x24 && ~x4 && x23 && ~x5 && x6 && x7 && ~x8 && ~x10 )
						nx_state = s1;
					else if( x24 && ~x4 && x23 && ~x5 && x6 && ~x7 && x9 )
						begin
							y14 = 1'b1;	
							nx_state = s12;
						end
					else if( x24 && ~x4 && x23 && ~x5 && x6 && ~x7 && ~x9 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x4 && x23 && ~x5 && x6 && ~x7 && ~x9 && x10 && ~x11 && x12 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x4 && x23 && ~x5 && x6 && ~x7 && ~x9 && x10 && ~x11 && ~x12 )
						nx_state = s1;
					else if( x24 && ~x4 && x23 && ~x5 && x6 && ~x7 && ~x9 && ~x10 )
						nx_state = s1;
					else if( x24 && ~x4 && x23 && ~x5 && ~x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s9;
						end
					else if( x24 && ~x4 && x23 && ~x5 && ~x6 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s10;
						end
					else if( x24 && ~x4 && ~x23 && x8 )
						begin
							y17 = 1'b1;	
							nx_state = s25;
						end
					else if( x24 && ~x4 && ~x23 && ~x8 )
						begin
							y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x24 && x23 && x4 && x8 && x9 && x10 )
						begin
							y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x24 && x23 && x4 && x8 && x9 && ~x10 )
						begin
							y17 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x24 && x23 && x4 && x8 && ~x9 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x24 && x23 && x4 && x8 && ~x9 && ~x10 )
						begin
							y20 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x24 && x23 && x4 && ~x8 && x9 && x10 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x24 && x23 && x4 && ~x8 && x9 && ~x10 )
						begin
							y21 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x24 && x23 && x4 && ~x8 && ~x9 && x10 )
						begin
							y25 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x24 && x23 && x4 && ~x8 && ~x9 && ~x10 )
						begin
							y23 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x24 && x23 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x24 && ~x23 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x24 && ~x23 && ~x4 && x8 && x9 && x10 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x24 && ~x23 && ~x4 && x8 && x9 && ~x10 )
						begin
							y22 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x24 && ~x23 && ~x4 && x8 && ~x9 && x10 )
						begin
							y21 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x24 && ~x23 && ~x4 && x8 && ~x9 && ~x10 )
						begin
							y20 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x24 && ~x23 && ~x4 && ~x8 && x9 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x24 && ~x23 && ~x4 && ~x8 && x9 && ~x10 )
						begin
							y18 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x24 && ~x23 && ~x4 && ~x8 && ~x9 )
						begin
							y17 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y26 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s16;
				s17 : if( x24 && x23 )
						nx_state = s1;
					else if( x24 && ~x23 )
						begin
							y20 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x24 && x11 && x12 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x24 && x11 && x12 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && x13 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x24 && x11 && ~x12 && x13 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s17;
				s18 : if( x24 )
						begin
							y21 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x24 && x11 && x12 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && x13 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s18;
				s19 : if( x23 )
						begin
							y29 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x23 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( ~x23 && ~x20 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( x8 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x8 && x9 && x10 )
						begin
							y27 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x8 && x9 && ~x10 )
						begin
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x8 && ~x9 && x10 )
						begin
							y25 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x8 && ~x9 && ~x10 )
						begin
							y23 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s20;
				s21 : if( x23 && x11 && x12 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && x13 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( x23 && ~x11 )
						nx_state = s1;
					else if( ~x23 && x24 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x24 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x24 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( ~x23 && x24 && ~x20 )
						nx_state = s1;
					else if( ~x23 && ~x24 && x11 && x12 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && x13 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x23 && ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s21;
				s22 : if( x23 && x11 && x12 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && x13 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x23 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( x23 && ~x11 )
						nx_state = s1;
					else if( ~x23 && x24 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x23 && x24 && ~x12 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x24 && ~x12 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x24 && ~x12 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( ~x23 && x24 && ~x12 && ~x20 )
						nx_state = s1;
					else if( ~x23 && ~x24 && x11 && x12 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && x13 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x23 && ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s22;
				s23 : if( x23 )
						begin
							y21 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x23 && x24 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x24 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x23 && x24 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( ~x23 && x24 && ~x20 )
						nx_state = s1;
					else if( ~x23 && ~x24 && x11 && x12 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && x13 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x23 && ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x23 && ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s23;
				s24 : if( x11 && x12 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x11 && ~x12 && x13 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x11 )
						nx_state = s1;
					else nx_state = s24;
				s25 : if( x24 && x23 )
						nx_state = s1;
					else if( x24 && ~x23 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x20 )
						nx_state = s1;
					else if( ~x24 && x11 && x12 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x24 && x11 && x12 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && x13 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x24 && x11 && ~x12 && x13 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s25;
				s26 : if( x24 && x23 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && x10 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s18;
						end
					else if( x24 && ~x23 && x9 && x10 && ~x11 )
						begin
							y19 = 1'b1;	
							nx_state = s17;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && x14 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && ~x10 && x13 && ~x14 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && x15 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && x9 && ~x10 && ~x13 && ~x15 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && x17 && x18 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && x17 && ~x18 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && x19 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && x20 && x21 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && x22 )
						begin
							y23 = 1'b1;	
							nx_state = s11;
						end
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && x20 && ~x21 && ~x22 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && x16 && ~x17 && ~x19 && ~x20 )
						nx_state = s1;
					else if( x24 && ~x23 && ~x9 && ~x16 )
						begin
							y20 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x24 && x11 && x12 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x24 && x11 && x12 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && x13 && x23 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x24 && x11 && ~x12 && x13 && ~x23 )
						begin
							y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x24 && x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x24 && ~x11 )
						nx_state = s1;
					else nx_state = s26;
				s27 : if( x11 && x12 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && ~x12 && x13 )
						begin
							y31 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && ~x12 && ~x13 )
						nx_state = s1;
					else if( ~x11 )
						nx_state = s1;
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y27 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y29 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s31;

			default : nx_state = 0;
		endcase
	end
endmodule
