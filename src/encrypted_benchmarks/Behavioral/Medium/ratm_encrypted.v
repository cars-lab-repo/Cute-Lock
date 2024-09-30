/******** Key Information: *********** 
Key 1:   bin: '1000011001001101001'    dec: 275049
Key 2:   bin: '0110111000100110100'    dec: 225588
Key 3:   bin: '0010011101001101011'    dec: 80491
Key 4:   bin: '0100000110100110001'    dec: 134449
Key 5:   bin: '1110111111000000111'    dec: 491015
Key 6:   bin: '0111001011100100001'    dec: 235297
**************************************/

module ratm (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57;
reg[7:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54, s55=55, s56=56, s57=57, s58=58, s59=59, s60=60,
	s61=61, s62=62, s63=63, s64=64, s65=65, s66=66, s67=67, s68=68, s69=69, s70=70,
	s71=71, s72=72, s73=73;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 83) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 13 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s25;
		end
		if ( counter > 13 && counter <= 27 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s7;
		end
		if ( counter > 27 && counter <= 41 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s52;
		end
		if ( counter > 41 && counter <= 55 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s4;
		end
		if ( counter > 55 && counter <= 69 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s10;
		end
		if ( counter > 69 && counter <= 83 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s71;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19)
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
			y41 = 1'b0;	y42 = 1'b0;	y43 = 1'b0;	y44 = 1'b0;	
			y45 = 1'b0;	y46 = 1'b0;	y47 = 1'b0;	y48 = 1'b0;	
			y49 = 1'b0;	y50 = 1'b0;	y51 = 1'b0;	y52 = 1'b0;	
			y53 = 1'b0;	y54 = 1'b0;	y55 = 1'b0;	y56 = 1'b0;	
			y57 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y18 = 1'b1;	
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
							y19 = 1'b1;	
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
							y2 = 1'b1;	y15 = 1'b1;	y31 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y31 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y8 = 1'b1;	y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y7 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s12;
				s13 : if( x3 && x4 && x6 )
						begin
							y39 = 1'b1;	
							nx_state = s14;
						end
					else if( x3 && x4 && ~x6 )
						begin
							y39 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && ~x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x3 && x5 )
						begin
							y6 = 1'b1;	y26 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x3 && ~x5 )
						begin
							y20 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s13;
				s14 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s15;
				s16 : if( x7 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x7 && x9 && x6 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x7 && x9 && x6 && ~x12 && x11 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x7 && x9 && x6 && ~x12 && ~x11 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && x6 && ~x12 && ~x11 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && x6 && ~x12 && ~x11 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x7 && x9 && x6 && ~x12 && ~x11 && ~x18 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && x10 && x11 && x12 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && x10 && x11 && x12 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && x10 && x11 && x12 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && x10 && x11 && x12 && ~x18 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && x10 && x11 && ~x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x7 && x9 && ~x6 && x8 && x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y31 = 1'b1;	y34 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x7 && x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && x15 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x7 && x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && ~x18 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && x12 && x16 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && ~x18 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && x17 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && ~x18 )
						nx_state = s1;
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x7 && x9 && ~x6 && x8 && ~x10 && ~x11 && ~x12 )
						begin
							y57 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x7 && x9 && ~x6 && ~x8 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x7 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y12 = 1'b1;	
							y28 = 1'b1;	y33 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s16;
				s17 : if( x6 && x8 && x10 && x11 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x8 && x10 && x11 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x8 && x10 && x11 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x6 && x8 && x10 && x11 && ~x18 )
						nx_state = s1;
					else if( x6 && x8 && x10 && ~x11 && x12 )
						begin
							y21 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && x8 && x10 && ~x11 && ~x12 )
						begin
							y23 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && x8 && ~x10 && x11 && x12 && x13 )
						begin
							y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x6 && x8 && ~x10 && x11 && x12 && ~x13 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x8 && ~x10 && x11 && x12 && ~x13 && x18 && ~x14 )
						nx_state = s1;
					else if( x6 && x8 && ~x10 && x11 && x12 && ~x13 && ~x18 )
						nx_state = s1;
					else if( x6 && x8 && ~x10 && x11 && ~x12 && x14 )
						begin
							y7 = 1'b1;	
							nx_state = s29;
						end
					else if( x6 && x8 && ~x10 && x11 && ~x12 && ~x14 && x18 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x8 && ~x10 && x11 && ~x12 && ~x14 && x18 && ~x13 )
						nx_state = s1;
					else if( x6 && x8 && ~x10 && x11 && ~x12 && ~x14 && ~x18 )
						nx_state = s1;
					else if( x6 && x8 && ~x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y27 = 1'b1;	y45 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && x8 && ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y38 = 1'b1;	y46 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x8 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s27;
						end
					else if( x6 && ~x8 && ~x7 && x10 && x11 && x12 )
						begin
							y40 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x8 && ~x7 && x10 && x11 && ~x12 )
						begin
							y41 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x8 && ~x7 && x10 && ~x11 && x12 )
						begin
							y42 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x8 && ~x7 && x10 && ~x11 && ~x12 )
						begin
							y43 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x8 && ~x7 && ~x10 && x11 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s30;
						end
					else if( x6 && ~x8 && ~x7 && ~x10 && x11 && ~x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y35 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x8 && ~x7 && ~x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y33 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x8 && ~x7 && ~x10 && ~x11 && ~x12 )
						begin
							y44 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x6 && ~x8 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x6 && ~x8 && ~x7 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y27 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s18;
				s19 : if( x6 && x11 && x12 )
						begin
							y5 = 1'b1;	y27 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	
							nx_state = s22;
						end
					else if( x6 && x11 && ~x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s23;
						end
					else if( x6 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y27 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s24;
						end
					else if( x6 && ~x11 && ~x12 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x11 && ~x12 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x11 && ~x12 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x6 && ~x11 && ~x12 && ~x18 )
						nx_state = s1;
					else if( ~x6 && x10 && x11 && x12 )
						begin
							y47 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x6 && x10 && x11 && ~x12 )
						begin
							y48 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x6 && x10 && ~x11 && x12 )
						begin
							y56 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x6 && x10 && ~x11 && ~x12 )
						begin
							y54 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x6 && ~x10 && x11 && x12 )
						begin
							y5 = 1'b1;	y15 = 1'b1;	y29 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && ~x10 && x11 && ~x12 )
						begin
							y5 = 1'b1;	y15 = 1'b1;	y30 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && ~x10 && ~x11 && x12 )
						begin
							y5 = 1'b1;	y15 = 1'b1;	y28 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && ~x10 && ~x11 && ~x12 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && ~x10 && ~x11 && ~x12 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && ~x10 && ~x11 && ~x12 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x6 && ~x10 && ~x11 && ~x12 && ~x18 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y31 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s23;
				s24 : if( x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x18 )
						nx_state = s1;
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s26;
				s27 : if( x6 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else if( x6 && ~x12 && x11 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s23;
						end
					else if( x6 && ~x12 && ~x11 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x12 && ~x11 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x12 && ~x11 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x6 && ~x12 && ~x11 && ~x18 )
						nx_state = s1;
					else if( ~x6 && x8 && x10 && x11 && x12 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && x10 && x11 && x12 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && x10 && x11 && x12 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x6 && x8 && x10 && x11 && x12 && ~x18 )
						nx_state = s1;
					else if( ~x6 && x8 && x10 && x11 && ~x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x6 && x8 && x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y31 = 1'b1;	y34 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x6 && x8 && x10 && ~x11 && ~x12 && x15 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && ~x18 )
						nx_state = s1;
					else if( ~x6 && x8 && ~x10 && x11 && x12 && x16 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && ~x18 )
						nx_state = s1;
					else if( ~x6 && x8 && ~x10 && x11 && ~x12 && x17 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && ~x18 )
						nx_state = s1;
					else if( ~x6 && x8 && ~x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && x8 && ~x10 && ~x11 && ~x12 )
						begin
							y57 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x6 && ~x8 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y33 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s30;
				s31 : if( x10 && x11 && x12 )
						begin
							y47 = 1'b1;	
							nx_state = s32;
						end
					else if( x10 && x11 && ~x12 )
						begin
							y48 = 1'b1;	
							nx_state = s33;
						end
					else if( x10 && ~x11 && x12 )
						begin
							y56 = 1'b1;	
							nx_state = s34;
						end
					else if( x10 && ~x11 && ~x12 )
						begin
							y54 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x10 && x11 && x12 )
						begin
							y5 = 1'b1;	y15 = 1'b1;	y29 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x10 && x11 && ~x12 )
						begin
							y5 = 1'b1;	y15 = 1'b1;	y30 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x10 && ~x11 && x12 )
						begin
							y5 = 1'b1;	y15 = 1'b1;	y28 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x10 && ~x11 && ~x12 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && ~x12 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && ~x12 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x12 && ~x18 )
						nx_state = s1;
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y56 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y54 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y51 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s38;
				s39 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y2 = 1'b1;	y31 = 1'b1;	y34 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s40;
				s41 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y27 = 1'b1;	
							y37 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y55 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s44;
				s45 : if( 1'b1 )
						begin
							y53 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s46;
				s47 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y31 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s48;
				s49 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s49;
				s50 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s51;
				s52 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s52;
				s53 : if( x9 && x6 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else if( x9 && x6 && ~x12 && x11 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y14 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s23;
						end
					else if( x9 && x6 && ~x12 && ~x11 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && x6 && ~x12 && ~x11 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && x6 && ~x12 && ~x11 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x9 && x6 && ~x12 && ~x11 && ~x18 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && x10 && x11 && x12 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && x10 && x11 && x12 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && x10 && x11 && x12 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && x10 && x11 && x12 && ~x18 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && x10 && x11 && ~x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s25;
						end
					else if( x9 && ~x6 && x8 && x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y31 = 1'b1;	y34 = 1'b1;	
							nx_state = s26;
						end
					else if( x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && x15 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && x10 && ~x11 && ~x12 && ~x15 && ~x18 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && ~x10 && x11 && x12 && x16 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && ~x10 && x11 && x12 && ~x16 && ~x18 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && x17 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && ~x10 && x11 && ~x12 && ~x17 && ~x18 )
						nx_state = s1;
					else if( x9 && ~x6 && x8 && ~x10 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else if( x9 && ~x6 && x8 && ~x10 && ~x11 && ~x12 )
						begin
							y57 = 1'b1;	
							nx_state = s24;
						end
					else if( x9 && ~x6 && ~x8 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y12 = 1'b1;	
							y28 = 1'b1;	y33 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s53;
				s54 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s54;
				s55 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s55;
				s56 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s56;
				s57 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y11 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s57;
				s58 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s58;
				s59 : if( 1'b1 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y31 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s59;
				s60 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s60;
				s61 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s61;
				s62 : if( 1'b1 )
						begin
							y24 = 1'b1;	y25 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s62;
				s63 : if( 1'b1 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y14 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s63;
				s64 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s64;
				s65 : if( 1'b1 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y31 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s65;
				s66 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s66;
				s67 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s69;
						end
					else nx_state = s67;
				s68 : if( 1'b1 )
						begin
							y25 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s68;
				s69 : if( x12 )
						begin
							y2 = 1'b1;	y5 = 1'b1;	y32 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x12 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x12 && ~x18 )
						nx_state = s1;
					else nx_state = s69;
				s70 : if( x19 )
						begin
							y7 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x19 && x18 && x14 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x19 && x18 && ~x14 && x13 )
						begin
							y56 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x19 && x18 && ~x14 && ~x13 )
						nx_state = s1;
					else if( ~x19 && ~x18 )
						nx_state = s1;
					else nx_state = s70;
				s71 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s71;
				s72 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s72;
				s73 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s73;

			default : nx_state = 0;
		endcase
	end
endmodule
