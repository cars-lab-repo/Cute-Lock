/******** Key Information: *********** 
Key 1:   bin: '1110101011100000001111100110111'    dec: 1970282295
Key 2:   bin: '0101001000011100100010110000111'    dec: 688801159
Key 3:   bin: '1000011100100100001000101000111'    dec: 1133646151
Key 4:   bin: '0010010000001011010110100110100'    dec: 302361908
Key 5:   bin: '1100000010111001111001011101010'    dec: 1616704234
Key 6:   bin: '0000011110100000011011001001110'    dec: 63977038
Key 7:   bin: '1001100111111001010101011001100'    dec: 1291627212
Key 8:   bin: '1100110001011100111011000110111'    dec: 1714320951
Key 9:   bin: '1000100010001001011100111110011'    dec: 1145354739
Key 10:   bin: '1101000000101001101111001000000'    dec: 1746198080
**************************************/

module alf (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, clk,rst,
	, x4, x5, x6, x7, x8, x9, x10, x11, x13, x14, x15,
	x16, x17, x18, x19, x20, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74);

input clk, rst, , x4, x5, x6, x7, x8, x9, x10, x11, x13, x14, x15,
	x16, x17, x18, x19, x20, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74;
reg[5:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54, s55=55, s56=56, s57=57, s58=58, s59=59, s60=60;
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
		if ( counter <= 2 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s1;
		end
		if ( counter > 2 && counter <= 5 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s32;
		end
		if ( counter > 5 && counter <= 8 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s48;
		end
		if ( counter > 8 && counter <= 11 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s56;
		end
		if ( counter > 11 && counter <= 14 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s11;
		end
		if ( counter > 14 && counter <= 17 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s58;
		end
		if ( counter > 17 && counter <= 20 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s28;
		end
		if ( counter > 20 && counter <= 23 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s55;
		end
		if ( counter > 23 && counter <= 26 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 26 && counter <= 29 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s60;
		end
	end
end


always@ ( pr_state or  or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x22 or x23 or x24 or x25 or x26 or x27 or x28 or x29 or x30 or 
	x31)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y23 = 1'b0;	y24 = 1'b0;	
			y27 = 1'b0;	y28 = 1'b0;	y29 = 1'b0;	y30 = 1'b0;	
			y31 = 1'b0;	y32 = 1'b0;	y33 = 1'b0;	y34 = 1'b0;	
			y35 = 1'b0;	y36 = 1'b0;	y37 = 1'b0;	y38 = 1'b0;	
			y39 = 1'b0;	y40 = 1'b0;	y41 = 1'b0;	y42 = 1'b0;	
			y43 = 1'b0;	y44 = 1'b0;	y45 = 1'b0;	y47 = 1'b0;	
			y48 = 1'b0;	y49 = 1'b0;	y50 = 1'b0;	y51 = 1'b0;	
			y52 = 1'b0;	y53 = 1'b0;	y54 = 1'b0;	y55 = 1'b0;	
			y56 = 1'b0;	y57 = 1'b0;	y58 = 1'b0;	y59 = 1'b0;	
			y60 = 1'b0;	y61 = 1'b0;	y62 = 1'b0;	y63 = 1'b0;	
			y64 = 1'b0;	y65 = 1'b0;	y66 = 1'b0;	y67 = 1'b0;	
			y68 = 1'b0;	y69 = 1'b0;	y70 = 1'b0;	y71 = 1'b0;	
			y72 = 1'b0;	y73 = 1'b0;	y74 = 1'b0;	
		case ( pr_state )
				s1 : if( x6 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x6 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y2 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s3;
				s4 : if( x29 && x5 && x4 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else if( x29 && x5 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s5;
						end
					else if( x29 && ~x5 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x29 && ~x5 && ~x4 )
						begin
							y8 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x29 && x30 && x4 && x31 && x15 && x5 )
						begin
							y28 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x29 && x30 && x4 && x31 && x15 && ~x5 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x29 && x30 && x4 && x31 && ~x15 && x16 )
						begin
							y28 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x29 && x30 && x4 && x31 && ~x15 && ~x16 && x5 )
						begin
							y47 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x29 && x30 && x4 && x31 && ~x15 && ~x16 && ~x5 )
						begin
							y48 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x29 && x30 && x4 && ~x31 && x5 )
						begin
							y52 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x29 && x30 && x4 && ~x31 && ~x5 )
						begin
							y19 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x29 && x30 && ~x4 && x5 )
						begin
							y27 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x29 && x30 && ~x4 && ~x5 && x31 && x15 )
						begin
							y34 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x29 && x30 && ~x4 && ~x5 && x31 && ~x15 && x16 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x29 && x30 && ~x4 && ~x5 && x31 && ~x15 && ~x16 )
						begin
							y35 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x29 && x30 && ~x4 && ~x5 && ~x31 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x29 && ~x30 && x31 && x4 && x5 && x13 )
						begin
							y29 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x29 && ~x30 && x31 && x4 && x5 && ~x13 )
						begin
							y28 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x29 && ~x30 && x31 && x4 && ~x5 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x29 && ~x30 && x31 && x4 && ~x5 && ~x8 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x29 && ~x30 && x31 && ~x4 && x5 )
						begin
							y12 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x29 && ~x30 && x31 && ~x4 && ~x5 )
						begin
							y14 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x29 && ~x30 && ~x31 && x4 && x5 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x29 && ~x30 && ~x31 && x4 && x5 && ~x8 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x29 && ~x30 && ~x31 && x4 && ~x5 )
						begin
							y12 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x29 && ~x30 && ~x31 && ~x4 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x29 && ~x30 && ~x31 && ~x4 && ~x5 && x9 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x29 && ~x30 && ~x31 && ~x4 && ~x5 && ~x9 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x29 && ~x30 && ~x31 && ~x4 && ~x5 && ~x9 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s4;
				s5 : if( x7 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s5;
				s6 : if( x30 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( x30 && ~x4 )
						begin
							y9 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x30 && x15 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x30 && ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s7;
				s8 : if( x20 )
						begin
							y22 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x20 && x19 )
						begin
							y28 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x20 && ~x19 )
						begin
							y19 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s8;
				s9 : if( x10 )
						begin
							y9 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x10 )
						begin
							y19 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s9;
				s10 : if( x31 && x5 )
						begin
							y23 = 1'b1;	y51 = 1'b1;	y58 = 1'b1;	
							nx_state = s23;
						end
					else if( x31 && ~x5 && x22 )
						begin
							y51 = 1'b1;	
							nx_state = s24;
						end
					else if( x31 && ~x5 && ~x22 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x31 && x5 )
						begin
							y65 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x31 && ~x5 )
						begin
							y71 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s10;
				s11 : if( x31 && x15 )
						begin
							y34 = 1'b1;	
							nx_state = s12;
						end
					else if( x31 && ~x15 && x16 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( x31 && ~x15 && ~x16 )
						begin
							y35 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x31 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s11;
				s12 : if( x15 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s13;
				s14 : if( x17 )
						begin
							y18 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x17 && x14 )
						begin
							y38 = 1'b1;	y39 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x17 && ~x14 )
						begin
							y36 = 1'b1;	y37 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s14;
				s15 : if( x30 && x8 )
						begin
							y21 = 1'b1;	
							nx_state = s31;
						end
					else if( x30 && ~x8 )
						begin
							y20 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x30 )
						begin
							y17 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s15;
				s16 : if( x14 && x15 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( x14 && ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x14 )
						begin
							y30 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s16;
				s17 : if( x7 && x31 )
						begin
							y9 = 1'b1;	
							nx_state = s22;
						end
					else if( x7 && ~x31 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s18;
				s19 : if( x31 && x15 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( x31 && ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x31 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x31 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s21;
				s22 : if( x30 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x30 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s22;
				s23 : if( x24 )
						begin
							y59 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x24 )
						begin
							y60 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y53 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s24;
				s25 : if( x19 )
						begin
							y28 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x19 && x4 && x22 )
						begin
							y51 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x19 && x4 && ~x22 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x19 && ~x4 && x18 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x19 && ~x4 && ~x18 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y23 = 1'b1;	y65 = 1'b1;	y72 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s27;
				s28 : if( x31 && x30 && x8 )
						begin
							y42 = 1'b1;	
							nx_state = s39;
						end
					else if( x31 && x30 && ~x8 )
						begin
							y40 = 1'b1;	
							nx_state = s40;
						end
					else if( x31 && ~x30 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( x31 && ~x30 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x31 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x31 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s28;
				s29 : if( x16 && x15 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( x16 && ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x16 )
						begin
							y35 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s29;
				s30 : if( x15 )
						begin
							y34 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 )
						begin
							y35 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s30;
				s31 : if( x4 && x5 )
						begin
							y22 = 1'b1;	
							nx_state = s13;
						end
					else if( x4 && ~x5 )
						begin
							y69 = 1'b1;	y73 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x4 )
						begin
							y18 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s31;
				s32 : if( x11 && x4 )
						begin
							y21 = 1'b1;	
							nx_state = s42;
						end
					else if( x11 && ~x4 )
						begin
							y14 = 1'b1;	y24 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && x4 )
						begin
							y21 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x11 && ~x4 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x4 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y18 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y31 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y60 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y56 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s36;
				s37 : if( x11 )
						begin
							y50 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x11 )
						begin
							y49 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s37;
				s38 : if( x27 )
						begin
							y21 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x27 )
						begin
							y69 = 1'b1;	y73 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s38;
				s39 : if( x11 && x18 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( x11 && ~x18 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x11 )
						begin
							y43 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s39;
				s40 : if( x11 )
						begin
							y14 = 1'b1;	y41 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x11 && x15 )
						begin
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x11 && ~x15 && x18 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x11 && ~x15 && ~x18 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s40;
				s41 : if( x26 )
						begin
							y74 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x26 && x27 )
						begin
							y21 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x26 && ~x27 )
						begin
							y69 = 1'b1;	y73 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y66 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y32 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s43;
				s44 : if( x23 && x25 )
						begin
							y57 = 1'b1;	
							nx_state = s52;
						end
					else if( x23 && ~x25 && x5 )
						begin
							y61 = 1'b1;	
							nx_state = s53;
						end
					else if( x23 && ~x25 && ~x5 )
						begin
							y57 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x23 && x5 && x24 )
						begin
							y59 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x23 && x5 && ~x24 )
						begin
							y60 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x23 && ~x5 )
						begin
							y53 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s44;
				s45 : if( x11 )
						begin
							y55 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x11 )
						begin
							y54 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y54 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s46;
				s47 : if( x20 )
						begin
							y22 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x20 && x18 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x20 && ~x18 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s47;
				s48 : if( x18 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x18 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s48;
				s49 : if( x28 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x28 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s49;
				s50 : if( x11 )
						begin
							y20 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x11 )
						begin
							y67 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y33 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s51;
				s52 : if( x18 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x18 )
						begin
							y44 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s52;
				s53 : if( x20 )
						begin
							y22 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x20 )
						begin
							y62 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s53;
				s54 : if( x11 )
						begin
							y21 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x11 )
						begin
							y68 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s54;
				s55 : if( 1'b1 )
						begin
							y68 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s55;
				s56 : if( x19 )
						begin
							y28 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x19 )
						begin
							y45 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s56;
				s57 : if( 1'b1 )
						begin
							y69 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s57;
				s58 : if( x26 )
						begin
							y70 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x26 )
						begin
							y66 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s58;
				s59 : if( 1'b1 )
						begin
							y64 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s59;
				s60 : if( x7 )
						begin
							y69 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x7 )
						begin
							y9 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s60;

			default : nx_state = 0;
		endcase
	end
endmodule
