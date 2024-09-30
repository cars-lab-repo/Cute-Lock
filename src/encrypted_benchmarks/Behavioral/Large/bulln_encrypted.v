/******** Key Information: *********** 
Key 1:   bin: '0110001000011000000111000111100011011100100000111110110111110'    dec: 883553865072410046
Key 2:   bin: '0001111110110011111111101111100000100000100111101101101101001'    dec: 285556222207449961
Key 3:   bin: '1111101100000110111000101011010001100110111011100100010010110'    dec: 2261049277228632214
Key 4:   bin: '1011101111000000100101001000010111011010101011100111010000000'    dec: 1691122072905174656
Key 5:   bin: '0101100010011011111110001011100101010010011011111001000101011'    dec: 798121296445436459
Key 6:   bin: '0111001000001100110010101110011111101000100110010111110000101'    dec: 1027270814679117701
Key 7:   bin: '1001111000100110000111110000011101111010111101101010100011001'    dec: 1424478753011979545
Key 8:   bin: '0100001111110111001100001111100110010011000111110010111101111'    dec: 612179621032748527
Key 9:   bin: '0101101001101100000110011010100101000010000110101110101001010'    dec: 814451371955936586
Key 10:   bin: '1101100111101110111011110011000011001100110000000010010010011'    dec: 1962968992945013907
Key 11:   bin: '1011010001010111101110111011011000110001110000001000111101001'    dec: 1624382705124250089
Key 12:   bin: '0011101100101001010000001111100100010011110100000011001001101'    dec: 532876245100791373
Key 13:   bin: '1011000110100010000010000101000011010010000010010100110101000'    dec: 1599975279269325224
Key 14:   bin: '0000100010111001001000101101010000011001011011011111011101111'    dec: 78571489668742895
Key 15:   bin: '1111001010110000000011011011000101110011110100100111110010101'    dec: 2185936551110397845
Key 16:   bin: '0110011010111100011100001001111000000011111000010001101000100'    dec: 925364463932810052
Key 17:   bin: '0101100110010111111010000001011000001101010110110101011000110'    dec: 806985471533738694
Key 18:   bin: '0011110000101010010100011101110010001011000111111011000110011'    dec: 541920949870786099
Key 19:   bin: '1100001101111010011011100101000000011101001110011011110110010'    dec: 1760711509365176242
Key 20:   bin: '1101100001101011101101011110001101011001000011100101000011100'    dec: 1949344765344598556
**************************************/

module bulln (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45, keyinput46, keyinput47, keyinput48, keyinput49, keyinput50, keyinput51, keyinput52, keyinput53, keyinput54, keyinput55, keyinput56, keyinput57, keyinput58, keyinput59, keyinput60, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39,
	x46, x47, x50, x51, x52, x53, x54, x56, x57, x59, x60,
	x61, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y17, y26);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39,
	x46, x47, x50, x51, x52, x53, x54, x56, x57, x59, x60,
	x61;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45, keyinput46, keyinput47, keyinput48, keyinput49, keyinput50, keyinput51, keyinput52, keyinput53, keyinput54, keyinput55, keyinput56, keyinput57, keyinput58, keyinput59, keyinput60;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y17, y26;
reg[9:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y17, y26;

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
		counter <= (counter >= 279) ? 0 : counter + 1;
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
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b1 && keyinput58 == 1'b1 && keyinput59 == 1'b1 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s93;
		end
		if ( counter > 13 && counter <= 27 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b1 && keyinput53 == 1'b0 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 && keyinput59 == 1'b0 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s84;
		end
		if ( counter > 27 && counter <= 41 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b1 && keyinput59 == 1'b1 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s95;
		end
		if ( counter > 41 && counter <= 55 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b0 && keyinput58 == 1'b0 && keyinput59 == 1'b0 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s32;
		end
		if ( counter > 55 && counter <= 69 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 && keyinput59 == 1'b1 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s49;
		end
		if ( counter > 69 && counter <= 83 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b0 && keyinput58 == 1'b1 && keyinput59 == 1'b0 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s75;
		end
		if ( counter > 83 && counter <= 97 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b1 && keyinput53 == 1'b0 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b1 && keyinput58 == 1'b0 && keyinput59 == 1'b0 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s24;
		end
		if ( counter > 97 && counter <= 111 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b1 && keyinput59 == 1'b1 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s8;
		end
		if ( counter > 111 && counter <= 125 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b1 && keyinput53 == 1'b0 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 && keyinput59 == 1'b1 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s62;
		end
		if ( counter > 125 && counter <= 139 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 && keyinput59 == 1'b1 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s110;
		end
		if ( counter > 139 && counter <= 153 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 && keyinput59 == 1'b0 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s76;
		end
		if ( counter > 153 && counter <= 167 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b1 && keyinput59 == 1'b0 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s90;
		end
		if ( counter > 167 && counter <= 181 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 && keyinput59 == 1'b0 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s72;
		end
		if ( counter > 181 && counter <= 195 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b1 && keyinput59 == 1'b1 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s5;
		end
		if ( counter > 195 && counter <= 209 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b1 && keyinput59 == 1'b0 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s10;
		end
		if ( counter > 209 && counter <= 223 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b1 && keyinput53 == 1'b0 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b0 && keyinput58 == 1'b1 && keyinput59 == 1'b0 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s87;
		end
		if ( counter > 223 && counter <= 237 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b0 && keyinput58 == 1'b1 && keyinput59 == 1'b1 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s66;
		end
		if ( counter > 237 && counter <= 251 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 && keyinput59 == 1'b1 && keyinput60 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s58;
		end
		if ( counter > 251 && counter <= 265 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 && keyinput59 == 1'b1 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s38;
		end
		if ( counter > 265 && counter <= 279 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b1 && keyinput58 == 1'b1 && keyinput59 == 1'b0 && keyinput60 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s97;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27 or x28 or x29 or x30 or 
	x31 or x32 or x33 or x34 or x35 or x36 or x37 or x38 or x39 or 
	x46 or x47 or x50 or x51 or x52 or x53 or x54 or x56 or x57 or x59 or x60 or 
	x61)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y17 = 1'b0;	y26 = 1'b0;	
		case ( pr_state )
				s1 : if( x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && x16 && ~x5 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
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
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s2;
				s3 : if( x15 && x16 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && x16 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && ~x16 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s3;
				s4 : if( x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s4;
					else if( ~x15 && x16 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 && x14 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s4;
				s5 : if( x15 && x16 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x2 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x2 && ~x3 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && ~x2 )
						nx_state = s5;
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s5;
				s6 : if( x15 && x16 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && ~x16 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
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
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else if( x15 && ~x16 && x13 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s7;
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s7;
					else if( ~x15 && x16 && x4 && x5 && x2 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && ~x1 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s7;
				s8 : if( x15 && x16 && x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s8;
					else if( ~x15 && x16 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x16 && ~x4 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s8;
				s9 : if( x15 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && x16 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && ~x2 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && x16 && ~x2 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s9;
				s10 : if( x15 && x16 && x5 && x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && x5 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x5 && ~x6 && x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s10;
				s11 : if( x15 && x16 && x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && x16 && ~x1 && x5 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && x2 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x1 && ~x5 && x6 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && x16 && ~x1 && ~x5 && ~x6 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x7 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s11;
					else if( ~x15 && x16 && x4 && x5 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y4 = 1'b1;	y7 = 1'b1;	
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
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && x12 && ~x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && x4 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && x8 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && ~x8 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && x8 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && ~x8 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && x9 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && x9 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && ~x9 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && ~x16 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x8 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
				s13 : if( x15 && x16 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && x3 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x16 && ~x4 && x2 && x3 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && ~x4 && x2 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && ~x16 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s13;
				s14 : if( x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && x13 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s14;
					else if( ~x15 && x16 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s14;
				s15 : if( x15 && x16 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s8;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s15;
					else if( ~x15 && x16 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x16 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && ~x16 && ~x13 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s15;
				s16 : if( x15 && x16 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && x2 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x2 && ~x3 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && ~x2 )
						nx_state = s16;
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x16 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s16;
				s17 : if( x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && ~x16 && x12 && ~x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && ~x16 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s17;
				s18 : if( x61 && x10 && x39 && x36 )
						nx_state = s18;
					else if( x61 && x10 && x39 && ~x36 && x46 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && x10 && x39 && ~x36 && x46 && ~x51 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( x61 && x10 && x39 && ~x36 && ~x46 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x61 && x10 && ~x39 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( x61 && ~x10 && x11 && x34 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x61 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x61 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( x61 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x61 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x61 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && x10 && x11 && x1 && x2 && x3 && x4 )
						nx_state = s18;
					else if( ~x61 && x10 && x11 && x1 && x2 && x3 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && x10 && x11 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && x10 && x11 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x61 && x10 && x11 && x1 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && x10 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x61 && x10 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x61 && x10 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x61 && ~x10 && x1 && x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x61 && ~x10 && x1 && ~x11 && x12 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && ~x10 && x1 && ~x11 && ~x12 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x61 && ~x10 && ~x1 && x11 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && ~x10 && ~x1 && x11 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x1 && ~x11 && x12 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x1 && ~x11 && x12 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && ~x10 && ~x1 && ~x11 && ~x12 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x1 && ~x11 && ~x12 && ~x2 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x1 && ~x11 && ~x12 && ~x2 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s18;
				s19 : if( x15 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x14 && x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x15 && x14 && ~x13 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x15 && ~x14 )
						begin
							y13 = 1'b1;	
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
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s13;
						end
					else if( x15 && ~x16 && ~x11 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && ~x16 && ~x11 && ~x10 )
						nx_state = s20;
					else if( ~x15 && x16 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x16 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s21;
				s22 : if( x15 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x15 && x16 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s23;
				s24 : if( x61 && x35 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x35 && x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( x61 && ~x35 && ~x13 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x61 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x61 && ~x10 && ~x11 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s24;
				s25 : if( x61 && x50 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( x61 && x50 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( x61 && x50 && ~x19 )
						nx_state = s25;
					else if( x61 && ~x50 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && x10 && x11 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && x10 && ~x11 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && ~x10 && x11 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x61 && ~x10 && x11 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s25;
				s26 : if( x61 && x53 && x47 )
						nx_state = s26;
					else if( x61 && x53 && ~x47 && x59 && x51 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( x61 && x53 && ~x47 && x59 && ~x51 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && x53 && ~x47 && ~x59 && x34 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( x61 && ~x53 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && ~x11 && x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && ~x11 && x1 && ~x2 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s26;
					else if( ~x61 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s26;
				s27 : if( x28 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x28 && ~x57 )
						nx_state = s27;
					else if( ~x28 && x27 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x28 && x27 && ~x8 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x28 && x27 && ~x8 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x28 && ~x27 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s27;
				s28 : if( x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x50 )
						nx_state = s28;
					else nx_state = s28;
				s29 : if( x61 && x16 && x54 && x27 && x29 && x59 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x61 && x16 && x54 && x27 && x29 && ~x59 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && x16 && x54 && x27 && ~x29 && x33 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && x16 && x54 && x27 && ~x29 && ~x33 && x57 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( x61 && x16 && x54 && x27 && ~x29 && ~x33 && ~x57 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && x16 && x54 && ~x27 )
						nx_state = s29;
					else if( x61 && x16 && ~x54 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x16 && x37 && x56 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && ~x16 && x37 && x56 && ~x1 )
						nx_state = s29;
					else if( x61 && ~x16 && x37 && ~x56 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x16 && ~x37 && x25 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x16 && ~x37 && ~x25 && x4 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s38;
						end
					else if( x61 && ~x16 && ~x37 && ~x25 && x4 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && ~x16 && ~x37 && ~x25 && ~x4 )
						nx_state = s29;
					else if( ~x61 && x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && x10 && ~x11 && x12 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && x10 && ~x11 && x12 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x61 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && x12 && x2 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x61 && ~x10 && x12 && x2 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && ~x10 && x12 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x61 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s29;
				s30 : if( x61 && x17 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( x61 && x17 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( x61 && x17 && ~x19 )
						nx_state = s30;
					else if( x61 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s26;
						end
					else if( x61 && ~x17 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && x10 && x11 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && x10 && ~x11 && x12 && x4 && x1 )
						nx_state = s30;
					else if( ~x61 && x10 && ~x11 && x12 && x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && x10 && ~x11 && x12 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x61 && ~x10 && ~x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s30;
				s31 : if( x61 && x51 && x24 && x5 && x36 )
						nx_state = s31;
					else if( x61 && x51 && x24 && x5 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && x51 && x24 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && x51 && ~x24 && x31 && x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && x51 && ~x24 && x31 && ~x29 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && x51 && ~x24 && ~x31 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && ~x51 && x11 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && ~x51 && x11 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x51 && x11 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x51 && x11 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x51 && ~x11 && x52 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s45;
						end
					else if( x61 && ~x51 && ~x11 && x52 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x51 && ~x11 && x52 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( x61 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && x10 && x11 && x3 && x4 )
						nx_state = s31;
					else if( ~x61 && x10 && x11 && x3 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && x10 && x11 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && x10 && x11 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x61 && x10 && x11 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x61 && x10 && ~x11 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && x10 && ~x11 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && ~x10 && x11 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x61 && ~x10 && x11 && ~x6 && x8 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x61 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x61 && ~x10 && x11 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && ~x10 && x11 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && ~x6 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && ~x6 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s31;
				s32 : if( x61 && x13 && x23 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && x13 && x23 && ~x51 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( x61 && x13 && ~x23 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && ~x13 && x28 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && ~x13 && x28 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x13 && x28 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x13 && x28 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x13 && ~x28 && x6 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s45;
						end
					else if( x61 && ~x13 && ~x28 && x6 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x13 && ~x28 && x6 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x61 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && x10 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x61 && x10 && ~x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x61 && ~x10 && ~x11 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s32;
				s33 : if( x61 && x8 && x53 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( x61 && x8 && ~x53 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && x8 && ~x53 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( x61 && ~x8 && x51 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( x61 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x8 && ~x51 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x61 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
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
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s34;
				s35 : if( x61 && x29 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x61 && x29 && ~x50 )
						nx_state = s35;
					else if( x61 && ~x29 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x29 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && x11 && x6 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x61 && x11 && x6 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x61 && x11 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x61 && ~x11 && x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && ~x11 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s36;
				s37 : if( x61 && x10 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s49;
						end
					else if( x61 && x10 && x12 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x61 && x10 && x12 && ~x23 && ~x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && x10 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s52;
						end
					else if( x61 && ~x10 && x1 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s53;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && x3 && x11 )
						nx_state = s37;
					else if( x61 && ~x10 && x1 && ~x22 && x2 && x3 && ~x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x61 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s57;
						end
					else if( x61 && ~x10 && ~x1 && x11 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && ~x10 && ~x1 && x11 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( x61 && ~x10 && ~x1 && ~x11 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x10 && x39 && x36 )
						nx_state = s37;
					else if( ~x61 && x10 && x39 && ~x36 && x46 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && x10 && x39 && ~x36 && x46 && ~x51 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x61 && x10 && x39 && ~x36 && ~x46 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x61 && x10 && ~x39 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x61 && ~x10 && x11 && x34 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x61 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s37;
				s38 : if( x61 && x46 && x3 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( x61 && x46 && x3 && ~x23 )
						nx_state = s38;
					else if( x61 && x46 && ~x3 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x61 && ~x46 && x2 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( x61 && ~x46 && x2 && ~x23 )
						nx_state = s38;
					else if( x61 && ~x46 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x61 && ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && ~x11 && x1 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s38;
				s39 : if( x38 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x38 )
						nx_state = s39;
					else nx_state = s39;
				s40 : if( x10 && x6 && x7 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( x10 && x6 && x7 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x10 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( x10 && ~x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && ~x6 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x10 && ~x11 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s40;
				s41 : if( x10 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x10 && ~x12 && x1 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && ~x12 && x1 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( x10 && ~x12 && ~x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x10 && ~x11 && x12 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x10 && ~x11 && x12 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						begin
							y10 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s41;
				s42 : if( x61 && x17 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s38;
						end
					else if( x61 && ~x17 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x61 && ~x17 && ~x57 )
						nx_state = s42;
					else if( ~x61 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x61 && ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s42;
				s43 : if( x61 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( x61 && ~x3 && x2 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x61 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( x61 && ~x3 && ~x2 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x61 && x10 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x61 && x10 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && x10 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && x10 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x61 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x61 && ~x10 && ~x11 )
						nx_state = s43;
					else nx_state = s43;
				s44 : if( x61 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s42;
						end
					else if( x61 && ~x50 )
						nx_state = s44;
					else if( ~x61 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x61 && ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x61 && ~x11 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s44;
				s45 : if( x61 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s32;
						end
					else if( x61 && x37 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s31;
						end
					else if( x61 && ~x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x61 && x10 && x1 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x61 && x10 && x1 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && x10 && x1 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x61 && x10 && x1 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x61 && x10 && ~x1 && x2 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x61 && x10 && ~x1 && x2 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x61 && x10 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x61 && ~x10 )
						nx_state = s45;
					else nx_state = s45;
				s46 : if( x3 && x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x3 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s47;
				s48 : if( x61 && x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x61 && ~x37 && x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s28;
						end
					else if( x61 && ~x37 && ~x9 )
						begin
							y10 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x61 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x61 && ~x10 && ~x11 )
						begin
							y1 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s48;
				s49 : if( x19 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x19 && x26 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x19 && x26 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s49;
				s50 : if( x61 && x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( x61 && x19 && x28 && ~x1 && x35 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x19 && x28 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x61 && x19 && ~x28 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( x61 && ~x19 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x61 && x13 && x23 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && x13 && x23 && ~x51 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x61 && x13 && ~x23 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && ~x13 && x28 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && ~x13 && x28 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x13 && x28 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x13 && x28 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x13 && ~x28 && x6 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x61 && ~x13 && ~x28 && x6 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x13 && ~x28 && x6 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s50;
				s51 : if( x61 && x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s66;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s61;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s63;
						end
					else if( x61 && x30 && x16 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && x30 && ~x16 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x30 && ~x16 && ~x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && ~x30 && x5 && x9 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && ~x30 && x5 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s65;
						end
					else if( x61 && ~x30 && ~x5 && x3 && x11 )
						nx_state = s51;
					else if( x61 && ~x30 && ~x5 && x3 && ~x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( x61 && ~x30 && ~x5 && ~x3 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x61 && ~x30 && ~x5 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && x51 && x24 && x5 && x36 )
						nx_state = s51;
					else if( ~x61 && x51 && x24 && x5 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && x51 && x24 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && x51 && ~x24 && x31 && x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && x51 && ~x24 && x31 && ~x29 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && x51 && ~x24 && ~x31 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && ~x51 && x11 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x61 && ~x51 && x11 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x51 && x11 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x51 && x11 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x51 && ~x11 && x52 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x61 && ~x51 && ~x11 && x52 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x51 && ~x11 && x52 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x61 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s51;
				s52 : if( x61 && x12 && x27 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( x61 && x12 && x27 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && x12 && x27 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x12 && ~x27 && x1 && x29 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( x61 && x12 && ~x27 && x1 && ~x29 )
						nx_state = s52;
					else if( x61 && x12 && ~x27 && ~x1 && x29 && x9 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x61 && x12 && ~x27 && ~x1 && x29 && x9 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && x12 && ~x27 && ~x1 && x29 && ~x9 )
						nx_state = s52;
					else if( x61 && x12 && ~x27 && ~x1 && ~x29 )
						nx_state = s52;
					else if( x61 && ~x12 && x29 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s61;
						end
					else if( x61 && ~x12 && ~x29 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x61 && x17 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x61 && ~x17 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x61 && ~x17 && ~x57 )
						nx_state = s52;
					else nx_state = s52;
				s53 : if( x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x2 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s53;
				s54 : if( x61 && x14 && x8 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x14 && x8 && ~x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && x14 && ~x8 && x30 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( x61 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x61 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && x14 && ~x8 && ~x30 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && ~x14 && x3 && x32 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( x61 && ~x14 && x3 && ~x32 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && ~x14 && ~x3 )
						nx_state = s54;
					else if( ~x61 && x16 && x54 && x27 && x29 && x59 )
						begin
							y13 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x61 && x16 && x54 && x27 && x29 && ~x59 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x16 && x54 && x27 && ~x29 && x33 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x16 && x54 && x27 && ~x29 && ~x33 && x57 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x61 && x16 && x54 && x27 && ~x29 && ~x33 && ~x57 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x16 && x54 && ~x27 )
						nx_state = s54;
					else if( ~x61 && x16 && ~x54 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x16 && x37 && x56 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && ~x16 && x37 && x56 && ~x1 )
						nx_state = s54;
					else if( ~x61 && ~x16 && x37 && ~x56 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x16 && ~x37 && x25 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x16 && ~x37 && ~x25 && x4 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x61 && ~x16 && ~x37 && ~x25 && x4 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && ~x16 && ~x37 && ~x25 && ~x4 )
						nx_state = s54;
					else nx_state = s54;
				s55 : if( x61 && x24 && x26 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( x61 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s72;
						end
					else if( x61 && x24 && ~x26 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && ~x24 && x28 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s52;
						end
					else if( x61 && ~x24 && ~x28 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && x31 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x61 && x31 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x61 && x31 && ~x19 )
						nx_state = s55;
					else if( ~x61 && ~x31 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s55;
				s56 : if( x61 && x19 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s65;
						end
					else if( x61 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s56;
					else if( x61 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && x19 && ~x13 && x32 && ~x18 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( x61 && x19 && ~x13 && ~x32 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && ~x19 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && x17 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x61 && x17 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x61 && x17 && ~x19 )
						nx_state = s56;
					else if( ~x61 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x61 && ~x17 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s56;
				s57 : if( x61 && x11 && x25 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x61 && x11 && x25 && ~x3 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && x11 && x25 && ~x3 && ~x5 )
						nx_state = s57;
					else if( x61 && x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x61 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && x53 && x47 )
						nx_state = s57;
					else if( ~x61 && x53 && ~x47 && x59 && x51 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && x53 && ~x47 && x59 && ~x51 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x53 && ~x47 && ~x59 && x34 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && ~x53 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s57;
				s58 : if( x61 && x35 && x7 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( x61 && x35 && x7 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x35 && ~x7 )
						nx_state = s58;
					else if( x61 && ~x35 && x7 && x1 )
						nx_state = s58;
					else if( x61 && ~x35 && x7 && ~x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( x61 && ~x35 && ~x7 )
						nx_state = s58;
					else if( ~x61 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x61 && ~x3 && x2 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x61 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && ~x3 && ~x2 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s58;
				s59 : if( x61 && x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( x61 && ~x5 && x34 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x61 && ~x5 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x61 && x35 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x35 && x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x61 && ~x35 && ~x13 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s59;
				s60 : if( x61 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && ~x10 && x25 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s58;
						end
					else if( x61 && ~x10 && ~x25 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x61 && x8 && x53 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x61 && x8 && ~x53 && x37 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && x8 && ~x53 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x61 && ~x8 && x51 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x61 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x8 && ~x51 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s60;
				s61 : if( x61 && x2 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s63;
						end
					else if( x61 && x2 && x8 && ~x1 && x35 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x2 && x8 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x61 && x2 && ~x8 && x32 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( x61 && x2 && ~x8 && x32 && ~x1 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x61 && x2 && ~x8 && x32 && ~x1 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && x2 && ~x8 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s56;
						end
					else if( x61 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x61 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && x37 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && ~x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s61;
				s62 : if( x61 && x16 && x19 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( x61 && x16 && x19 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && x16 && x19 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x16 && ~x19 && x1 && x30 && x26 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( x61 && x16 && ~x19 && x1 && x30 && ~x26 && x3 )
						nx_state = s62;
					else if( x61 && x16 && ~x19 && x1 && x30 && ~x26 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( x61 && x16 && ~x19 && x1 && ~x30 )
						nx_state = s62;
					else if( x61 && x16 && ~x19 && ~x1 && x30 && x26 && x9 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x61 && x16 && ~x19 && ~x1 && x30 && x26 && x9 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && x16 && ~x19 && ~x1 && x30 && x26 && ~x9 )
						nx_state = s62;
					else if( x61 && x16 && ~x19 && ~x1 && x30 && ~x26 && x3 )
						nx_state = s62;
					else if( x61 && x16 && ~x19 && ~x1 && x30 && ~x26 && ~x3 && x9 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x61 && x16 && ~x19 && ~x1 && x30 && ~x26 && ~x3 && x9 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s68;
						end
					else if( x61 && x16 && ~x19 && ~x1 && x30 && ~x26 && ~x3 && ~x9 )
						nx_state = s62;
					else if( x61 && x16 && ~x19 && ~x1 && ~x30 )
						nx_state = s62;
					else if( x61 && ~x16 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && x28 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x61 && x28 && ~x57 )
						nx_state = s62;
					else if( ~x61 && ~x28 && x27 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x61 && ~x28 && x27 && ~x8 && x37 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x61 && ~x28 && ~x27 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && ~x28 && ~x27 && ~x50 )
						begin
							y2 = 1'b1;	
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
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s73;
						end
					else if( x1 && ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s64;
				s65 : if( x61 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s71;
						end
					else if( x61 && ~x9 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && ~x9 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x61 && x29 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x61 && x29 && ~x50 )
						nx_state = s65;
					else if( ~x61 && ~x29 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x29 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
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
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s61;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s63;
						end
					else if( x16 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x16 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x16 && ~x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s66;
				s67 : if( x61 && x22 && x2 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( x61 && x22 && x2 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && x22 && x2 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( x61 && x22 && ~x2 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && ~x22 && x31 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && ~x22 && ~x31 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x46 && x3 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x61 && x46 && x3 && ~x23 )
						nx_state = s67;
					else if( ~x61 && x46 && ~x3 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x61 && ~x46 && x2 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x61 && ~x46 && x2 && ~x23 )
						nx_state = s67;
					else if( ~x61 && ~x46 && ~x2 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s67;
				s68 : if( x61 && x25 && x22 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && x25 && ~x22 && x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( x61 && x25 && ~x22 && x6 && ~x8 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s64;
						end
					else if( x61 && x25 && ~x22 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( x61 && ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s53;
						end
					else if( x61 && ~x25 && ~x29 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x61 && x38 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x61 && ~x38 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 && ~x38 && ~x50 )
						begin
							y2 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s68;
				s69 : if( x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x37 && x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x37 && ~x9 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s69;
				s70 : if( 1'b1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s70;
				s71 : if( x61 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s67;
						end
					else if( x61 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s51;
						end
					else if( x61 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x61 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x61 && ~x50 )
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
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s72;
				s73 : if( x15 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x15 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s73;
				s74 : if( x15 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && x2 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && x2 && ~x3 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x15 && ~x2 )
						nx_state = s74;
					else nx_state = s74;
				s75 : if( x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x15 && x2 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && x2 && ~x3 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
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
							y1 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s76;
				s77 : if( x15 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s82;
						end
					else if( x15 && ~x13 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x15 && x12 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x15 && ~x12 )
						nx_state = s77;
					else nx_state = s77;
				s78 : if( x15 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x15 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s78;
				s79 : if( x15 )
						begin
							y1 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x8 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && x1 && ~x28 && x2 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s89;
						end
					else if( x26 && ~x1 && x28 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && ~x1 && x28 && ~x2 && x25 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && ~x1 && x28 && ~x2 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x1 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && x27 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x26 && ~x27 && x28 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x26 && ~x27 && x28 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && ~x27 && x28 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
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
							y4 = 1'b1;	y7 = 1'b1;	
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
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s94;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s93;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && x12 && ~x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s95;
						end
					else if( x15 && ~x3 && x2 && x4 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s96;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && x8 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && x7 && ~x8 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && x8 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && x5 && ~x6 && ~x7 && ~x8 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && x9 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && x7 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && x9 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && x6 && ~x7 && ~x9 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( x15 && ~x3 && x2 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( x15 && ~x3 && ~x2 )
						nx_state = s81;
					else if( ~x15 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x7 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x15 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x15 && ~x11 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
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
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x13 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s83;
					else nx_state = s83;
				s84 : if( x15 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
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
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s97;
						end
					else if( x26 && x28 && x3 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( x26 && x28 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s87;
						end
					else if( x26 && ~x28 )
						begin
							y1 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x26 && x27 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x27 && x5 && x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && ~x27 && x5 && ~x28 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x27 && x5 && ~x28 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x27 && x5 && ~x28 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && ~x5 && x28 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
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
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x28 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && x27 && x4 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && x28 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x18 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x6 && ~x4 )
						nx_state = s1;
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x27 && x28 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
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
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 && x25 && x9 )
						nx_state = s88;
					else if( ~x26 && x27 && x25 && ~x9 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && x27 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x27 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
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
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x26 && x1 && x27 && ~x2 && ~x3 )
						nx_state = s89;
					else if( ~x26 && x1 && ~x27 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && x1 && ~x27 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
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
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else nx_state = s89;
				s90 : if( x26 && x28 && x23 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else if( x26 && x28 && ~x23 && x25 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( x26 && x28 && ~x23 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x28 && x3 && x25 )
						nx_state = s90;
					else if( x26 && ~x28 && x3 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x28 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && ~x11 )
						begin
							y13 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s90;
				s91 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s91;
				s92 : if( x15 && x12 && x13 && x3 )
						begin
							y13 = 1'b1;	
							nx_state = s93;
						end
					else if( x15 && x12 && x13 && ~x3 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s93;
						end
					else if( x15 && x12 && x13 && ~x3 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( x15 && x12 && ~x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s95;
						end
					else if( x15 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 )
						begin
							y10 = 1'b1;	
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
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s94;
				s95 : if( x15 && x14 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s105;
						end
					else if( x15 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x15 && x12 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x15 && ~x12 )
						nx_state = s95;
					else nx_state = s95;
				s96 : if( x15 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x15 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x15 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s96;
				s97 : if( x26 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x26 && x28 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && x28 && ~x5 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x26 && ~x28 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else nx_state = s97;
				s98 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
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
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 )
						begin
							y10 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s97;
						end
					else nx_state = s98;
				s99 : if( x28 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else if( x28 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x28 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
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
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x26 && ~x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x7 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x28 && x6 && x7 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y10 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s100;
				s101 : if( x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s110;
						end
					else if( ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s108;
						end
					else nx_state = s101;
				s102 : if( x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
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
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
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
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x15 && x13 && ~x11 && x6 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s106;
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
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
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s100;
						end
					else nx_state = s108;
				s109 : if( x28 && x25 )
						nx_state = s1;
					else if( x28 && ~x25 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x28 )
						nx_state = s1;
					else nx_state = s109;
				s110 : if( 1'b1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else nx_state = s110;
				s111 : if( x14 && x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s104;
						end
					else if( x14 && ~x13 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x14 )
						begin
							y13 = 1'b1;	
							nx_state = s82;
						end
					else nx_state = s111;

			default : nx_state = 0;
		endcase
	end
endmodule
