/******** Key Information: *********** 
Key 1:   bin: '00010111101111100011'    dec: 97251
Key 2:   bin: '01110001110011101100'    dec: 466156
Key 3:   bin: '11111101001000110010'    dec: 1036850
Key 4:   bin: '10010111100001001000'    dec: 620616
Key 5:   bin: '00110110000011101010'    dec: 221418
Key 6:   bin: '00100100111011000000'    dec: 151232
**************************************/

module proc1688 (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38;
reg[6:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 53) ? 0 : counter + 1;
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
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s27;
		end
		if ( counter > 8 && counter <= 17 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s18;
		end
		if ( counter > 17 && counter <= 26 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s6;
		end
		if ( counter > 26 && counter <= 35 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s22;
		end
		if ( counter > 35 && counter <= 44 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s41;
		end
		if ( counter > 44 && counter <= 53 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s21;
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
			y37 = 1'b0;	y38 = 1'b0;	
		case ( pr_state )
				s1 : if( x6 && x5 && x20 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y5 = 1'b1;	y8 = 1'b1;	y14 = 1'b1;	
							y29 = 1'b1;	y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s2;
						end
					else if( x6 && x5 && ~x20 && x19 )
						begin
							y8 = 1'b1;	y14 = 1'b1;	
							nx_state = s3;
						end
					else if( x6 && x5 && ~x20 && ~x19 )
						begin
							y14 = 1'b1;	y32 = 1'b1;	
							nx_state = s4;
						end
					else if( x6 && ~x5 && x4 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y31 = 1'b1;	y32 = 1'b1;	y35 = 1'b1;	
							nx_state = s5;
						end
					else if( x6 && ~x5 && ~x4 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x6 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( x19 )
						begin
							y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x19 )
						begin
							y32 = 1'b1;	y38 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y13 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y13 = 1'b1;	y34 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y19 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y13 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y13 = 1'b1;	y31 = 1'b1;	y34 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s13;
				s14 : if( 1'b1 )
						begin
							y13 = 1'b1;	y31 = 1'b1;	y38 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y4 = 1'b1;	y13 = 1'b1;	y29 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y4 = 1'b1;	y13 = 1'b1;	y35 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s16;
				s17 : if( 1'b1 )
						begin
							y13 = 1'b1;	y31 = 1'b1;	y34 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y19 = 1'b1;	y37 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s18;
				s19 : if( 1'b1 )
						nx_state = s1;
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y14 = 1'b1;	y17 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y36 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s20;
				s21 : if( x12 && x14 && x13 && x16 )
						begin
							y20 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && x14 && x13 && ~x16 )
						begin
							y24 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && x14 && ~x13 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s23;
						end
					else if( x12 && ~x14 && x13 && x15 && x16 )
						begin
							y22 = 1'b1;	y23 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && ~x14 && x13 && x15 && ~x16 )
						begin
							y7 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							y21 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && ~x14 && x13 && ~x15 && x16 && x11 )
						begin
							y19 = 1'b1;	
							nx_state = s24;
						end
					else if( x12 && ~x14 && x13 && ~x15 && x16 && ~x11 && x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x14 && x13 && ~x15 && x16 && ~x11 && x18 && ~x10 )
						nx_state = s1;
					else if( x12 && ~x14 && x13 && ~x15 && x16 && ~x11 && ~x18 )
						nx_state = s1;
					else if( x12 && ~x14 && x13 && ~x15 && ~x16 && x10 )
						begin
							y19 = 1'b1;	
							nx_state = s24;
						end
					else if( x12 && ~x14 && x13 && ~x15 && ~x16 && ~x10 && x18 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( x12 && ~x14 && x13 && ~x15 && ~x16 && ~x10 && x18 && ~x11 )
						nx_state = s1;
					else if( x12 && ~x14 && x13 && ~x15 && ~x16 && ~x10 && ~x18 )
						nx_state = s1;
					else if( x12 && ~x14 && ~x13 && x15 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s23;
						end
					else if( x12 && ~x14 && ~x13 && ~x15 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s25;
						end
					else if( x12 && ~x14 && ~x13 && ~x15 && ~x3 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s26;
						end
					else if( x12 && ~x14 && ~x13 && ~x15 && ~x3 && ~x2 && x16 )
						begin
							y7 = 1'b1;	y15 = 1'b1;	y16 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && ~x14 && ~x13 && ~x15 && ~x3 && ~x2 && ~x16 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	y15 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y13 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x12 && ~x3 && x13 && x15 && x16 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && x15 && ~x16 && ~x9 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && x8 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && x16 && ~x8 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && x7 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && ~x3 && x13 && ~x15 && ~x16 && ~x7 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x3 && ~x13 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x12 && ~x3 && ~x13 && ~x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s21;
				s22 : if( x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x10 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x18 )
						nx_state = s1;
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y19 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y19 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s25;
				s26 : if( x12 && x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s30;
						end
					else if( x12 && ~x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x12 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s26;
				s27 : if( x14 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x14 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y19 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y13 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y19 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y8 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y4 = 1'b1;	y13 = 1'b1;	y29 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y4 = 1'b1;	y13 = 1'b1;	y29 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s38;
				s39 : if( x12 && x1 && x16 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s43;
						end
					else if( x12 && x1 && x16 && ~x2 && x17 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s30;
						end
					else if( x12 && x1 && x16 && ~x2 && ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else if( x12 && x1 && ~x16 )
						begin
							y15 = 1'b1;	
							nx_state = s22;
						end
					else if( x12 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s43;
						end
					else if( x12 && ~x1 && ~x2 && x17 && x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s30;
						end
					else if( x12 && ~x1 && ~x2 && x17 && ~x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s31;
						end
					else if( x12 && ~x1 && ~x2 && ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x12 && x13 && x15 && x16 && x1 )
						begin
							y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x1 && ~x2 && x17 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x12 && x13 && x15 && x16 && ~x1 && ~x2 && ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && x1 )
						begin
							y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x1 && ~x2 && x17 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x12 && x13 && x15 && ~x16 && x9 && ~x1 && ~x2 && ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && x15 && ~x16 && ~x9 && ~x18 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && x16 && x8 && x1 )
						begin
							y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x1 && ~x2 && x17 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x12 && x13 && ~x15 && x16 && x8 && ~x1 && ~x2 && ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && x16 && ~x8 && ~x18 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && x1 )
						begin
							y17 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x1 && ~x2 && x17 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && x7 && ~x1 && ~x2 && ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x18 && x10 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && x11 )
						begin
							y33 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && x18 && ~x10 && ~x11 )
						nx_state = s1;
					else if( ~x12 && x13 && ~x15 && ~x16 && ~x7 && ~x18 )
						nx_state = s1;
					else if( ~x12 && ~x13 && x1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x12 && ~x13 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x12 && ~x13 && ~x1 && ~x2 && x17 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x12 && ~x13 && ~x1 && ~x2 && ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y13 = 1'b1;	y31 = 1'b1;	y34 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s40;
				s41 : if( 1'b1 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s41;
				s42 : if( x13 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x13 && x14 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x13 && ~x14 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y30 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y18 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s44;
				s45 : if( 1'b1 )
						begin
							y4 = 1'b1;	y13 = 1'b1;	y29 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y8 = 1'b1;	y18 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s46;
				s47 : if( x17 && x12 && x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s30;
						end
					else if( x17 && x12 && ~x16 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s31;
						end
					else if( x17 && ~x12 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y31 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x17 )
						begin
							y1 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s47;

			default : nx_state = 0;
		endcase
	end
endmodule
