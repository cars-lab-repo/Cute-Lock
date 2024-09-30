/******** Key Information: *********** 
Key 1:   bin: '110101100011101100101001011100111110010111001011000'    dec: 1884396695006808
Key 2:   bin: '111001111000111010100010011010011101110110110111010'    dec: 2036798369754554
Key 3:   bin: '000010100100001110100010101011111101111001100010101'    dec: 90284868170517
Key 4:   bin: '000010111110000011010100001111001100001111011101000'    dec: 104482090655464
Key 5:   bin: '101111100111101111000111000101110010101011110010110'    dec: 1675510643513238
Key 6:   bin: '011011010011010011001111100111100010100001010001001'    dec: 960588711805577
Key 7:   bin: '010011100100100100001101010011011101001101101010100'    dec: 688605302266708
Key 8:   bin: '001101011000110101111000011010011001011111001111111'    dec: 471053814775423
Key 9:   bin: '010011110101010000100110001100010000111101110010100'    dec: 697782692772756
Key 10:   bin: '001111101101100100100010010110000111110110000000000'    dec: 552818440399872
Key 11:   bin: '110011100100001010010101011101011100010111100011010'    dec: 1814282965495578
Key 12:   bin: '010100010010001110111100101001100111111010000111000'    dec: 713711445865528
Key 13:   bin: '111000000001011111000010010011001100100010010011100'    dec: 1971141189452956
Key 14:   bin: '001110010110010101010101011101100011110111001100100'    dec: 504859106340452
Key 15:   bin: '101001111011010110111001011100010100000110010010010'    dec: 1475191537011858
Key 16:   bin: '111111111001010111110010100101101011101001010110000'    dec: 2248155881394864
Key 17:   bin: '100000100001110000111010011011000001100000100000011'    dec: 1144462006862083
**************************************/

module tiger (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45, keyinput46, keyinput47, keyinput48, keyinput49, keyinput50, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45, keyinput46, keyinput47, keyinput48, keyinput49, keyinput50;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31;
reg[10:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31;

parameter s1=0, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
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
	s111=111;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 815) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 47 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s6;
		end
		if ( counter > 47 && counter <= 95 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s93;
		end
		if ( counter > 95 && counter <= 143 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s105;
		end
		if ( counter > 143 && counter <= 191 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s26;
		end
		if ( counter > 191 && counter <= 239 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s14;
		end
		if ( counter > 239 && counter <= 287 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s50;
		end
		if ( counter > 287 && counter <= 335 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s31;
		end
		if ( counter > 335 && counter <= 383 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s18;
		end
		if ( counter > 383 && counter <= 431 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s70;
		end
		if ( counter > 431 && counter <= 479 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s85;
		end
		if ( counter > 479 && counter <= 527 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s57;
		end
		if ( counter > 527 && counter <= 575 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s107;
		end
		if ( counter > 575 && counter <= 623 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s39;
		end
		if ( counter > 623 && counter <= 671 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b0 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s24;
		end
		if ( counter > 671 && counter <= 719 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s111;
		end
		if ( counter > 719 && counter <= 767 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s37;
		end
		if ( counter > 767 && counter <= 815 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s63;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27 or x28 or x29 or x30 or 
	x31 or x32 or x33 or x34 or x35 or x36 or x37 or x38 or x39 or x40 or x41 or x42 or x43 or x44 or x45 or 
	x46 or x47 or x48 or x49 or x50 or x51)
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
				s1 : if( x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && ~x1 )
						nx_state = s1;
					else if( ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && ~x16 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x16 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s1;
				s2 : if( x15 && x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s2;
				s3 : if( x15 && x16 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && x16 && ~x5 && ~x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && ~x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s3;
				s4 : if( x15 && x16 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s4;
					else if( ~x15 && x16 && x4 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 && x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s4;
				s5 : if( x15 && x16 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && x16 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && x2 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x2 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && ~x2 )
						nx_state = s5;
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && ~x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s5;
				s6 : if( x15 && x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && ~x16 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && ~x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s6;
				s7 : if( x15 && x16 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s9;
						end
					else if( x15 && ~x16 && x13 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s7;
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s7;
					else if( ~x15 && x16 && x4 && x5 && x2 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s7;
				s8 : if( x15 && x16 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s8;
					else if( ~x15 && x16 && x4 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x16 && ~x4 && x2 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s8;
				s9 : if( x15 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && x16 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && ~x2 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && ~x2 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y23 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s9;
				s10 : if( x15 && x16 && x5 && x1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && ~x4 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && x5 && ~x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x5 && ~x6 && x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && ~x4 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s10;
				s11 : if( x15 && x16 && x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && x16 && ~x1 && x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && x2 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x1 && ~x5 && ~x6 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && x7 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x7 && x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s11;
					else if( ~x15 && x16 && x4 && x5 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x3 && x2 && x11 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x15 && ~x16 && x3 && x2 && ~x11 && x4 && x12 && x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x16 && x3 && x2 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s11;
					else if( ~x15 && ~x16 && x3 && x2 && ~x11 && x4 && ~x12 )
						nx_state = s11;
					else if( ~x15 && ~x16 && x3 && x2 && ~x11 && ~x4 )
						nx_state = s11;
					else if( ~x15 && ~x16 && x3 && ~x2 )
						nx_state = s11;
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && x11 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && ~x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && x6 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && x8 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && ~x8 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && ~x8 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && x9 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && ~x9 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x2 )
						nx_state = s11;
					else nx_state = s11;
				s12 : if( x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && x8 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x8 && x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s12;
					else if( ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s12;
				s13 : if( x15 && x16 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && x16 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && x3 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && ~x4 && x2 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && ~x4 && x2 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && ~x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s13;
				s14 : if( x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && x13 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x13 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s14;
					else if( ~x15 && x16 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s14;
				s15 : if( x15 && x16 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s15;
					else if( ~x15 && x16 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x16 && x13 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && ~x16 && ~x13 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s15;
				s16 : if( x15 && x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && x2 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x2 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && ~x2 )
						nx_state = s16;
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s16;
				s17 : if( x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && x12 && x13 && x3 )
						begin
							y13 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && ~x16 && x12 && x13 && ~x3 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && ~x16 && x12 && x13 && ~x3 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && ~x16 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 && ~x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s17;
				s18 : if( x40 && x10 && x39 && x36 )
						nx_state = s18;
					else if( x40 && x10 && x39 && ~x36 && x46 && x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && x10 && x39 && ~x36 && x46 && ~x51 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( x40 && x10 && x39 && ~x36 && ~x46 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x40 && x10 && ~x39 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( x40 && ~x10 && x11 && x34 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( x40 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x45 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x40 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( x40 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x40 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x40 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && x10 && x11 && x1 && x2 && x3 && x4 )
						nx_state = s18;
					else if( ~x40 && x10 && x11 && x1 && x2 && x3 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && x10 && x11 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && x10 && x11 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x40 && x10 && x11 && x1 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && x10 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x40 && x10 && x11 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x40 && x10 && ~x11 && ~x12 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x40 && ~x10 && x1 && x11 )
						begin
							y16 = 1'b1;	y25 = 1'b1;	y27 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x40 && ~x10 && x1 && ~x11 && x12 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && ~x10 && x1 && ~x11 && ~x12 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x40 && ~x10 && ~x1 && x11 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && ~x10 && ~x1 && x11 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x1 && ~x11 && x12 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x1 && ~x11 && x12 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && ~x10 && ~x1 && ~x11 && ~x12 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x1 && ~x11 && ~x12 && ~x2 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x1 && ~x11 && ~x12 && ~x2 && ~x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s18;
				s19 : if( x15 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x14 && x13 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x15 && x14 && ~x13 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && ~x14 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s19;
				s20 : if( x15 && x16 )
						begin
							y13 = 1'b1;	
							nx_state = s22;
						end
					else if( x15 && ~x16 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && ~x11 && x10 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && ~x16 && ~x11 && ~x10 )
						nx_state = s20;
					else if( ~x15 && x16 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x16 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s21;
				s22 : if( x15 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x16 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && ~x16 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s23;
				s24 : if( x40 && x35 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x35 && x13 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( x40 && ~x35 && ~x13 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x40 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && ~x10 && x11 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x40 && ~x10 && ~x11 && x7 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s24;
				s25 : if( x40 && x50 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( x40 && x50 && x19 && ~x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( x40 && x50 && ~x19 )
						nx_state = s25;
					else if( x40 && ~x50 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && x10 && x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && x10 && ~x11 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && ~x10 && x11 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x40 && ~x10 && x11 && ~x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && ~x4 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s25;
				s26 : if( x40 && x48 && x47 )
						nx_state = s26;
					else if( x40 && x48 && ~x47 && x42 && x51 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( x40 && x48 && ~x47 && x42 && ~x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && x48 && ~x47 && ~x42 && x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && x48 && ~x47 && ~x42 && ~x34 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( x40 && ~x48 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && x11 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && ~x11 && x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && ~x11 && x1 && ~x2 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s26;
					else if( ~x40 && ~x11 && ~x1 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s26;
				s27 : if( x28 && x43 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( x28 && ~x43 )
						nx_state = s27;
					else if( ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x28 && x27 && ~x8 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x28 && x27 && ~x8 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x28 && ~x27 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s27;
				s28 : if( x50 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x50 )
						nx_state = s28;
					else nx_state = s28;
				s29 : if( x40 && x16 && x45 && x27 && x29 && x42 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s43;
						end
					else if( x40 && x16 && x45 && x27 && x29 && ~x42 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && x16 && x45 && x27 && ~x29 && x33 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && x16 && x45 && x27 && ~x29 && ~x33 && x43 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( x40 && x16 && x45 && x27 && ~x29 && ~x33 && ~x43 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && x16 && x45 && ~x27 )
						nx_state = s29;
					else if( x40 && x16 && ~x45 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x16 && x37 && x44 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && ~x16 && x37 && x44 && ~x1 )
						nx_state = s29;
					else if( x40 && ~x16 && x37 && ~x44 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x16 && ~x37 && x25 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x16 && ~x37 && ~x25 && x4 && x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s38;
						end
					else if( x40 && ~x16 && ~x37 && ~x25 && x4 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && ~x16 && ~x37 && ~x25 && ~x4 )
						nx_state = s29;
					else if( ~x40 && x10 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && x10 && ~x11 && x12 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && x10 && ~x11 && x12 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x40 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && x12 && x2 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x40 && ~x10 && x12 && x2 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && ~x10 && x12 && ~x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x40 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s29;
				s30 : if( x40 && x17 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( x40 && x17 && x19 && ~x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( x40 && x17 && ~x19 )
						nx_state = s30;
					else if( x40 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x40 && ~x17 && ~x20 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && x10 && x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && x10 && ~x11 && x12 && x4 && x1 )
						nx_state = s30;
					else if( ~x40 && x10 && ~x11 && x12 && x4 && ~x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && x10 && ~x11 && x12 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && x10 && ~x11 && ~x12 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x40 && ~x10 && ~x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s30;
				s31 : if( x40 && x51 && x24 && x5 && x36 )
						nx_state = s31;
					else if( x40 && x51 && x24 && x5 && ~x36 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && x51 && ~x24 && x31 && x29 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && x51 && ~x24 && ~x31 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && ~x51 && x11 && x35 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && ~x51 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x51 && x11 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x51 && x11 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x51 && ~x11 && x49 && x35 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s45;
						end
					else if( x40 && ~x51 && ~x11 && x49 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x51 && ~x11 && x49 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x51 && ~x11 && ~x49 && x3 && x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( x40 && ~x51 && ~x11 && ~x49 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x51 && ~x11 && ~x49 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && x10 && x11 && x3 && x4 )
						nx_state = s31;
					else if( ~x40 && x10 && x11 && x3 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && x10 && x11 && ~x3 && x4 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && x10 && x11 && ~x3 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x40 && x10 && x11 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x40 && x10 && ~x11 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && x10 && ~x11 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && ~x10 && x11 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x40 && ~x10 && x11 && ~x6 && x8 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x40 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x40 && ~x10 && x11 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && ~x10 && x11 && ~x6 && ~x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 && ~x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && ~x6 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && ~x6 && ~x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s31;
				s32 : if( x40 && x13 && x23 && x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && x13 && x23 && ~x51 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( x40 && x13 && ~x23 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && ~x13 && x28 && x35 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( x40 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x13 && x28 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x13 && x28 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x13 && ~x28 && x6 && x35 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s45;
						end
					else if( x40 && ~x13 && ~x28 && x6 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x13 && ~x28 && x6 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x40 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && x10 && x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x40 && x10 && ~x11 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && ~x10 && x11 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x40 && ~x10 && x11 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x40 && ~x10 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s32;
				s33 : if( x40 && x8 && x48 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( x40 && x8 && ~x48 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && x8 && ~x48 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( x40 && ~x8 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( x40 && ~x8 && ~x51 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x8 && ~x51 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x40 && x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && ~x10 && x11 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s33;
				s34 : if( x7 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x7 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s34;
				s35 : if( x40 && x29 && x50 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x40 && x29 && ~x50 )
						nx_state = s35;
					else if( x40 && ~x29 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x29 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && x11 && x6 && x9 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x40 && x11 && x6 && ~x9 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x40 && x11 && ~x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x40 && ~x11 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && ~x11 && ~x8 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s36;
				s37 : if( x40 && x10 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s49;
						end
					else if( x40 && x10 && x12 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x40 && x10 && x12 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && x10 && ~x12 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( x40 && ~x10 && x1 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s53;
						end
					else if( x40 && ~x10 && x1 && ~x22 && x2 && x3 && x11 )
						nx_state = s37;
					else if( x40 && ~x10 && x1 && ~x22 && x2 && x3 && ~x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( x40 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x40 && ~x10 && x1 && ~x22 && x2 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x40 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s57;
						end
					else if( x40 && ~x10 && ~x1 && x11 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && ~x10 && ~x1 && x11 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( x40 && ~x10 && ~x1 && ~x11 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && x10 && x39 && x36 )
						nx_state = s37;
					else if( ~x40 && x10 && x39 && ~x36 && x46 && x51 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && x10 && x39 && ~x36 && x46 && ~x51 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x40 && x10 && x39 && ~x36 && ~x46 )
						begin
							y11 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x40 && x10 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x40 && ~x10 && x11 && x34 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x40 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x45 )
						begin
							y11 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x40 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 && x20 )
						begin
							y11 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y11 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s37;
				s38 : if( x40 && x46 && x3 && x23 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( x40 && x46 && x3 && ~x23 )
						nx_state = s38;
					else if( x40 && x46 && ~x3 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x40 && ~x46 && x2 && x23 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( x40 && ~x46 && x2 && ~x23 )
						nx_state = s38;
					else if( x40 && ~x46 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && x10 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && ~x10 && x11 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x40 && ~x10 && x11 && ~x5 && x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && ~x11 && x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s38;
				s39 : if( x38 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x38 )
						nx_state = s39;
					else nx_state = s39;
				s40 : if( x10 && x6 && x7 && x2 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( x10 && x6 && x7 && ~x2 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x10 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x10 && ~x6 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && ~x6 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x10 && x11 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x10 && x11 && ~x5 && x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x10 && ~x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s40;
				s41 : if( x10 && x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x10 && ~x12 && x1 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && ~x12 && x1 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( x10 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x10 && ~x11 && x12 && x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x10 && ~x11 && x12 && ~x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s41;
				s42 : if( x40 && x17 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s38;
						end
					else if( x40 && ~x17 && x43 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( x40 && ~x17 && ~x43 )
						nx_state = s42;
					else if( ~x40 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x40 && ~x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s42;
				s43 : if( x40 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( x40 && ~x3 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x40 && ~x3 && ~x2 && x28 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( x40 && ~x3 && ~x2 && ~x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x40 && x10 && x5 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x40 && x10 && x5 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && x10 && x5 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && x10 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x40 && ~x10 && x11 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x40 && ~x10 && x11 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x40 && ~x10 && ~x11 )
						nx_state = s43;
					else nx_state = s43;
				s44 : if( x40 && x50 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x40 && ~x50 )
						nx_state = s44;
					else if( ~x40 && x11 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x40 && ~x11 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x40 && ~x11 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s44;
				s45 : if( x40 && x37 && x28 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s32;
						end
					else if( x40 && x37 && ~x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x40 && ~x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x40 && x10 && x1 && x2 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x40 && x10 && x1 && x2 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && x10 && x1 && x2 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x40 && x10 && x1 && ~x2 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x40 && x10 && ~x1 && x2 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x40 && x10 && ~x1 && x2 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x40 && x10 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x40 && ~x10 )
						nx_state = s45;
					else nx_state = s45;
				s46 : if( x3 && x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( x3 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s46;
				s47 : if( x8 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s35;
						end
					else if( x8 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x8 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s47;
				s48 : if( x40 && x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( x40 && ~x37 && x9 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s28;
						end
					else if( x40 && ~x37 && ~x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x40 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && x11 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x40 && ~x10 && x11 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x40 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x40 && ~x10 && ~x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s48;
				s49 : if( x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x19 && x26 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s49;
				s50 : if( x40 && x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( x40 && x19 && x28 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x19 && x28 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x40 && x19 && ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( x40 && ~x19 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x40 && x13 && x23 && x51 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && x13 && x23 && ~x51 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x40 && x13 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && ~x13 && x28 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && ~x13 && x28 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x13 && x28 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x13 && x28 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x13 && ~x28 && x6 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x40 && ~x13 && ~x28 && x6 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x13 && ~x28 && x6 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s50;
				s51 : if( x40 && x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s66;
						end
					else if( x40 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s61;
						end
					else if( x40 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( x40 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( x40 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s63;
						end
					else if( x40 && x30 && x16 && ~x6 && ~x8 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && x30 && ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x30 && ~x16 && ~x10 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && ~x30 && x5 && x9 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && ~x30 && x5 && ~x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s65;
						end
					else if( x40 && ~x30 && ~x5 && x3 && x11 )
						nx_state = s51;
					else if( x40 && ~x30 && ~x5 && x3 && ~x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( x40 && ~x30 && ~x5 && ~x3 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x40 && ~x30 && ~x5 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && x51 && x24 && x5 && x36 )
						nx_state = s51;
					else if( ~x40 && x51 && x24 && x5 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && x51 && x24 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && x51 && ~x24 && x31 && x29 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && x51 && ~x24 && x31 && ~x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && x51 && ~x24 && ~x31 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && ~x51 && x11 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x40 && ~x51 && x11 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x51 && x11 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x51 && x11 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x51 && ~x11 && x49 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x40 && ~x51 && ~x11 && x49 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x51 && ~x11 && x49 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x51 && ~x11 && ~x49 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x40 && ~x51 && ~x11 && ~x49 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && ~x51 && ~x11 && ~x49 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s51;
				s52 : if( x40 && x12 && x27 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( x40 && x12 && x27 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && x12 && x27 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x12 && ~x27 && x1 && x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x40 && x12 && ~x27 && x1 && ~x29 )
						nx_state = s52;
					else if( x40 && x12 && ~x27 && ~x1 && x29 )
						nx_state = s52;
					else if( x40 && x12 && ~x27 && ~x1 && ~x29 )
						nx_state = s52;
					else if( x40 && ~x12 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s61;
						end
					else if( x40 && ~x12 && ~x29 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x40 && x17 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x40 && ~x17 && x43 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x40 && ~x17 && ~x43 )
						nx_state = s52;
					else nx_state = s52;
				s53 : if( x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s53;
				s54 : if( x40 && x14 && x8 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x14 && x8 && ~x10 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && x14 && ~x8 && x30 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x40 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( x40 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( x40 && x14 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && ~x14 && x3 && x32 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( x40 && ~x14 && x3 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && ~x14 && ~x3 )
						nx_state = s54;
					else if( ~x40 && x16 && x45 && x27 && x29 && x42 )
						begin
							y13 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x40 && x16 && x45 && x27 && x29 && ~x42 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && x16 && x45 && x27 && ~x29 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && x16 && x45 && x27 && ~x29 && ~x33 && x43 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x40 && x16 && x45 && x27 && ~x29 && ~x33 && ~x43 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && x16 && x45 && ~x27 )
						nx_state = s54;
					else if( ~x40 && x16 && ~x45 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x16 && x37 && x44 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && ~x16 && x37 && x44 && ~x1 )
						nx_state = s54;
					else if( ~x40 && ~x16 && x37 && ~x44 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x16 && ~x37 && x25 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x16 && ~x37 && ~x25 && x4 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x40 && ~x16 && ~x37 && ~x25 && x4 && ~x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && ~x16 && ~x37 && ~x25 && ~x4 )
						nx_state = s54;
					else nx_state = s54;
				s55 : if( x40 && x24 && x26 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( x40 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s72;
						end
					else if( x40 && x24 && ~x26 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( x40 && ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( x40 && ~x24 && ~x28 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && x31 && x19 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x40 && x31 && x19 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x40 && x31 && ~x19 )
						nx_state = s55;
					else if( ~x40 && ~x31 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s55;
				s56 : if( x40 && x19 && x13 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s65;
						end
					else if( x40 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s56;
					else if( x40 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( x40 && x19 && ~x13 && x32 && ~x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( x40 && x19 && ~x13 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && ~x19 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && x17 && x19 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x40 && x17 && x19 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x40 && x17 && ~x19 )
						nx_state = s56;
					else if( ~x40 && ~x17 && x20 )
						begin
							y11 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x40 && ~x17 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s56;
				s57 : if( x40 && x11 && x25 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x40 && x11 && x25 && ~x3 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && x11 && x25 && ~x3 && ~x5 )
						nx_state = s57;
					else if( x40 && x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x40 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && x48 && x47 )
						nx_state = s57;
					else if( ~x40 && x48 && ~x47 && x42 && x51 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && x48 && ~x47 && x42 && ~x51 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && x48 && ~x47 && ~x42 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && x48 && ~x47 && ~x42 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && ~x48 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s57;
				s58 : if( x40 && x35 && x7 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( x40 && x35 && x7 && ~x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x35 && ~x7 )
						nx_state = s58;
					else if( x40 && ~x35 && x7 && x1 )
						nx_state = s58;
					else if( x40 && ~x35 && x7 && ~x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x40 && ~x35 && ~x7 )
						nx_state = s58;
					else if( ~x40 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x40 && ~x3 && x2 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x40 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && ~x3 && ~x2 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s58;
				s59 : if( x40 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( x40 && ~x5 && x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( x40 && ~x5 && ~x34 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x40 && x35 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x35 && x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x40 && ~x35 && ~x13 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s59;
				s60 : if( x40 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( x40 && ~x10 && x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s58;
						end
					else if( x40 && ~x10 && ~x25 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x40 && x8 && x48 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x40 && x8 && ~x48 && x37 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && x8 && ~x48 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x40 && ~x8 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x40 && ~x8 && ~x51 && x37 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x8 && ~x51 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s60;
				s61 : if( x40 && x2 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( x40 && x2 && x8 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x2 && x8 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x40 && x2 && ~x8 && x32 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x40 && x2 && ~x8 && x32 && ~x1 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( x40 && x2 && ~x8 && x32 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( x40 && x2 && ~x8 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x40 && ~x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x40 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && x37 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && ~x37 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s61;
				s62 : if( x40 && x16 && x19 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( x40 && x16 && x19 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && x16 && x19 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x16 && ~x19 && x1 && x30 && x26 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x40 && x16 && ~x19 && x1 && x30 && ~x26 && x3 )
						nx_state = s62;
					else if( x40 && x16 && ~x19 && x1 && x30 && ~x26 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x40 && x16 && ~x19 && x1 && ~x30 )
						nx_state = s62;
					else if( x40 && x16 && ~x19 && ~x1 && x30 && x26 )
						nx_state = s62;
					else if( x40 && x16 && ~x19 && ~x1 && x30 && ~x26 && x3 )
						nx_state = s62;
					else if( x40 && x16 && ~x19 && ~x1 && x30 && ~x26 && ~x3 )
						nx_state = s62;
					else if( x40 && x16 && ~x19 && ~x1 && ~x30 )
						nx_state = s62;
					else if( x40 && ~x16 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && x28 && x43 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x40 && x28 && ~x43 )
						nx_state = s62;
					else if( ~x40 && ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x40 && ~x28 && x27 && ~x8 && x37 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x40 && ~x28 && ~x27 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && ~x28 && ~x27 && ~x50 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s62;
				s63 : if( x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s63;
				s64 : if( x1 && x15 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s73;
						end
					else if( x1 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x1 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s64;
				s65 : if( x40 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s71;
						end
					else if( x40 && ~x9 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && ~x9 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x40 && x29 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x40 && x29 && ~x50 )
						nx_state = s65;
					else if( ~x40 && ~x29 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x29 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s65;
				s66 : if( x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s66;
						end
					else if( x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s61;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s63;
						end
					else if( x16 && ~x6 && ~x8 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x16 && ~x10 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s66;
				s67 : if( x40 && x22 && x2 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( x40 && x22 && x2 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && x22 && x2 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( x40 && x22 && ~x2 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && ~x22 && x31 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x40 && x46 && x3 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x40 && x46 && x3 && ~x23 )
						nx_state = s67;
					else if( ~x40 && x46 && ~x3 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x40 && ~x46 && x2 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x40 && ~x46 && x2 && ~x23 )
						nx_state = s67;
					else if( ~x40 && ~x46 && ~x2 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s67;
				s68 : if( x40 && x25 && x22 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && x25 && ~x22 && x6 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( x40 && x25 && ~x22 && x6 && ~x8 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s64;
						end
					else if( x40 && x25 && ~x22 && ~x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( x40 && ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s53;
						end
					else if( x40 && ~x25 && ~x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x40 && x38 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x40 && ~x38 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x40 && ~x38 && ~x50 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s68;
				s69 : if( x37 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x37 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x37 && ~x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s69;
				s70 : if( 1'b1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s70;
				s71 : if( x40 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s67;
						end
					else if( x40 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s51;
						end
					else if( x40 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x40 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x40 && ~x50 )
						nx_state = s71;
					else nx_state = s71;
				s72 : if( x16 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s66;
						end
					else if( x16 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x16 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s72;
				s73 : if( x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x15 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s73;
				s74 : if( x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && x2 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && x2 && ~x3 && x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x15 && ~x2 )
						nx_state = s74;
					else nx_state = s74;
				s75 : if( x15 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x15 && x2 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && x2 && ~x3 && x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x15 && ~x2 )
						nx_state = s75;
					else nx_state = s75;
				s76 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x15 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s76;
				s77 : if( x15 && x13 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s82;
						end
					else if( x15 && ~x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x15 && x12 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x15 && ~x12 )
						nx_state = s77;
					else nx_state = s77;
				s78 : if( x15 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x15 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s78;
				s79 : if( x15 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && x8 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x8 && x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s79;
					else nx_state = s79;
				s80 : if( x26 && x1 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( x26 && x1 && ~x28 && x2 && x3 && x25 )
						nx_state = s80;
					else if( x26 && x1 && ~x28 && x2 && x3 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && x1 && ~x28 && x2 && ~x3 && x4 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( x26 && x1 && ~x28 && x2 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( x26 && x1 && ~x28 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( x26 && x1 && ~x28 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s89;
						end
					else if( x26 && ~x1 && x28 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && ~x1 && x28 && ~x2 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && ~x1 && x28 && ~x2 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x1 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && x27 )
						begin
							y11 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x26 && ~x27 && x28 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x26 && ~x27 && x28 && ~x1 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && ~x27 && x28 && ~x1 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y11 = 1'b1;	
							nx_state = s89;
						end
					else nx_state = s80;
				s81 : if( x15 && x3 && x2 && x11 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s91;
						end
					else if( x15 && x3 && x2 && ~x11 && x4 && x12 && x13 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s92;
						end
					else if( x15 && x3 && x2 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s81;
					else if( x15 && x3 && x2 && ~x11 && x4 && ~x12 )
						nx_state = s81;
					else if( x15 && x3 && x2 && ~x11 && ~x4 )
						nx_state = s81;
					else if( x15 && x3 && ~x2 )
						nx_state = s81;
					else if( x15 && ~x3 && x2 && x4 && x11 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s94;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s93;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s95;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && ~x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s96;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && x8 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && ~x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && ~x8 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && x9 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && ~x9 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && ~x2 )
						nx_state = s81;
					else if( ~x15 && x7 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x7 && x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x15 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x15 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s81;
					else nx_state = s81;
				s82 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x15 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x15 && ~x11 && x10 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x15 && ~x11 && ~x10 )
						nx_state = s82;
					else nx_state = s82;
				s83 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x15 && x13 && x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x13 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s83;
					else nx_state = s83;
				s84 : if( x15 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s80;
						end
					else nx_state = s84;
				s85 : if( x26 && x28 && x3 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s97;
						end
					else if( x26 && x28 && x3 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( x26 && x28 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( x26 && ~x28 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x26 && x27 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x27 && x5 && x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && ~x27 && x5 && ~x28 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x27 && x5 && ~x28 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x27 && x5 && ~x28 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && ~x5 && x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && ~x5 && ~x28 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else nx_state = s85;
				s86 : if( x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x28 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && x27 && x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && x28 && ~x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x18 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s86;
				s87 : if( x26 && x28 && x6 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( x26 && x28 && ~x6 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x6 && ~x4 )
						nx_state = s1;
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && x28 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else nx_state = s87;
				s88 : if( x26 && x28 && x7 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( x26 && x28 && ~x7 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 && x25 && x9 )
						nx_state = s88;
					else if( ~x26 && x27 && x25 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && x27 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x27 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s88;
				s89 : if( x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x26 && x1 && x27 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x26 && x1 && x27 && ~x2 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && x1 && x27 && ~x2 && ~x3 )
						nx_state = s89;
					else if( ~x26 && x1 && ~x27 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && x1 && ~x27 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x1 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x26 && ~x1 && ~x27 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x26 && ~x1 && ~x27 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else nx_state = s89;
				s90 : if( x26 && x28 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( x26 && x28 && ~x23 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x23 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x28 && x3 && x25 )
						nx_state = s90;
					else if( x26 && ~x28 && x3 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x28 && ~x3 && x4 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( x26 && ~x28 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( x26 && ~x28 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x26 && x27 && x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && ~x11 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s90;
				s91 : if( 1'b1 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s91;
				s92 : if( x15 && x12 && x13 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s93;
						end
					else if( x15 && x12 && x13 && ~x3 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s93;
						end
					else if( x15 && x12 && x13 && ~x3 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( x15 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s95;
						end
					else if( x15 && ~x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s92;
				s93 : if( 1'b1 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s93;
				s94 : if( 1'b1 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s94;
				s95 : if( x15 && x14 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s105;
						end
					else if( x15 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && x12 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x15 && ~x12 )
						nx_state = s95;
					else nx_state = s95;
				s96 : if( x15 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x15 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x15 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s96;
				s97 : if( x26 )
						begin
							y11 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x26 && x28 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && x28 && ~x5 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x26 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else nx_state = s97;
				s98 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && x27 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x26 && ~x27 && x28 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s97;
						end
					else nx_state = s98;
				s99 : if( x28 && x7 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( x28 && ~x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else nx_state = s99;
				s100 : if( x26 && x8 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( x26 && x8 && ~x1 && x14 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( x26 && x8 && ~x1 && ~x14 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x7 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x28 && x6 && x7 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s100;
				s101 : if( x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s110;
						end
					else if( ~x6 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s108;
						end
					else nx_state = s101;
				s102 : if( x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x8 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s110;
						end
					else nx_state = s102;
				s103 : if( 1'b1 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s111;
						end
					else nx_state = s103;
				s104 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s80;
						end
					else nx_state = s104;
				s105 : if( x15 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x15 && x12 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x15 && ~x12 )
						nx_state = s105;
					else nx_state = s105;
				s106 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x15 && x13 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x15 && x13 && ~x11 && x6 && x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s106;
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s106;
					else nx_state = s106;
				s107 : if( 1'b1 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else nx_state = s107;
				s108 : if( x9 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else nx_state = s108;
				s109 : if( x28 && x25 )
						nx_state = s1;
					else if( x28 && ~x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x28 )
						nx_state = s1;
					else nx_state = s109;
				s110 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s86;
						end
					else nx_state = s110;
				s111 : if( x14 && x13 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s104;
						end
					else if( x14 && ~x13 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x14 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s82;
						end
					else nx_state = s111;

			default : nx_state = 0;
		endcase
	end
endmodule
