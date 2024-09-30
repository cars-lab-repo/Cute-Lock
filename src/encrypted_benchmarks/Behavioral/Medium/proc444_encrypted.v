/******** Key Information: *********** 
Key 1:   bin: '0010001111111100001'    dec: 73697
Key 2:   bin: '0000111001111010111'    dec: 29655
Key 3:   bin: '0000110111001011111'    dec: 28255
Key 4:   bin: '1000011100010111001'    dec: 276665
Key 5:   bin: '0001001101101011111'    dec: 39775
Key 6:   bin: '1010111101011110001'    dec: 359153
**************************************/

module proc444 (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72;
reg[6:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29, s30=30,
	s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39, s40=40,
	s41=41, s42=42, s43=43, s44=44, s45=45, s46=46, s47=47, s48=48, s49=49, s50=50,
	s51=51, s52=52, s53=53, s54=54, s55=55, s56=56, s57=57, s58=58, s59=59, s60=60,
	s61=61, s62=62, s63=63, s64=64, s65=65, s66=66, s67=67, s68=68, s69=69, s70=70,
	s71=71, s72=72, s73=73, s74=74, s75=75, s76=76, s77=77, s78=78, s79=79, s80=80,
	s81=81, s82=82, s83=83, s84=84, s85=85, s86=86, s87=87, s88=88, s89=89, s90=90,
	s91=91, s92=92, s93=93, s94=94, s95=95, s96=96, s97=97, s98=98, s99=99, s100=100,
	s101=101, s102=102, s103=103, s104=104, s105=105, s106=106, s107=107, s108=108, s109=109, s110=110,
	s111=111, s112=112, s113=113, s114=114, s115=115;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 35) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 5 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s3;
		end
		if ( counter > 5 && counter <= 11 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s33;
		end
		if ( counter > 11 && counter <= 17 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s93;
		end
		if ( counter > 17 && counter <= 23 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s38;
		end
		if ( counter > 23 && counter <= 29 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s114;
		end
		if ( counter > 29 && counter <= 35 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s76;
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
			y57 = 1'b0;	y58 = 1'b0;	y59 = 1'b0;	y60 = 1'b0;	
			y61 = 1'b0;	y62 = 1'b0;	y63 = 1'b0;	y64 = 1'b0;	
			y65 = 1'b0;	y66 = 1'b0;	y67 = 1'b0;	y68 = 1'b0;	
			y69 = 1'b0;	y70 = 1'b0;	y71 = 1'b0;	y72 = 1'b0;	
		case ( pr_state )
				s1 : if( x7 && x6 )
						begin
							y38 = 1'b1;	
							nx_state = s2;
						end
					else if( x7 && ~x6 && x5 )
						begin
							y34 = 1'b1;	y35 = 1'b1;	
							nx_state = s3;
						end
					else if( x7 && ~x6 && ~x5 )
						begin
							y50 = 1'b1;	y59 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x7 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( x17 )
						begin
							y37 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x17 && x16 )
						begin
							y43 = 1'b1;	y46 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x17 && ~x16 )
						begin
							y64 = 1'b1;	y65 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y43 = 1'b1;	y61 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s4;
				s5 : if( x16 )
						begin
							y43 = 1'b1;	y61 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x16 )
						begin
							y64 = 1'b1;	y70 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s8;
				s9 : if( 1'b1 )
						begin
							y50 = 1'b1;	y58 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y43 = 1'b1;	y48 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y64 = 1'b1;	y66 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s13;
				s14 : if( 1'b1 )
						begin
							y43 = 1'b1;	y63 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y43 = 1'b1;	y63 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s16;
				s17 : if( 1'b1 )
						begin
							y64 = 1'b1;	y72 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s18;
				s19 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y50 = 1'b1;	y57 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y43 = 1'b1;	y47 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y64 = 1'b1;	y68 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y43 = 1'b1;	y62 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y43 = 1'b1;	y62 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y64 = 1'b1;	y71 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s29;
				s30 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s31;
				s32 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y50 = 1'b1;	y56 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y64 = 1'b1;	y67 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y43 = 1'b1;	y60 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s38;
				s39 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y43 = 1'b1;	y60 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s40;
				s41 : if( 1'b1 )
						begin
							y64 = 1'b1;	y69 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y36 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y32 = 1'b1;	y15 = 1'b1;	y33 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s43;
				s44 : if( x11 && x12 && x15 && x13 && x10 )
						begin
							y22 = 1'b1;	
							nx_state = s45;
						end
					else if( x11 && x12 && x15 && x13 && ~x10 && x9 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && x12 && x15 && x13 && ~x10 && x9 && ~x19 )
						nx_state = s1;
					else if( x11 && x12 && x15 && x13 && ~x10 && ~x9 )
						nx_state = s1;
					else if( x11 && x12 && x15 && ~x13 && x14 )
						begin
							y15 = 1'b1;	
							nx_state = s46;
						end
					else if( x11 && x12 && x15 && ~x13 && ~x14 && x10 )
						begin
							y3 = 1'b1;	
							nx_state = s47;
						end
					else if( x11 && x12 && x15 && ~x13 && ~x14 && ~x10 )
						nx_state = s44;
					else if( x11 && x12 && ~x15 && x13 && x9 )
						begin
							y22 = 1'b1;	
							nx_state = s45;
						end
					else if( x11 && x12 && ~x15 && x13 && ~x9 && x10 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( x11 && x12 && ~x15 && x13 && ~x9 && x10 && ~x19 )
						nx_state = s1;
					else if( x11 && x12 && ~x15 && x13 && ~x9 && ~x10 )
						nx_state = s1;
					else if( x11 && x12 && ~x15 && ~x13 && x14 )
						begin
							y16 = 1'b1;	
							nx_state = s46;
						end
					else if( x11 && x12 && ~x15 && ~x13 && ~x14 && x9 )
						begin
							y13 = 1'b1;	y3 = 1'b1;	y14 = 1'b1;	
							nx_state = s48;
						end
					else if( x11 && x12 && ~x15 && ~x13 && ~x14 && ~x9 )
						nx_state = s44;
					else if( x11 && ~x12 && x14 )
						begin
							y3 = 1'b1;	
							nx_state = s47;
						end
					else if( x11 && ~x12 && ~x14 && x3 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	
							nx_state = s49;
						end
					else if( x11 && ~x12 && ~x14 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x11 && x12 && x8 && x3 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x11 && x12 && x8 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x11 && x12 && ~x8 && x3 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x11 && x12 && ~x8 && ~x3 && x15 && x10 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x11 && x12 && ~x8 && ~x3 && x15 && x10 && ~x19 )
						nx_state = s1;
					else if( ~x11 && x12 && ~x8 && ~x3 && x15 && ~x10 && x9 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x11 && x12 && ~x8 && ~x3 && x15 && ~x10 && x9 && ~x19 )
						nx_state = s1;
					else if( ~x11 && x12 && ~x8 && ~x3 && x15 && ~x10 && ~x9 )
						nx_state = s1;
					else if( ~x11 && x12 && ~x8 && ~x3 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x11 && ~x12 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x11 && ~x12 && ~x13 && x3 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x11 && ~x12 && ~x13 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s44;
				s45 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s45;
				s46 : if( x10 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x19 )
						nx_state = s1;
					else if( ~x10 && x9 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x9 && ~x19 )
						nx_state = s1;
					else if( ~x10 && ~x9 )
						nx_state = s1;
					else nx_state = s46;
				s47 : if( 1'b1 )
						begin
							y26 = 1'b1;	y39 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y26 = 1'b1;	y27 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s48;
				s49 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s49;
				s50 : if( x2 )
						begin
							y26 = 1'b1;	y39 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x2 && x14 && x11 )
						begin
							y26 = 1'b1;	y27 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x2 && x14 && ~x11 )
						begin
							y26 = 1'b1;	y39 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x2 && ~x14 )
						begin
							y26 = 1'b1;	y39 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s51;
				s52 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s52;
				s53 : if( 1'b1 )
						begin
							y50 = 1'b1;	y52 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s53;
				s54 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s54;
				s55 : if( 1'b1 )
						begin
							y26 = 1'b1;	y42 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s55;
				s56 : if( 1'b1 )
						begin
							y26 = 1'b1;	y31 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s56;
				s57 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s57;
				s58 : if( 1'b1 )
						begin
							y26 = 1'b1;	y42 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s58;
				s59 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s59;
				s60 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s60;
				s61 : if( 1'b1 )
						begin
							y50 = 1'b1;	y53 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s61;
				s62 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s62;
				s63 : if( 1'b1 )
						begin
							y26 = 1'b1;	y41 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s63;
				s64 : if( 1'b1 )
						begin
							y26 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s64;
				s65 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s69;
						end
					else nx_state = s65;
				s66 : if( 1'b1 )
						begin
							y26 = 1'b1;	y41 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s66;
				s67 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s67;
				s68 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s68;
				s69 : if( 1'b1 )
						begin
							y50 = 1'b1;	y54 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s69;
				s70 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s70;
				s71 : if( 1'b1 )
						begin
							y26 = 1'b1;	y40 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s71;
				s72 : if( 1'b1 )
						begin
							y26 = 1'b1;	y29 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s72;
				s73 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s73;
				s74 : if( 1'b1 )
						begin
							y26 = 1'b1;	y40 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s74;
				s75 : if( x11 && x12 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s46;
						end
					else if( x11 && ~x12 )
						begin
							y24 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x11 && x13 && x14 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x11 && x13 && x14 && ~x15 )
						begin
							y20 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x11 && x13 && ~x14 && x15 )
						begin
							y12 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x11 && x13 && ~x14 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x11 && ~x13 && x14 && x15 )
						begin
							y25 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x11 && ~x13 && x14 && ~x15 )
						begin
							y8 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x11 && ~x13 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s75;
				s76 : if( x11 && x4 && x14 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s81;
						end
					else if( x11 && x4 && x14 && ~x2 && x18 )
						begin
							y7 = 1'b1;	y23 = 1'b1;	
							nx_state = s82;
						end
					else if( x11 && x4 && x14 && ~x2 && ~x18 )
						begin
							y5 = 1'b1;	
							nx_state = s84;
						end
					else if( x11 && x4 && ~x14 )
						begin
							y17 = 1'b1;	
							nx_state = s80;
						end
					else if( x11 && ~x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s81;
						end
					else if( x11 && ~x4 && ~x2 && x18 && x14 )
						begin
							y7 = 1'b1;	y23 = 1'b1;	
							nx_state = s82;
						end
					else if( x11 && ~x4 && ~x2 && x18 && ~x14 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( x11 && ~x4 && ~x2 && ~x18 )
						begin
							y5 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x11 && x12 && x8 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x11 && x12 && x8 && ~x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x11 && x12 && x8 && ~x4 && ~x2 && x18 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x11 && x12 && x8 && ~x4 && ~x2 && ~x18 )
						begin
							y5 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x11 && x12 && ~x8 && x15 && x10 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x11 && x12 && ~x8 && x15 && x10 && ~x19 )
						nx_state = s1;
					else if( ~x11 && x12 && ~x8 && x15 && ~x10 && x9 && x19 )
						begin
							y55 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x11 && x12 && ~x8 && x15 && ~x10 && x9 && ~x19 )
						nx_state = s1;
					else if( ~x11 && x12 && ~x8 && x15 && ~x10 && ~x9 )
						nx_state = s1;
					else if( ~x11 && x12 && ~x8 && ~x15 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x11 && x12 && ~x8 && ~x15 && ~x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x11 && x12 && ~x8 && ~x15 && ~x4 && ~x2 && x18 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x11 && x12 && ~x8 && ~x15 && ~x4 && ~x2 && ~x18 )
						begin
							y5 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x11 && ~x12 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x11 && ~x12 && ~x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x11 && ~x12 && ~x4 && ~x2 && x18 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x11 && ~x12 && ~x4 && ~x2 && ~x18 )
						begin
							y5 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s76;
				s77 : if( x11 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s85;
						end
					else if( x11 && ~x2 && x14 )
						begin
							y6 = 1'b1;	
							nx_state = s85;
						end
					else if( x11 && ~x2 && ~x14 )
						begin
							y3 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x11 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x11 && ~x12 )
						begin
							y6 = 1'b1;	
							nx_state = s85;
						end
					else nx_state = s77;
				s78 : if( x3 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s78;
				s79 : if( x1 )
						begin
							y2 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s80;
						end
					else nx_state = s79;
				s80 : if( 1'b1 )
						begin
							y3 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s80;
				s81 : if( 1'b1 )
						begin
							y43 = 1'b1;	y46 = 1'b1;	
							nx_state = s86;
						end
					else nx_state = s81;
				s82 : if( 1'b1 )
						begin
							y43 = 1'b1;	y61 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s82;
				s83 : if( 1'b1 )
						begin
							y43 = 1'b1;	y46 = 1'b1;	
							nx_state = s88;
						end
					else nx_state = s83;
				s84 : if( 1'b1 )
						begin
							y26 = 1'b1;	y39 = 1'b1;	
							nx_state = s89;
						end
					else nx_state = s84;
				s85 : if( x11 && x14 )
						begin
							y7 = 1'b1;	y23 = 1'b1;	
							nx_state = s82;
						end
					else if( x11 && ~x14 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x11 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x11 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s85;
				s86 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s90;
						end
					else nx_state = s86;
				s87 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s91;
						end
					else nx_state = s87;
				s88 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s92;
						end
					else nx_state = s88;
				s89 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s93;
						end
					else nx_state = s89;
				s90 : if( 1'b1 )
						begin
							y43 = 1'b1;	y48 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s90;
				s91 : if( 1'b1 )
						begin
							y43 = 1'b1;	y63 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s91;
				s92 : if( 1'b1 )
						begin
							y43 = 1'b1;	y48 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s92;
				s93 : if( 1'b1 )
						begin
							y26 = 1'b1;	y42 = 1'b1;	
							nx_state = s97;
						end
					else nx_state = s93;
				s94 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s98;
						end
					else nx_state = s94;
				s95 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s99;
						end
					else nx_state = s95;
				s96 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else nx_state = s96;
				s97 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s101;
						end
					else nx_state = s97;
				s98 : if( 1'b1 )
						begin
							y43 = 1'b1;	y47 = 1'b1;	
							nx_state = s102;
						end
					else nx_state = s98;
				s99 : if( 1'b1 )
						begin
							y43 = 1'b1;	y62 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s99;
				s100 : if( 1'b1 )
						begin
							y43 = 1'b1;	y47 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s100;
				s101 : if( 1'b1 )
						begin
							y26 = 1'b1;	y41 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s101;
				s102 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s106;
						end
					else nx_state = s102;
				s103 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s107;
						end
					else nx_state = s103;
				s104 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s108;
						end
					else nx_state = s104;
				s105 : if( 1'b1 )
						begin
							y28 = 1'b1;	
							nx_state = s109;
						end
					else nx_state = s105;
				s106 : if( 1'b1 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s110;
						end
					else nx_state = s106;
				s107 : if( 1'b1 )
						begin
							y43 = 1'b1;	y60 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s107;
				s108 : if( 1'b1 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s111;
						end
					else nx_state = s108;
				s109 : if( 1'b1 )
						begin
							y26 = 1'b1;	y40 = 1'b1;	
							nx_state = s112;
						end
					else nx_state = s109;
				s110 : if( 1'b1 )
						begin
							y6 = 1'b1;	
							nx_state = s113;
						end
					else nx_state = s110;
				s111 : if( x11 )
						begin
							y3 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x11 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x11 && ~x12 )
						begin
							y6 = 1'b1;	
							nx_state = s114;
						end
					else nx_state = s111;
				s112 : if( 1'b1 )
						begin
							y49 = 1'b1;	
							nx_state = s115;
						end
					else nx_state = s112;
				s113 : if( x18 && x11 && x14 )
						begin
							y7 = 1'b1;	y23 = 1'b1;	
							nx_state = s82;
						end
					else if( x18 && x11 && ~x14 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( x18 && ~x11 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x18 )
						begin
							y5 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s113;
				s114 : if( 1'b1 )
						begin
							y3 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s114;
				s115 : if( x11 && x14 )
						begin
							y7 = 1'b1;	y23 = 1'b1;	
							nx_state = s82;
						end
					else if( x11 && ~x14 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x11 )
						begin
							y7 = 1'b1;	
							nx_state = s83;
						end
					else nx_state = s115;

			default : nx_state = 0;
		endcase
	end
endmodule
