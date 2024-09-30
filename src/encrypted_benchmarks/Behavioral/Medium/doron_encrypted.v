/******** Key Information: *********** 
Key 1:   bin: '0000011000011000101100'    dec: 99884
Key 2:   bin: '1011111111010000110010'    dec: 3142706
Key 3:   bin: '0111011101000101110011'    dec: 1954163
Key 4:   bin: '0011101101000111100111'    dec: 971239
Key 5:   bin: '1110101001001010011111'    dec: 3838623
Key 6:   bin: '1110110100100011100000'    dec: 3885280
Key 7:   bin: '1001001110101011011000'    dec: 2419416
**************************************/

module doron (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y11, y12, y13, y14, y15, y37, y38, y44, y45,
	y46, y47, y54, y56, y57, y58, y59, y60, y62, y63, y64, y65, y67, y68, y71, y73, y74, y77, y78, y79, y80, y81, y84, y86, y88, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y102, y110);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y11, y12, y13, y14, y15, y37, y38, y44, y45,
	y46, y47, y54, y56, y57, y58, y59, y60, y62, y63, y64, y65, y67, y68, y71, y73, y74, y77, y78, y79, y80, y81, y84, y86, y88, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y102, y110;
reg[7:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y11, y12, y13, y14, y15, y37, y38, y44, y45,
	y46, y47, y54, y56, y57, y58, y59, y60, y62, y63, y64, y65, y67, y68, y71, y73, y74, y77, y78, y79, y80, y81, y84, y86, y88, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y102, y110;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 111) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 15 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s28;
		end
		if ( counter > 15 && counter <= 31 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s3;
		end
		if ( counter > 31 && counter <= 47 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s27;
		end
		if ( counter > 47 && counter <= 63 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s40;
		end
		if ( counter > 63 && counter <= 79 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s30;
		end
		if ( counter > 79 && counter <= 95 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s21;
		end
		if ( counter > 95 && counter <= 111 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s4;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	y13 = 1'b0;	
			y14 = 1'b0;	y15 = 1'b0;	y37 = 1'b0;	y38 = 1'b0;	
			y44 = 1'b0;	y45 = 1'b0;	y46 = 1'b0;	y47 = 1'b0;	
			y54 = 1'b0;	y56 = 1'b0;	y57 = 1'b0;	y58 = 1'b0;	
			y59 = 1'b0;	y60 = 1'b0;	y62 = 1'b0;	y63 = 1'b0;	
			y64 = 1'b0;	y65 = 1'b0;	y67 = 1'b0;	y68 = 1'b0;	
			y71 = 1'b0;	y73 = 1'b0;	y74 = 1'b0;	y77 = 1'b0;	
			y78 = 1'b0;	y79 = 1'b0;	y80 = 1'b0;	y81 = 1'b0;	
			y84 = 1'b0;	y86 = 1'b0;	y88 = 1'b0;	y90 = 1'b0;	
			y91 = 1'b0;	y92 = 1'b0;	y93 = 1'b0;	y94 = 1'b0;	
			y95 = 1'b0;	y96 = 1'b0;	y97 = 1'b0;	y98 = 1'b0;	
			y99 = 1'b0;	y100 = 1'b0;	y102 = 1'b0;	y110 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y9 = 1'b1;	
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
							y11 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y2 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y6 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s6;
				s7 : if( x3 )
						begin
							y5 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y63 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y63 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s8;
				s9 : if( x4 && x22 && x21 )
						begin
							y6 = 1'b1;	
							nx_state = s11;
						end
					else if( x4 && x22 && ~x21 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else if( x4 && ~x22 )
						begin
							y6 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s9;
				s10 : if( x21 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( x21 && ~x6 )
						nx_state = s1;
					else if( ~x21 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s10;
				s11 : if( x22 && x21 && x10 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x22 && x21 && x10 && ~x14 )
						begin
							y57 = 1'b1;	
							nx_state = s14;
						end
					else if( x22 && x21 && ~x10 && x11 && x14 && x8 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else if( x22 && x21 && ~x10 && x11 && x14 && ~x8 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x22 && x21 && ~x10 && x11 && x14 && ~x8 && x6 && ~x7 )
						nx_state = s1;
					else if( x22 && x21 && ~x10 && x11 && x14 && ~x8 && ~x6 )
						nx_state = s1;
					else if( x22 && x21 && ~x10 && x11 && ~x14 && x7 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else if( x22 && x21 && ~x10 && x11 && ~x14 && ~x7 && x6 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x22 && x21 && ~x10 && x11 && ~x14 && ~x7 && x6 && ~x8 )
						nx_state = s1;
					else if( x22 && x21 && ~x10 && x11 && ~x14 && ~x7 && ~x6 )
						nx_state = s1;
					else if( x22 && x21 && ~x10 && ~x11 && x14 )
						begin
							y60 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y67 = 1'b1;	y68 = 1'b1;	
							nx_state = s14;
						end
					else if( x22 && x21 && ~x10 && ~x11 && ~x14 )
						begin
							y58 = 1'b1;	y59 = 1'b1;	y60 = 1'b1;	
							y62 = 1'b1;	
							nx_state = s14;
						end
					else if( x22 && ~x21 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x22 && ~x21 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x22 && ~x21 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( x22 && ~x21 && ~x6 )
						nx_state = s1;
					else if( ~x22 && x12 && x21 && x11 )
						begin
							y7 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x22 && x12 && x21 && ~x11 )
						begin
							y7 = 1'b1;	y62 = 1'b1;	y74 = 1'b1;	
							y110 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x22 && x12 && ~x21 && x10 )
						begin
							y7 = 1'b1;	y62 = 1'b1;	y90 = 1'b1;	
							y92 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x22 && x12 && ~x21 && ~x10 )
						begin
							y7 = 1'b1;	y62 = 1'b1;	y92 = 1'b1;	
							y93 = 1'b1;	y97 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x22 && ~x12 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s11;
				s12 : if( x5 )
						begin
							y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x5 && x21 && x22 && x10 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && x22 && x10 && ~x14 )
						begin
							y57 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && x22 && ~x10 && x11 && x14 && x8 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x5 && x21 && x22 && ~x10 && x11 && x14 && ~x8 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x5 && x21 && x22 && ~x10 && x11 && x14 && ~x8 && x6 && ~x7 )
						nx_state = s1;
					else if( ~x5 && x21 && x22 && ~x10 && x11 && x14 && ~x8 && ~x6 )
						nx_state = s1;
					else if( ~x5 && x21 && x22 && ~x10 && x11 && ~x14 && x7 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x5 && x21 && x22 && ~x10 && x11 && ~x14 && ~x7 && x6 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x5 && x21 && x22 && ~x10 && x11 && ~x14 && ~x7 && x6 && ~x8 )
						nx_state = s1;
					else if( ~x5 && x21 && x22 && ~x10 && x11 && ~x14 && ~x7 && ~x6 )
						nx_state = s1;
					else if( ~x5 && x21 && x22 && ~x10 && ~x11 && x14 )
						begin
							y60 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y67 = 1'b1;	y68 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && x22 && ~x10 && ~x11 && ~x14 )
						begin
							y58 = 1'b1;	y59 = 1'b1;	y60 = 1'b1;	
							y62 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && ~x22 && x9 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && x10 && x11 && x14 )
						begin
							y37 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && x10 && x11 && ~x14 )
						begin
							y38 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && x10 && ~x11 && x14 )
						begin
							y100 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && x10 && ~x11 && ~x14 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && ~x10 && x11 && x14 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y90 = 1'b1;	
							y95 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && ~x10 && x11 && ~x14 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y93 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && ~x10 && ~x11 && x14 )
						begin
							y46 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y73 = 1'b1;	y95 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x5 && x21 && ~x22 && ~x9 && ~x10 && ~x11 && ~x14 )
						begin
							y74 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x5 && ~x21 && x22 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x5 && ~x21 && ~x22 && x9 && x10 && x11 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x5 && ~x21 && ~x22 && x9 && x10 && ~x11 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x5 && ~x21 && ~x22 && x9 && ~x10 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x5 && ~x21 && ~x22 && ~x9 && x10 && x11 )
						begin
							y65 = 1'b1;	y90 = 1'b1;	y92 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && ~x21 && ~x22 && ~x9 && x10 && ~x11 )
						begin
							y65 = 1'b1;	y92 = 1'b1;	y94 = 1'b1;	
							y95 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x5 && ~x21 && ~x22 && ~x9 && ~x10 )
						begin
							y65 = 1'b1;	y90 = 1'b1;	y91 = 1'b1;	
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s12;
				s13 : if( x9 && x21 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s21;
						end
					else if( x9 && ~x21 && x22 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s22;
						end
					else if( x9 && ~x21 && ~x22 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x9 && x21 && x13 && x10 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x9 && x21 && x13 && ~x10 && x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x9 && x21 && x13 && ~x10 && x11 && ~x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x9 && x21 && x13 && ~x10 && ~x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x9 && x21 && x13 && ~x10 && ~x11 && ~x14 )
						begin
							y3 = 1'b1;	y74 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x9 && x21 && ~x13 )
						begin
							y9 = 1'b1;	y65 = 1'b1;	y84 = 1'b1;	
							y86 = 1'b1;	y91 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && x10 && ~x11 && x19 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && ~x6 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && x14 && ~x10 && x11 && x17 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && ~x6 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && x14 && ~x10 && ~x11 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && ~x6 )
						nx_state = s1;
					else if( ~x9 && ~x21 && x13 && x22 && ~x14 && ~x10 && ~x11 )
						begin
							y102 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x9 && ~x21 && x13 && ~x22 && x10 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x9 && ~x21 && x13 && ~x22 && ~x10 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x9 && ~x21 && ~x13 )
						begin
							y9 = 1'b1;	y65 = 1'b1;	y84 = 1'b1;	
							y86 = 1'b1;	y91 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s13;
				s14 : if( x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x6 )
						nx_state = s1;
					else nx_state = s14;
				s15 : if( x15 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x15 && ~x6 )
						nx_state = s1;
					else nx_state = s15;
				s16 : if( x21 && x10 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s24;
						end
					else if( x21 && ~x10 && x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s22;
						end
					else if( x21 && ~x10 && x11 && ~x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( x21 && ~x10 && ~x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s26;
						end
					else if( x21 && ~x10 && ~x11 && ~x14 )
						begin
							y3 = 1'b1;	y74 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x21 && x22 && x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && x19 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && ~x10 && x11 && x17 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && ~x10 && ~x11 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && ~x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && ~x11 )
						begin
							y102 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && ~x22 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s16;
				s17 : if( x15 )
						begin
							y46 = 1'b1;	y47 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x15 && ~x6 )
						nx_state = s1;
					else nx_state = s17;
				s18 : if( x15 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x15 && ~x6 )
						nx_state = s1;
					else nx_state = s18;
				s19 : if( 1'b1 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s20;
				s21 : if( x3 )
						begin
							y5 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x3 && x21 )
						begin
							y4 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x3 && ~x21 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s21;
				s22 : if( x21 && x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y79 = 1'b1;	
							nx_state = s32;
						end
					else if( x21 && ~x3 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y71 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x21 && x22 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x21 && x22 && ~x3 )
						begin
							y4 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x21 && ~x22 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x21 && ~x22 && ~x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s22;
				s23 : if( x21 && x3 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y96 = 1'b1;	
							nx_state = s36;
						end
					else if( x21 && ~x3 )
						begin
							y60 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y79 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x21 && x22 && x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x21 && x22 && ~x3 )
						begin
							y62 = 1'b1;	y81 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x21 && ~x22 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x21 && ~x22 && ~x3 )
						begin
							y4 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s24;
				s25 : if( x21 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s33;
						end
					else if( x21 && ~x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x21 && x22 && ~x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x21 && ~x22 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x21 && ~x22 && ~x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s25;
				s26 : if( x21 && x3 )
						begin
							y62 = 1'b1;	y64 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s41;
						end
					else if( x21 && ~x3 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y79 = 1'b1;	
							y88 = 1'b1;	y102 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x21 && x3 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y96 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x21 && ~x3 )
						begin
							y60 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y79 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s26;
				s27 : if( x3 )
						begin
							y5 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y73 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s27;
				s28 : if( x21 && x10 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s24;
						end
					else if( x21 && ~x10 && x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s22;
						end
					else if( x21 && ~x10 && x11 && ~x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( x21 && ~x10 && ~x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s26;
						end
					else if( x21 && ~x10 && ~x11 && ~x14 )
						begin
							y3 = 1'b1;	y74 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x21 && x22 && x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && x19 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && x10 && ~x11 && ~x19 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && ~x10 && x11 && x17 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && ~x10 && x11 && ~x17 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && x14 && ~x10 && ~x11 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && ~x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && x10 && ~x11 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && x11 && ~x16 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x14 && ~x10 && ~x11 )
						begin
							y102 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && ~x22 && x10 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x21 && ~x22 && ~x10 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s28;
				s29 : if( x21 )
						begin
							y4 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x21 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s29;
				s30 : if( x21 && x13 && x10 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s24;
						end
					else if( x21 && x13 && ~x10 && x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s22;
						end
					else if( x21 && x13 && ~x10 && x11 && ~x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( x21 && x13 && ~x10 && ~x11 && x14 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s26;
						end
					else if( x21 && x13 && ~x10 && ~x11 && ~x14 )
						begin
							y3 = 1'b1;	y74 = 1'b1;	
							nx_state = s27;
						end
					else if( x21 && ~x13 )
						begin
							y9 = 1'b1;	y65 = 1'b1;	y84 = 1'b1;	
							y86 = 1'b1;	y91 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x21 && x13 && x22 && x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x21 && x13 && x22 && x14 && x10 && ~x11 && x19 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && x14 && x10 && ~x11 && ~x19 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && x14 && ~x10 && x11 && x17 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && x14 && ~x10 && x11 && ~x17 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && x14 && ~x10 && ~x11 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x13 && x22 && ~x14 && x10 && x11 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && ~x14 && x10 && ~x11 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && x18 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && x16 && ~x18 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && x11 && ~x16 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x13 && x22 && ~x14 && ~x10 && ~x11 )
						begin
							y102 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x13 && ~x22 && x10 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x21 && x13 && ~x22 && ~x10 )
						begin
							y9 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y94 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x21 && ~x13 )
						begin
							y9 = 1'b1;	y65 = 1'b1;	y84 = 1'b1;	
							y86 = 1'b1;	y91 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s30;
				s31 : if( x22 )
						begin
							y54 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x22 )
						begin
							y60 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y92 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y80 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s32;
				s33 : if( x21 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x21 && x22 )
						begin
							y4 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x21 && ~x22 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s33;
				s34 : if( x21 && x15 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s14;
						end
					else if( x21 && ~x15 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x15 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && ~x15 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( x21 && ~x15 && ~x6 )
						nx_state = s1;
					else if( ~x21 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y65 = 1'b1;	y90 = 1'b1;	y92 = 1'b1;	
							y98 = 1'b1;	y99 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s35;
				s36 : if( x21 )
						begin
							y80 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x21 )
						begin
							y80 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y80 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s37;
				s38 : if( x21 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x21 && x22 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y78 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x21 && ~x22 )
						begin
							y4 = 1'b1;	y9 = 1'b1;	y62 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s38;
				s39 : if( x21 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x21 && ~x3 )
						begin
							y4 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x21 && x22 && x3 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y96 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x21 && x22 && ~x3 )
						begin
							y60 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y79 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x21 && ~x22 && x3 )
						begin
							y62 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y96 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x21 && ~x22 && ~x3 )
						begin
							y60 = 1'b1;	y62 = 1'b1;	y65 = 1'b1;	
							y79 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y60 = 1'b1;	y65 = 1'b1;	y78 = 1'b1;	
							y92 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s40;
				s41 : if( 1'b1 )
						begin
							y80 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s41;
				s42 : if( x15 )
						begin
							y44 = 1'b1;	y45 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x15 && ~x6 )
						nx_state = s1;
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s43;
				s44 : if( x21 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( x21 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 && x20 )
						begin
							y6 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x21 && x22 && ~x20 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x20 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x22 && ~x20 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && x22 && ~x20 && ~x6 )
						nx_state = s1;
					else if( ~x21 && ~x22 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x22 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x22 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && ~x22 && ~x6 )
						nx_state = s1;
					else nx_state = s44;
				s45 : if( x21 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( x21 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x22 )
						begin
							y56 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x21 && ~x22 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x22 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x22 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x21 && ~x22 && ~x6 )
						nx_state = s1;
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y3 = 1'b1;	y77 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s46;
				s47 : if( 1'b1 )
						begin
							y74 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y12 = 1'b1;	y62 = 1'b1;	y64 = 1'b1;	
							y65 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s48;
				s49 : if( x15 )
						begin
							y46 = 1'b1;	y47 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x6 && x7 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x15 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x15 && ~x6 )
						nx_state = s1;
					else nx_state = s49;

			default : nx_state = 0;
		endcase
	end
endmodule
