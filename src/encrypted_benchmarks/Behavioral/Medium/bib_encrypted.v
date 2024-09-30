/******** Key Information: *********** 
Key 1:   bin: '011000110011100111000'    dec: 812856
Key 2:   bin: '100010001111010101111'    dec: 1121967
Key 3:   bin: '001101111011000111011'    dec: 456251
Key 4:   bin: '111111010010011001101'    dec: 2073805
Key 5:   bin: '000111001001100001011'    dec: 234251
Key 6:   bin: '110110010101010100010'    dec: 1780386
Key 7:   bin: '010101001100000000100'    dec: 694276
**************************************/

module bib (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y25, y26, y27, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y59, y60,
	y61, y62, y63, y64);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y25, y26, y27, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y59, y60,
	y61, y62, y63, y64;
reg[7:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y25, y26, y27, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y59, y60,
	y61, y62, y63, y64;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54, s55=55, s56=56, s57=57, s58=58, s59=59, s60=60,
	s61=61, s62=62, s63=63, s64=64, s65=65, s66=66, s67=67, s68=68, s69=69, s70=70,
	s71=71, s72=72, s73=73, s74=74, s75=75, s76=76, s77=77, s78=78, s79=79;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 125) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 17 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s54;
		end
		if ( counter > 17 && counter <= 35 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s49;
		end
		if ( counter > 35 && counter <= 53 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s67;
		end
		if ( counter > 53 && counter <= 71 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s3;
		end
		if ( counter > 71 && counter <= 89 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 89 && counter <= 107 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s66;
		end
		if ( counter > 107 && counter <= 125 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s73;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y25 = 1'b0;	y26 = 1'b0;	
			y27 = 1'b0;	y29 = 1'b0;	y30 = 1'b0;	y31 = 1'b0;	
			y32 = 1'b0;	y33 = 1'b0;	y34 = 1'b0;	y35 = 1'b0;	
			y36 = 1'b0;	y37 = 1'b0;	y38 = 1'b0;	y59 = 1'b0;	
			y60 = 1'b0;	y61 = 1'b0;	y62 = 1'b0;	y63 = 1'b0;	
			y64 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y12 = 1'b1;	y13 = 1'b1;	
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
				s2 : if( x21 && x20 )
						begin
							y15 = 1'b1;	y59 = 1'b1;	
							nx_state = s4;
						end
					else if( x21 && ~x20 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x21 && x20 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x21 && ~x20 )
						begin
							y5 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s2;
				s3 : if( x21 && x20 )
						begin
							y60 = 1'b1;	
							nx_state = s7;
						end
					else if( x21 && ~x20 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x21 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y14 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s4;
				s5 : if( x21 && x20 )
						begin
							y6 = 1'b1;	
							nx_state = s11;
						end
					else if( x21 && ~x20 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x21 )
						begin
							y6 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s5;
				s6 : if( x21 )
						begin
							y6 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x21 )
						begin
							y6 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y61 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s7;
				s8 : if( x21 && x20 )
						begin
							y4 = 1'b1;	y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x21 && ~x20 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x21 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s8;
				s9 : if( x21 && x20 )
						begin
							y16 = 1'b1;	
							nx_state = s22;
						end
					else if( x21 && ~x20 && x12 )
						begin
							y25 = 1'b1;	
							nx_state = s17;
						end
					else if( x21 && ~x20 && ~x12 && x16 && x17 && x19 && x11 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x20 && ~x12 && x16 && x17 && x19 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x20 && ~x12 && x16 && x17 && ~x19 && x18 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x20 && ~x12 && x16 && x17 && ~x19 && ~x18 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x20 && ~x12 && x16 && ~x17 && x19 && x14 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x20 && ~x12 && x16 && ~x17 && x19 && ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x20 && ~x12 && x16 && ~x17 && ~x19 && x13 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x20 && ~x12 && x16 && ~x17 && ~x19 && ~x13 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x20 && ~x12 && ~x16 && x17 && x11 )
						begin
							y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x21 && ~x20 && ~x12 && ~x16 && x17 && ~x11 )
						begin
							y32 = 1'b1;	
							nx_state = s21;
						end
					else if( x21 && ~x20 && ~x12 && ~x16 && ~x17 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x21 )
						begin
							y16 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s13;
				s14 : if( x10 )
						begin
							y62 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x10 && x4 && x5 && x3 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x4 && x5 && x3 && x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x4 && x5 && x3 && x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( ~x10 && x4 && x5 && x3 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x4 && x5 && ~x3 && x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && x4 && x5 && ~x3 && x6 && ~x7 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x4 && x5 && ~x3 && x6 && ~x7 && x12 && ~x8 )
						nx_state = s1;
					else if( ~x10 && x4 && x5 && ~x3 && x6 && ~x7 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x4 && x5 && ~x3 && ~x6 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && x4 && x5 && ~x3 && ~x6 && ~x8 && x12 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x4 && x5 && ~x3 && ~x6 && ~x8 && x12 && ~x7 )
						nx_state = s1;
					else if( ~x10 && x4 && x5 && ~x3 && ~x6 && ~x8 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x4 && ~x5 && x3 && x6 )
						begin
							y17 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x10 && x4 && ~x5 && x3 && ~x6 )
						begin
							y19 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x10 && x4 && ~x5 && ~x3 && x6 )
						begin
							y21 = 1'b1;	y38 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x10 && x4 && ~x5 && ~x3 && ~x6 )
						begin
							y22 = 1'b1;	y29 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x10 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s14;
				s15 : if( x10 )
						begin
							y62 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x10 && x11 && x4 && x5 && x3 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x4 && x5 && x3 && x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x4 && x5 && x3 && x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( ~x10 && x11 && x4 && x5 && x3 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x11 && x4 && x5 && ~x3 && x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && x11 && x4 && x5 && ~x3 && x6 && ~x7 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x4 && x5 && ~x3 && x6 && ~x7 && x12 && ~x8 )
						nx_state = s1;
					else if( ~x10 && x11 && x4 && x5 && ~x3 && x6 && ~x7 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x11 && x4 && x5 && ~x3 && ~x6 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && x11 && x4 && x5 && ~x3 && ~x6 && ~x8 && x12 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x4 && x5 && ~x3 && ~x6 && ~x8 && x12 && ~x7 )
						nx_state = s1;
					else if( ~x10 && x11 && x4 && x5 && ~x3 && ~x6 && ~x8 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x11 && x4 && ~x5 && x3 && x6 )
						begin
							y17 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x10 && x11 && x4 && ~x5 && x3 && ~x6 )
						begin
							y19 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x10 && x11 && x4 && ~x5 && ~x3 && x6 )
						begin
							y21 = 1'b1;	y38 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x10 && x11 && x4 && ~x5 && ~x3 && ~x6 )
						begin
							y22 = 1'b1;	y29 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x10 && x11 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x10 && ~x11 )
						begin
							y62 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s16;
				s17 : if( x21 && x16 && x17 && x19 && x11 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && x16 && x17 && x19 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && x16 && x17 && ~x19 && x18 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && x16 && x17 && ~x19 && ~x18 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && x16 && ~x17 && x19 && x14 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && x16 && ~x17 && x19 && ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && x16 && ~x17 && ~x19 && x13 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && x16 && ~x17 && ~x19 && ~x13 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x16 && x17 && x11 )
						begin
							y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x21 && ~x16 && x17 && ~x11 )
						begin
							y32 = 1'b1;	
							nx_state = s21;
						end
					else if( x21 && ~x16 && ~x17 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x21 )
						begin
							y30 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s17;
				s18 : if( x20 && x21 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && x21 && x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && x21 && x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( x20 && x21 && ~x12 )
						nx_state = s1;
					else if( x20 && ~x21 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && ~x21 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && ~x21 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( x20 && ~x21 && ~x7 )
						nx_state = s1;
					else if( ~x20 && x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x20 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x20 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x20 && ~x6 )
						nx_state = s1;
					else nx_state = s18;
				s19 : if( x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( ~x6 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y15 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y4 = 1'b1;	y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s27;
				s28 : if( x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( ~x12 )
						nx_state = s1;
					else nx_state = s28;
				s29 : if( x21 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( x21 && ~x12 )
						nx_state = s1;
					else if( ~x21 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( ~x21 && ~x7 )
						nx_state = s1;
					else nx_state = s29;
				s30 : if( x21 && x20 && x9 )
						begin
							y11 = 1'b1;	
							nx_state = s3;
						end
					else if( x21 && x20 && ~x9 && x5 && x3 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x20 && ~x9 && x5 && x3 && x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x20 && ~x9 && x5 && x3 && x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( x21 && x20 && ~x9 && x5 && x3 && ~x12 )
						nx_state = s1;
					else if( x21 && x20 && ~x9 && x5 && ~x3 && x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && x20 && ~x9 && x5 && ~x3 && x6 && ~x7 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x20 && ~x9 && x5 && ~x3 && x6 && ~x7 && x12 && ~x8 )
						nx_state = s1;
					else if( x21 && x20 && ~x9 && x5 && ~x3 && x6 && ~x7 && ~x12 )
						nx_state = s1;
					else if( x21 && x20 && ~x9 && x5 && ~x3 && ~x6 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && x20 && ~x9 && x5 && ~x3 && ~x6 && ~x8 && x12 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x20 && ~x9 && x5 && ~x3 && ~x6 && ~x8 && x12 && ~x7 )
						nx_state = s1;
					else if( x21 && x20 && ~x9 && x5 && ~x3 && ~x6 && ~x8 && ~x12 )
						nx_state = s1;
					else if( x21 && x20 && ~x9 && ~x5 && x3 && x6 )
						begin
							y17 = 1'b1;	
							nx_state = s28;
						end
					else if( x21 && x20 && ~x9 && ~x5 && x3 && ~x6 )
						begin
							y19 = 1'b1;	
							nx_state = s28;
						end
					else if( x21 && x20 && ~x9 && ~x5 && ~x3 && x6 )
						begin
							y21 = 1'b1;	y38 = 1'b1;	
							nx_state = s29;
						end
					else if( x21 && x20 && ~x9 && ~x5 && ~x3 && ~x6 )
						begin
							y22 = 1'b1;	y29 = 1'b1;	
							nx_state = s29;
						end
					else if( x21 && ~x20 && x4 )
						begin
							y11 = 1'b1;	
							nx_state = s3;
						end
					else if( x21 && ~x20 && ~x4 && x5 )
						begin
							y37 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x20 && ~x4 && ~x5 && x15 )
						begin
							y26 = 1'b1;	
							nx_state = s17;
						end
					else if( x21 && ~x20 && ~x4 && ~x5 && ~x15 )
						begin
							y35 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x21 && x4 )
						begin
							y11 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x21 && ~x4 && x20 && x9 && x8 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x4 && x20 && x9 && x8 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x4 && x20 && x9 && x8 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( ~x21 && ~x4 && x20 && x9 && x8 && ~x7 )
						nx_state = s1;
					else if( ~x21 && ~x4 && x20 && x9 && ~x8 && x10 )
						begin
							y21 = 1'b1;	y38 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x21 && ~x4 && x20 && x9 && ~x8 && ~x10 )
						begin
							y22 = 1'b1;	y29 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && x8 && x10 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && x8 && ~x10 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && x10 && x11 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && ~x7 )
						nx_state = s1;
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && ~x10 && x12 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( ~x21 && ~x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && ~x7 )
						nx_state = s1;
					else if( ~x21 && ~x4 && ~x20 && x6 )
						begin
							y26 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x21 && ~x4 && ~x20 && ~x6 )
						begin
							y30 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						nx_state = s45;
					else nx_state = s33;
				s34 : if( x20 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( x20 && ~x7 )
						nx_state = s1;
					else if( ~x20 )
						nx_state = s1;
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s35;
				s36 : if( x21 && x20 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x20 && x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x21 && x20 && x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( x21 && x20 && ~x12 )
						nx_state = s1;
					else if( x21 && ~x20 && x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( x21 && ~x20 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( x21 && ~x20 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( x21 && ~x20 && ~x6 )
						nx_state = s1;
					else if( ~x21 )
						nx_state = s1;
					else nx_state = s36;
				s37 : if( x3 )
						begin
							y14 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s37;
				s38 : if( x20 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s47;
						end
					else if( x20 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x20 && x21 && x3 )
						begin
							y33 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x20 && x21 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x20 && ~x21 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x20 && ~x21 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s38;
				s39 : if( x3 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s39;
				s40 : if( x21 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s52;
						end
					else if( x21 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x21 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x21 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s40;
				s41 : if( x16 && x17 && x19 && x11 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x16 && x17 && x19 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x16 && x17 && ~x19 && x18 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x16 && x17 && ~x19 && ~x18 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x16 && ~x17 && x19 && x14 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x16 && ~x17 && x19 && ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x16 && ~x17 && ~x19 && x13 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x16 && ~x17 && ~x19 && ~x13 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x16 && x17 && x11 )
						begin
							y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x16 && x17 && ~x11 )
						begin
							y32 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x16 && ~x17 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s41;
				s42 : if( x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( ~x7 )
						nx_state = s1;
					else nx_state = s42;
				s43 : if( x11 && x10 )
						begin
							y62 = 1'b1;	
							nx_state = s27;
						end
					else if( x11 && ~x10 && x4 && x5 && x3 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && ~x10 && x4 && x5 && x3 && x12 && ~x8 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && ~x10 && x4 && x5 && x3 && x12 && ~x8 && ~x7 )
						nx_state = s1;
					else if( x11 && ~x10 && x4 && x5 && x3 && ~x12 )
						nx_state = s1;
					else if( x11 && ~x10 && x4 && x5 && ~x3 && x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x11 && ~x10 && x4 && x5 && ~x3 && x6 && ~x7 && x12 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && ~x10 && x4 && x5 && ~x3 && x6 && ~x7 && x12 && ~x8 )
						nx_state = s1;
					else if( x11 && ~x10 && x4 && x5 && ~x3 && x6 && ~x7 && ~x12 )
						nx_state = s1;
					else if( x11 && ~x10 && x4 && x5 && ~x3 && ~x6 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x11 && ~x10 && x4 && x5 && ~x3 && ~x6 && ~x8 && x12 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && ~x10 && x4 && x5 && ~x3 && ~x6 && ~x8 && x12 && ~x7 )
						nx_state = s1;
					else if( x11 && ~x10 && x4 && x5 && ~x3 && ~x6 && ~x8 && ~x12 )
						nx_state = s1;
					else if( x11 && ~x10 && x4 && ~x5 && x3 && x6 )
						begin
							y17 = 1'b1;	
							nx_state = s28;
						end
					else if( x11 && ~x10 && x4 && ~x5 && x3 && ~x6 )
						begin
							y19 = 1'b1;	
							nx_state = s28;
						end
					else if( x11 && ~x10 && x4 && ~x5 && ~x3 && x6 )
						begin
							y21 = 1'b1;	y38 = 1'b1;	
							nx_state = s29;
						end
					else if( x11 && ~x10 && x4 && ~x5 && ~x3 && ~x6 )
						begin
							y22 = 1'b1;	y29 = 1'b1;	
							nx_state = s29;
						end
					else if( x11 && ~x10 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x11 )
						begin
							y62 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s44;
				s45 : if( x7 && x9 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x7 && ~x9 && x8 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x7 && ~x9 && ~x8 )
						nx_state = s1;
					else if( ~x7 )
						nx_state = s1;
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s46;
				s47 : if( 1'b1 )
						begin
							y15 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s48;
				s49 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s49;
				s50 : if( x21 )
						begin
							y14 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x21 )
						begin
							y14 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s51;
				s52 : if( x21 && x9 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x9 && x6 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( x21 && ~x9 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( x21 && ~x9 && x6 && ~x7 && ~x8 )
						nx_state = s1;
					else if( x21 && ~x9 && ~x6 )
						nx_state = s1;
					else if( ~x21 && x5 )
						begin
							y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x21 && ~x5 )
						begin
							y25 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s52;
				s53 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s53;
				s54 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s54;
				s55 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s55;
				s56 : if( x21 )
						begin
							y5 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x21 && x20 )
						begin
							y5 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x21 && ~x20 )
						begin
							y5 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s56;
				s57 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s57;
				s58 : if( x3 )
						begin
							y3 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x3 && x20 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x3 && ~x20 && x21 )
						begin
							y31 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x3 && ~x20 && ~x21 )
						begin
							y31 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s58;
				s59 : if( x3 )
						begin
							y3 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s59;
				s60 : if( x21 && x20 )
						begin
							y6 = 1'b1;	
							nx_state = s57;
						end
					else if( x21 && ~x20 )
						begin
							y6 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x21 )
						begin
							y6 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s60;
				s61 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s61;
				s62 : if( 1'b1 )
						begin
							y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s62;
				s63 : if( 1'b1 )
						begin
							y15 = 1'b1;	y36 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s63;
				s64 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s64;
				s65 : if( x20 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s9;
						end
					else if( x20 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x20 && x21 && x3 )
						begin
							y15 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x20 && x21 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x20 && ~x21 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x20 && ~x21 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s65;
				s66 : if( x4 && x20 && x9 && x8 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x20 && x9 && x8 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x20 && x9 && x8 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( x4 && x20 && x9 && x8 && ~x7 )
						nx_state = s1;
					else if( x4 && x20 && x9 && ~x8 && x10 )
						begin
							y21 = 1'b1;	y38 = 1'b1;	
							nx_state = s29;
						end
					else if( x4 && x20 && x9 && ~x8 && ~x10 )
						begin
							y22 = 1'b1;	y29 = 1'b1;	
							nx_state = s29;
						end
					else if( x4 && x20 && ~x9 && x8 && x10 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s42;
						end
					else if( x4 && x20 && ~x9 && x8 && ~x10 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	
							nx_state = s42;
						end
					else if( x4 && x20 && ~x9 && ~x8 && x10 && x11 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( x4 && x20 && ~x9 && ~x8 && x10 && ~x11 && ~x7 )
						nx_state = s1;
					else if( x4 && x20 && ~x9 && ~x8 && ~x10 && x12 )
						begin
							y4 = 1'b1;	
							nx_state = s34;
						end
					else if( x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && x7 && x6 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && x7 && ~x6 && x5 )
						begin
							y20 = 1'b1;	
							nx_state = s1;
						end
					else if( x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && x7 && ~x6 && ~x5 )
						nx_state = s1;
					else if( x4 && x20 && ~x9 && ~x8 && ~x10 && ~x12 && ~x7 )
						nx_state = s1;
					else if( x4 && ~x20 && x21 && x5 )
						begin
							y37 = 1'b1;	
							nx_state = s19;
						end
					else if( x4 && ~x20 && x21 && ~x5 )
						begin
							y27 = 1'b1;	
							nx_state = s70;
						end
					else if( x4 && ~x20 && ~x21 && x10 )
						nx_state = s45;
					else if( x4 && ~x20 && ~x21 && ~x10 )
						begin
							y27 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s66;
				s67 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s67;
				s68 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s68;
				s69 : if( 1'b1 )
						begin
							y33 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s69;
				s70 : if( x21 && x10 )
						begin
							y5 = 1'b1;	
							nx_state = s6;
						end
					else if( x21 && ~x10 && x12 )
						begin
							y25 = 1'b1;	
							nx_state = s17;
						end
					else if( x21 && ~x10 && ~x12 && x16 && x17 && x19 && x11 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x10 && ~x12 && x16 && x17 && x19 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x10 && ~x12 && x16 && x17 && ~x19 && x18 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x10 && ~x12 && x16 && x17 && ~x19 && ~x18 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x10 && ~x12 && x16 && ~x17 && x19 && x14 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x10 && ~x12 && x16 && ~x17 && x19 && ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x10 && ~x12 && x16 && ~x17 && ~x19 && x13 )
						begin
							y4 = 1'b1;	
							nx_state = s18;
						end
					else if( x21 && ~x10 && ~x12 && x16 && ~x17 && ~x19 && ~x13 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( x21 && ~x10 && ~x12 && ~x16 && x17 && x11 )
						begin
							y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x21 && ~x10 && ~x12 && ~x16 && x17 && ~x11 )
						begin
							y32 = 1'b1;	
							nx_state = s21;
						end
					else if( x21 && ~x10 && ~x12 && ~x16 && ~x17 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x21 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x21 && ~x6 && x5 )
						begin
							y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x21 && ~x6 && ~x5 )
						begin
							y25 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s70;
				s71 : if( 1'b1 )
						begin
							y7 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s71;
				s72 : if( x3 )
						begin
							y14 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s72;
				s73 : if( 1'b1 )
						begin
							y34 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s73;
				s74 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s74;
				s75 : if( 1'b1 )
						begin
							y16 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s75;
				s76 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s76;
				s77 : if( 1'b1 )
						begin
							y16 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s77;
				s78 : if( x3 )
						begin
							y33 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s78;
				s79 : if( 1'b1 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s79;

			default : nx_state = 0;
		endcase
	end
endmodule
