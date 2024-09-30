/******** Key Information: *********** 
Key 1:   bin: '00100100000010001001'    dec: 147593
Key 2:   bin: '11101010101101000111'    dec: 961351
Key 3:   bin: '10000011000100000000'    dec: 536832
Key 4:   bin: '10011000001111110100'    dec: 623604
Key 5:   bin: '10001110110101111111'    dec: 585087
Key 6:   bin: '11001111000001000101'    dec: 847941
**************************************/

module cyr (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75;
reg[6:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 47) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 7 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s14;
		end
		if ( counter > 7 && counter <= 15 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s8;
		end
		if ( counter > 15 && counter <= 23 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s11;
		end
		if ( counter > 23 && counter <= 31 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s29;
		end
		if ( counter > 31 && counter <= 39 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s32;
		end
		if ( counter > 39 && counter <= 47 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s39;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20)
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
			y57 = 1'b0;	y58 = 1'b0;	y59 = 1'b0;	y60 = 1'b0;	
			y61 = 1'b0;	y62 = 1'b0;	y63 = 1'b0;	y64 = 1'b0;	
			y65 = 1'b0;	y66 = 1'b0;	y67 = 1'b0;	y68 = 1'b0;	
			y69 = 1'b0;	y70 = 1'b0;	y71 = 1'b0;	y72 = 1'b0;	
			y73 = 1'b0;	y74 = 1'b0;	y75 = 1'b0;	
		case ( pr_state )
				s1 : if( x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y5 = 1'b1;	
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
				s2 : if( 1'b1 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
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
							y3 = 1'b1;	y5 = 1'b1;	y69 = 1'b1;	
							y70 = 1'b1;	y71 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y5 = 1'b1;	y42 = 1'b1;	y43 = 1'b1;	
							y68 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y58 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y5 = 1'b1;	y42 = 1'b1;	y43 = 1'b1;	
							y68 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y23 = 1'b1;	y72 = 1'b1;	y73 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y9 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s13;
				s14 : if( x3 && x5 && x6 && x7 && x9 )
						begin
							y21 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && x6 && x7 && ~x9 )
						begin
							y75 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && x6 && ~x7 && x8 && x9 && x12 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && x6 && ~x7 && x8 && x9 && ~x12 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x5 && x6 && ~x7 && x8 && x9 && ~x12 && x20 && ~x13 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x7 && x8 && x9 && ~x12 && ~x20 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x7 && x8 && ~x9 && x13 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && x6 && ~x7 && x8 && ~x9 && ~x13 && x20 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x3 && x5 && x6 && ~x7 && x8 && ~x9 && ~x13 && x20 && ~x12 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x7 && x8 && ~x9 && ~x13 && ~x20 )
						nx_state = s1;
					else if( x3 && x5 && x6 && ~x7 && ~x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y24 = 1'b1;	
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && x6 && ~x7 && ~x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && ~x6 && x11 && x7 && x8 && x9 )
						begin
							y47 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && ~x6 && x11 && x7 && x8 && ~x9 )
						begin
							y48 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && ~x6 && x11 && x7 && ~x8 && x9 )
						begin
							y49 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && ~x6 && x11 && x7 && ~x8 && ~x9 )
						begin
							y50 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && ~x6 && x11 && ~x7 && x8 && x9 )
						begin
							y51 = 1'b1;	
							nx_state = s16;
						end
					else if( x3 && x5 && ~x6 && x11 && ~x7 && x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s17;
						end
					else if( x3 && x5 && ~x6 && x11 && ~x7 && ~x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y55 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && x5 && ~x6 && ~x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( x3 && ~x5 && x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( x3 && ~x5 && ~x6 && x11 && x8 && x9 )
						begin
							y5 = 1'b1;	y10 = 1'b1;	y16 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && ~x5 && ~x6 && x11 && x8 && ~x9 )
						begin
							y5 = 1'b1;	y10 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && ~x5 && ~x6 && x11 && ~x8 )
						begin
							y5 = 1'b1;	y10 = 1'b1;	y16 = 1'b1;	
							y18 = 1'b1;	y20 = 1'b1;	
							nx_state = s15;
						end
					else if( x3 && ~x5 && ~x6 && ~x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x3 )
						begin
							y5 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s14;
				s15 : if( x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( ~x20 )
						nx_state = s1;
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s16;
				s17 : if( 1'b1 )
						begin
							y57 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y54 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s18;
				s19 : if( x10 )
						begin
							y5 = 1'b1;	y42 = 1'b1;	y43 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x10 && x14 && x6 && x7 && x8 )
						begin
							y63 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x10 && x14 && x6 && x7 && ~x8 && x9 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y5 = 1'b1;	
							y74 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x10 && x14 && x6 && x7 && ~x8 && ~x9 && x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && ~x20 )
						nx_state = s1;
					else if( ~x10 && x14 && x6 && ~x7 && x8 && x9 && x18 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x14 && x6 && ~x7 && x8 && x9 && ~x18 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x14 && x6 && ~x7 && x8 && x9 && ~x18 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x14 && x6 && ~x7 && x8 && x9 && ~x18 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x14 && x6 && ~x7 && x8 && x9 && ~x18 && ~x20 )
						nx_state = s1;
					else if( ~x10 && x14 && x6 && ~x7 && x8 && ~x9 && x19 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( ~x10 && x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && ~x20 )
						nx_state = s1;
					else if( ~x10 && x14 && x6 && ~x7 && ~x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x14 && x6 && ~x7 && ~x8 && ~x9 )
						begin
							y65 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x14 && ~x6 )
						begin
							y57 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x10 && ~x14 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y40 = 1'b1;	y45 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s19;
				s20 : if( x6 && x7 && x8 )
						begin
							y63 = 1'b1;	
							nx_state = s26;
						end
					else if( x6 && x7 && ~x8 && x9 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y5 = 1'b1;	
							y74 = 1'b1;	
							nx_state = s27;
						end
					else if( x6 && x7 && ~x8 && ~x9 && x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( x6 && x7 && ~x8 && ~x9 && ~x17 && ~x20 )
						nx_state = s1;
					else if( x6 && ~x7 && x8 && x9 && x18 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x6 && ~x7 && x8 && x9 && ~x18 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x7 && x8 && x9 && ~x18 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x7 && x8 && x9 && ~x18 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( x6 && ~x7 && x8 && x9 && ~x18 && ~x20 )
						nx_state = s1;
					else if( x6 && ~x7 && x8 && ~x9 && x19 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( x6 && ~x7 && x8 && ~x9 && ~x19 && ~x20 )
						nx_state = s1;
					else if( x6 && ~x7 && ~x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x6 && ~x7 && ~x8 && ~x9 )
						begin
							y65 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x6 )
						begin
							y57 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s20;
				s21 : if( x4 )
						begin
							y67 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x4 && x5 && x6 && x7 && x9 )
						begin
							y21 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && x6 && x7 && ~x9 )
						begin
							y75 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && x6 && ~x7 && x8 && x9 && x12 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && x6 && ~x7 && x8 && x9 && ~x12 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && x5 && x6 && ~x7 && x8 && x9 && ~x12 && x20 && ~x13 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x7 && x8 && x9 && ~x12 && ~x20 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x7 && x8 && ~x9 && x13 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && x6 && ~x7 && x8 && ~x9 && ~x13 && x20 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 && x5 && x6 && ~x7 && x8 && ~x9 && ~x13 && x20 && ~x12 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x7 && x8 && ~x9 && ~x13 && ~x20 )
						nx_state = s1;
					else if( ~x4 && x5 && x6 && ~x7 && ~x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y24 = 1'b1;	
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && x6 && ~x7 && ~x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && x3 && x11 && x7 && x8 && x9 )
						begin
							y47 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && x3 && x11 && x7 && x8 && ~x9 )
						begin
							y48 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && x3 && x11 && x7 && ~x8 && x9 )
						begin
							y49 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && x3 && x11 && x7 && ~x8 && ~x9 )
						begin
							y50 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && x3 && x11 && ~x7 && x8 && x9 )
						begin
							y51 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x4 && x5 && ~x6 && x3 && x11 && ~x7 && x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x4 && x5 && ~x6 && x3 && x11 && ~x7 && ~x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y55 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && x3 && ~x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y46 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && x7 && x8 && x9 )
						begin
							y47 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && x7 && x8 && ~x9 )
						begin
							y48 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && x7 && ~x8 && x9 )
						begin
							y49 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && x7 && ~x8 && ~x9 )
						begin
							y50 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && ~x7 && x8 && x9 )
						begin
							y51 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && ~x7 && x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y53 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && ~x7 && ~x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y54 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && x5 && ~x6 && ~x3 && ~x10 && ~x7 && ~x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && x6 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && ~x5 && x6 && ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y46 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x4 && ~x5 && ~x6 && x3 && x11 && x8 && x9 )
						begin
							y5 = 1'b1;	y10 = 1'b1;	y16 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && x3 && x11 && x8 && ~x9 )
						begin
							y5 = 1'b1;	y10 = 1'b1;	y16 = 1'b1;	
							y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && x3 && x11 && ~x8 )
						begin
							y5 = 1'b1;	y10 = 1'b1;	y16 = 1'b1;	
							y18 = 1'b1;	y20 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && x3 && ~x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y41 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y46 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && ~x10 && x7 && x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	y32 = 1'b1;	y33 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && ~x10 && x7 && x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y34 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	y37 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && ~x10 && x7 && ~x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	y38 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && ~x10 && x7 && ~x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y34 = 1'b1;	
							y35 = 1'b1;	y39 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && ~x10 && ~x7 && x8 && x9 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y19 = 1'b1;	y40 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && ~x10 && ~x7 && x8 && ~x9 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y17 = 1'b1;	
							y18 = 1'b1;	y40 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x4 && ~x5 && ~x6 && ~x3 && ~x10 && ~x7 && ~x8 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y40 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y56 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y58 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y33 = 1'b1;	
							y60 = 1'b1;	y61 = 1'b1;	y62 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s25;
				s26 : if( x16 )
						begin
							y23 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x16 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x16 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x16 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( ~x16 && ~x20 )
						nx_state = s1;
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y5 = 1'b1;	y42 = 1'b1;	y43 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y5 = 1'b1;	y42 = 1'b1;	y43 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y33 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y33 = 1'b1;	
							y59 = 1'b1;	y60 = 1'b1;	y61 = 1'b1;	
							y62 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y59 = 1'b1;	
							y69 = 1'b1;	y70 = 1'b1;	y71 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y74 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y69 = 1'b1;	
							y70 = 1'b1;	y71 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s35;
				s36 : if( x15 )
						begin
							y5 = 1'b1;	y42 = 1'b1;	y43 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x15 )
						begin
							y5 = 1'b1;	y42 = 1'b1;	y43 = 1'b1;	
							y44 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s36;
				s37 : if( x15 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 )
						begin
							y58 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s37;
				s38 : if( x14 && x6 && x7 && x8 )
						begin
							y63 = 1'b1;	
							nx_state = s26;
						end
					else if( x14 && x6 && x7 && ~x8 && x9 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y5 = 1'b1;	
							y74 = 1'b1;	
							nx_state = s27;
						end
					else if( x14 && x6 && x7 && ~x8 && ~x9 && x17 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( x14 && x6 && x7 && ~x8 && ~x9 && ~x17 && ~x20 )
						nx_state = s1;
					else if( x14 && x6 && ~x7 && x8 && x9 && x18 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x14 && x6 && ~x7 && x8 && x9 && ~x18 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && x6 && ~x7 && x8 && x9 && ~x18 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && x6 && ~x7 && x8 && x9 && ~x18 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( x14 && x6 && ~x7 && x8 && x9 && ~x18 && ~x20 )
						nx_state = s1;
					else if( x14 && x6 && ~x7 && x8 && ~x9 && x19 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && x13 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && ~x13 && x12 )
						begin
							y22 = 1'b1;	
							nx_state = s1;
						end
					else if( x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && x20 && ~x13 && ~x12 )
						nx_state = s1;
					else if( x14 && x6 && ~x7 && x8 && ~x9 && ~x19 && ~x20 )
						nx_state = s1;
					else if( x14 && x6 && ~x7 && ~x8 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else if( x14 && x6 && ~x7 && ~x8 && ~x9 )
						begin
							y65 = 1'b1;	
							nx_state = s15;
						end
					else if( x14 && ~x6 )
						begin
							y57 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x14 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y20 = 1'b1;	
							y40 = 1'b1;	y45 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s38;
				s39 : if( 1'b1 )
						begin
							y3 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s39;
				s40 : if( x5 && x7 && x8 && x9 )
						begin
							y47 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && x7 && x8 && ~x9 )
						begin
							y48 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && x7 && ~x8 && x9 )
						begin
							y49 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && x7 && ~x8 && ~x9 )
						begin
							y50 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && ~x7 && x3 && x8 && x9 )
						begin
							y51 = 1'b1;	
							nx_state = s16;
						end
					else if( x5 && ~x7 && x3 && x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s17;
						end
					else if( x5 && ~x7 && x3 && ~x8 && x11 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y55 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && ~x7 && x3 && ~x8 && ~x11 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && ~x7 && ~x3 && x8 && x10 && x9 )
						begin
							y51 = 1'b1;	
							nx_state = s16;
						end
					else if( x5 && ~x7 && ~x3 && x8 && x10 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s17;
						end
					else if( x5 && ~x7 && ~x3 && x8 && ~x10 && x9 )
						begin
							y51 = 1'b1;	
							nx_state = s18;
						end
					else if( x5 && ~x7 && ~x3 && x8 && ~x10 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y53 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && ~x7 && ~x3 && ~x8 && x9 && x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y24 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && ~x7 && ~x3 && ~x8 && x9 && ~x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							y54 = 1'b1;	
							nx_state = s15;
						end
					else if( x5 && ~x7 && ~x3 && ~x8 && ~x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y18 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x5 && x8 && x9 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y19 = 1'b1;	y66 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x5 && x8 && ~x9 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y17 = 1'b1;	
							y18 = 1'b1;	y66 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x5 && ~x8 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y66 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s40;
				s41 : if( 1'b1 )
						begin
							y33 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y45 = 1'b1;	
							y64 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s42;

			default : nx_state = 0;
		endcase
	end
endmodule
