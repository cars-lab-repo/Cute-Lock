/******** Key Information: *********** 
Key 1:   bin: '11001000011011101111111000100001000010110010011001010011010'    dec: 451336264778068634
Key 2:   bin: '00001101011111000011001000101110000100110100000110100101000'    dec: 30365837283691816
Key 3:   bin: '11101011100010101100000011111111011101111111001110010011100'    dec: 530393448411274396
Key 4:   bin: '01101001000011101011110100000000111010110001100011110110001'    dec: 236568619853072305
Key 5:   bin: '00111100111000100111111101001001101011000001110100000111111'    dec: 137100279419037759
Key 6:   bin: '01010001000001000010110101011100110001011011110100000111110'    dec: 182432527920523326
Key 7:   bin: '00010100001100100000000111111101010011010010001001011101010'    dec: 45475869282079466
Key 8:   bin: '10000000110111001100100000011011010010100010001000000110111'    dec: 290172392227016759
Key 9:   bin: '10000000000010111110011010110011110011100001011010010110100'    dec: 288335060047803572
Key 10:   bin: '01101110111111110110011110110110001101100100001011010111101'    dec: 249944546735167165
Key 11:   bin: '11001000011001011100111001010101010010010111100100000011011'    dec: 451255457685424155
Key 12:   bin: '00110000110000010010000110010001110111101000101010100000010'    dec: 109785190459790594
Key 13:   bin: '00100010100011100011111111000011010100010101110110000110100'    dec: 77812429753084980
Key 14:   bin: '00100100101010101011001101110111110001001111001011001100100'    dec: 82566295574779492
Key 15:   bin: '11101000000010000100010100100011111010000101101111000100100'    dec: 522490301160545828
Key 16:   bin: '10010001111011100111111011010101001101101010100101010101111'    dec: 328608801067715247
Key 17:   bin: '11000000011011101000001011011001000101111010100110111000000'    dec: 433317630363651520
Key 18:   bin: '01110011100000101110100001011011001001111100110100010000101'    dec: 260108454360672389
Key 19:   bin: '00000000001001001001100101111001101011001101101000100100010'    dec: 321932719739170
**************************************/

module camel (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45, keyinput46, keyinput47, keyinput48, keyinput49, keyinput50, keyinput51, keyinput52, keyinput53, keyinput54, keyinput55, keyinput56, keyinput57, keyinput58, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45, keyinput46, keyinput47, keyinput48, keyinput49, keyinput50, keyinput51, keyinput52, keyinput53, keyinput54, keyinput55, keyinput56, keyinput57, keyinput58;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37;
reg[10:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37;

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
	s111=111, s112=112, s113=113, s114=114, s115=115, s116=116, s117=117, s118=118, s119=119, s120=120,
	s121=121, s122=122, s123=123, s124=124, s125=125, s126=126, s127=127, s128=128;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 968) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 50 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s98;
		end
		if ( counter > 50 && counter <= 101 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b0 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s70;
		end
		if ( counter > 101 && counter <= 152 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s113;
		end
		if ( counter > 152 && counter <= 203 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b0 && keyinput58 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s17;
		end
		if ( counter > 203 && counter <= 254 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b1 && keyinput58 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s31;
		end
		if ( counter > 254 && counter <= 305 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b1 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 305 && counter <= 356 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s57;
		end
		if ( counter > 356 && counter <= 407 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b1 && keyinput58 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s58;
		end
		if ( counter > 407 && counter <= 458 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b1 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s83;
		end
		if ( counter > 458 && counter <= 509 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s32;
		end
		if ( counter > 509 && counter <= 560 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b1 && keyinput55 == 1'b1 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s122;
		end
		if ( counter > 560 && counter <= 611 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s28;
		end
		if ( counter > 611 && counter <= 662 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b1 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s84;
		end
		if ( counter > 662 && counter <= 713 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 && keyinput43 == 1'b1 && keyinput44 == 1'b0 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b1 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s36;
		end
		if ( counter > 713 && counter <= 764 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s48;
		end
		if ( counter > 764 && counter <= 815 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b1 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b1 && keyinput56 == 1'b1 && keyinput57 == 1'b1 && keyinput58 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s14;
		end
		if ( counter > 815 && counter <= 866 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b1 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b1 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b1 && keyinput52 == 1'b1 && keyinput53 == 1'b0 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b0 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s9;
		end
		if ( counter > 866 && counter <= 917 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b0 && keyinput44 == 1'b1 && keyinput45 == 1'b1 && keyinput46 == 1'b0 && keyinput47 == 1'b1 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b0 && keyinput51 == 1'b1 && keyinput52 == 1'b0 && keyinput53 == 1'b0 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b1 && keyinput57 == 1'b0 && keyinput58 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s120;
		end
		if ( counter > 917 && counter <= 968 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b0 && keyinput43 == 1'b1 && keyinput44 == 1'b1 && keyinput45 == 1'b0 && keyinput46 == 1'b1 && keyinput47 == 1'b0 && keyinput48 == 1'b0 && keyinput49 == 1'b0 && keyinput50 == 1'b1 && keyinput51 == 1'b0 && keyinput52 == 1'b0 && keyinput53 == 1'b1 && keyinput54 == 1'b0 && keyinput55 == 1'b0 && keyinput56 == 1'b0 && keyinput57 == 1'b1 && keyinput58 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s37;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27 or x28 or x29 or x30 or 
	x31 or x32 or x33 or x34 or x35 or x36 or x37 or x38 or x39 or x40 or x41 or x42 or x43 or x44 or x45 or 
	x46 or x47 or x48 or x49 or x50 or x51 or x52 or x53 or x54 or x55 or x56 or x57 or x58 or x59)
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
			y37 = 1'b0;	
		case ( pr_state )
				s1 : if( x10 && x11 && x43 && x13 && x32 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x11 && x43 && x13 && x32 && x3 && ~x6 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && x43 && x13 && x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && x43 && x13 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && x11 && x43 && ~x13 && x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x11 && x43 && ~x13 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && ~x43 && x44 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x11 && ~x43 && ~x44 && x14 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && x11 && ~x43 && ~x44 && x14 && ~x7 && x1 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && x11 && ~x43 && ~x44 && x14 && ~x7 && x1 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && ~x43 && ~x44 && x14 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && x11 && ~x43 && ~x44 && ~x14 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x10 && ~x11 && x12 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x11 && x12 && ~x8 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && ~x11 && x12 && ~x8 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && ~x12 && x13 && x45 && x32 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x11 && ~x12 && x13 && x45 && x32 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && ~x12 && x13 && x45 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && ~x11 && ~x12 && x13 && ~x45 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( x10 && ~x11 && ~x12 && ~x13 && x1 && x14 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && ~x11 && ~x12 && ~x13 && x1 && x14 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && ~x12 && ~x13 && x1 && ~x14 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x10 && ~x11 && ~x12 && ~x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s1;
				s2 : if( x42 && x43 && x13 && x10 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( x42 && x43 && x13 && x10 && ~x4 )
						nx_state = s2;
					else if( x42 && x43 && x13 && ~x10 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && x43 && x13 && ~x10 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x42 && x43 && x13 && ~x10 && ~x3 && ~x33 )
						nx_state = s2;
					else if( x42 && x43 && ~x13 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && x43 && ~x13 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x42 && x43 && ~x13 && ~x3 && ~x33 )
						nx_state = s2;
					else if( x42 && ~x43 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && ~x43 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x42 && ~x43 && ~x3 && ~x33 )
						nx_state = s2;
					else if( ~x42 && x12 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && x12 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x42 && x12 && ~x3 && ~x33 )
						nx_state = s2;
					else if( ~x42 && ~x12 && x44 && x45 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && x44 && x45 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x42 && ~x12 && x44 && x45 && ~x3 && ~x33 )
						nx_state = s2;
					else if( ~x42 && ~x12 && x44 && ~x45 && x41 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x42 && ~x12 && x44 && ~x45 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && x44 && ~x45 && ~x41 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x42 && ~x12 && x44 && ~x45 && ~x41 && ~x3 && ~x33 )
						nx_state = s2;
					else if( ~x42 && ~x12 && ~x44 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x3 && ~x33 )
						nx_state = s2;
					else nx_state = s2;
				s3 : if( x42 && x43 && x10 && x4 && x34 && x44 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( x42 && x43 && x10 && x4 && x34 && ~x44 )
						begin
							y13 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && x43 && x10 && x4 && ~x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && x43 && x10 && ~x4 )
						nx_state = s3;
					else if( x42 && x43 && ~x10 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else if( x42 && ~x43 && x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else if( x42 && ~x43 && ~x13 && x41 && x14 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && ~x43 && ~x13 && x41 && x14 && ~x4 )
						nx_state = s3;
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s3;
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && ~x41 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x42 && x10 && x12 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && x10 && x12 && ~x4 )
						nx_state = s3;
					else if( ~x42 && x10 && ~x12 && x44 && x45 && x35 && x3 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x42 && x10 && ~x12 && x44 && x45 && x35 && ~x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && x10 && ~x12 && x44 && x45 && ~x35 )
						nx_state = s3;
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && ~x47 && ~x1 )
						nx_state = s3;
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && x14 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && x14 && ~x4 )
						nx_state = s3;
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s3;
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x10 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s3;
				s4 : if( x11 && x12 && x33 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x11 && x12 && ~x33 )
						nx_state = s4;
					else if( x11 && ~x12 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x11 && ~x12 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x11 && ~x12 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x11 && ~x12 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x12 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s4;
					else if( x11 && ~x12 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x12 && x3 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x11 && ~x12 && x3 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x12 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x11 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x11 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x11 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s4;
					else if( ~x11 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x3 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x11 && x3 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s4;
				s5 : if( x42 && x43 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x42 && ~x43 && x44 && x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && x44 && ~x10 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x42 && ~x43 && ~x44 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x42 && x12 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x42 && ~x12 && x13 && x14 && x41 && x2 && x37 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x42 && ~x12 && x13 && x14 && x41 && x2 && ~x37 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && x13 && x14 && x41 && ~x2 )
						nx_state = s5;
					else if( ~x42 && ~x12 && x13 && x14 && ~x41 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x42 && ~x12 && x13 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x42 && ~x12 && ~x13 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( x11 && x43 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( x11 && ~x43 && x13 && x7 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x11 && ~x43 && x13 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x11 && ~x43 && x13 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x11 && ~x43 && x13 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && x13 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s6;
					else if( x11 && ~x43 && x13 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && x13 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x11 && ~x43 && x13 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && x13 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( x11 && ~x43 && ~x13 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x11 && x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x11 && ~x12 && x45 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && ~x12 && ~x45 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && ~x45 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s6;
					else if( ~x11 && ~x12 && ~x45 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && ~x45 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x11 && ~x12 && ~x45 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && ~x45 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s6;
				s7 : if( x42 && x43 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x42 && x43 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && x43 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x42 && x43 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && x43 && ~x3 && ~x2 )
						nx_state = s7;
					else if( x42 && ~x43 && x13 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x13 && ~x3 && ~x2 )
						nx_state = s7;
					else if( x42 && ~x43 && ~x13 && x45 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && ~x2 )
						nx_state = s7;
					else if( x42 && ~x43 && ~x13 && ~x45 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x42 && x12 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x42 && x12 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x42 && ~x12 && x44 && x14 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x42 && ~x12 && x44 && ~x14 && x10 && x5 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x10 && ~x5 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x10 && ~x5 && ~x32 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x42 && ~x12 && ~x44 && x45 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && ~x2 )
						nx_state = s7;
					else if( ~x42 && ~x12 && ~x44 && ~x45 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && ~x2 )
						nx_state = s7;
					else nx_state = s7;
				s8 : if( x11 && x43 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( x11 && ~x43 && x44 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( x11 && ~x43 && ~x44 && x45 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( x11 && ~x43 && ~x44 && ~x45 && x10 && x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x11 && ~x43 && ~x44 && ~x45 && x10 && ~x32 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && ~x43 && ~x44 && ~x45 && x10 && ~x32 && ~x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x11 && ~x43 && ~x44 && ~x45 && ~x10 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 && x12 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 && ~x12 && x13 && x14 && x41 && x2 && x37 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && x13 && x14 && x41 && x2 && ~x37 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && ~x12 && x13 && x14 && x41 && ~x2 )
						nx_state = s8;
					else if( ~x11 && ~x12 && x13 && x14 && ~x41 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 && ~x12 && x13 && ~x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s8;
				s9 : if( x11 && x43 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x11 && x43 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x11 && x43 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x11 && x43 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && x43 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s9;
					else if( x11 && x43 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && x43 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x11 && x43 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && x43 && ~x41 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x11 && x43 && ~x41 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x11 && x43 && ~x41 && ~x2 )
						nx_state = s9;
					else if( x11 && ~x43 && x13 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x11 && ~x43 && x13 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x11 && ~x43 && x13 && ~x2 )
						nx_state = s9;
					else if( x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x11 && ~x43 && ~x13 && x45 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && ~x13 && x45 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s9;
					else if( x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && ~x13 && x45 && ~x41 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x11 && ~x43 && ~x13 && x45 && ~x41 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x11 && ~x43 && ~x13 && x45 && ~x41 && ~x2 )
						nx_state = s9;
					else if( x11 && ~x43 && ~x13 && ~x45 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( x11 && ~x43 && ~x13 && ~x45 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( x11 && ~x43 && ~x13 && ~x45 && ~x2 )
						nx_state = s9;
					else if( ~x11 && x12 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x11 && x12 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x11 && x12 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && x12 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x12 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s9;
					else if( ~x11 && x12 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x12 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x11 && x12 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x12 && ~x41 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x11 && x12 && ~x41 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x11 && x12 && ~x41 && ~x2 )
						nx_state = s9;
					else if( ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && ~x12 && x44 && x10 && x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && x44 && x10 && x14 && x15 && ~x47 && ~x1 )
						nx_state = s9;
					else if( ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && x44 && x10 && ~x14 && x1 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x11 && ~x12 && x44 && x10 && ~x14 && ~x1 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 && ~x12 && x44 && ~x10 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x11 && ~x12 && x44 && ~x10 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x11 && ~x12 && x44 && ~x10 && ~x2 )
						nx_state = s9;
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s9;
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && ~x41 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && ~x41 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x11 && ~x12 && ~x44 && x45 && ~x41 && ~x2 )
						nx_state = s9;
					else if( ~x11 && ~x12 && ~x44 && ~x45 && x2 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x11 && ~x12 && ~x44 && ~x45 && x2 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x11 && ~x12 && ~x44 && ~x45 && ~x2 )
						nx_state = s9;
					else nx_state = s9;
				s10 : if( x11 && x43 && x41 && x13 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else if( x11 && x43 && x41 && x13 && x3 && ~x6 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x11 && x43 && x41 && x13 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x11 && x43 && x41 && ~x13 && x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s4;
						end
					else if( x11 && x43 && x41 && ~x13 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x11 && x43 && ~x41 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( x11 && ~x43 && x44 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( x11 && ~x43 && ~x44 && x10 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x11 && ~x43 && ~x44 && x10 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s4;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x11 && ~x43 && ~x44 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x11 && x41 && x12 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x11 && x41 && x12 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x11 && x41 && ~x12 && x13 && x45 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && x41 && ~x12 && x13 && x45 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x11 && x41 && ~x12 && x13 && ~x45 && x39 && x1 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x11 && x41 && ~x12 && x13 && ~x45 && x39 && ~x1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x11 && x41 && ~x12 && x13 && ~x45 && ~x39 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x11 && ~x41 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s10;
				s11 : if( x42 && x43 && x44 && x10 && x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x42 && x43 && x44 && x10 && ~x33 )
						nx_state = s11;
					else if( x42 && x43 && x44 && ~x10 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x42 && x43 && ~x44 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x42 && ~x43 && x13 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x42 && ~x43 && ~x13 && x41 && x2 && x45 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x42 && ~x43 && ~x13 && x41 && x2 && ~x45 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x42 && ~x43 && ~x13 && ~x41 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && x12 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && ~x12 && x44 && x14 && x10 && x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && ~x12 && x44 && x14 && x10 && ~x33 )
						nx_state = s11;
					else if( ~x42 && ~x12 && x44 && x14 && ~x10 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && ~x12 && ~x44 && x41 && x2 && x45 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && ~x12 && ~x44 && x41 && x2 && ~x45 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && ~x44 && x41 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x41 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s11;
				s12 : if( x11 && x43 && x13 && x10 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( x11 && x43 && x13 && ~x10 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && x43 && x13 && ~x10 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( x11 && x43 && x13 && ~x10 && ~x34 && ~x37 )
						nx_state = s12;
					else if( x11 && x43 && ~x13 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && x43 && ~x13 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( x11 && x43 && ~x13 && ~x34 && ~x37 )
						nx_state = s12;
					else if( x11 && ~x43 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && ~x43 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( x11 && ~x43 && ~x34 && ~x37 )
						nx_state = s12;
					else if( ~x11 && x12 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && x12 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && x12 && ~x34 && ~x37 )
						nx_state = s12;
					else if( ~x11 && ~x12 && x44 && x14 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && ~x12 && x44 && x14 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && ~x12 && x44 && x14 && ~x34 && ~x37 )
						nx_state = s12;
					else if( ~x11 && ~x12 && x44 && ~x14 && x41 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x11 && ~x12 && x44 && ~x14 && x41 && ~x32 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && ~x12 && x44 && ~x14 && ~x41 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && ~x12 && x44 && ~x14 && ~x41 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && ~x12 && x44 && ~x14 && ~x41 && ~x34 && ~x37 )
						nx_state = s12;
					else if( ~x11 && ~x12 && ~x44 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && ~x12 && ~x44 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && ~x12 && ~x44 && ~x34 && ~x37 )
						nx_state = s12;
					else nx_state = s12;
				s13 : if( x33 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x33 )
						nx_state = s13;
					else nx_state = s13;
				s14 : if( x46 && x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x46 && ~x16 && x37 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s25;
						end
					else if( x46 && ~x16 && ~x37 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x46 && x47 && x4 && x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x46 && x47 && x4 && ~x36 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x46 && x47 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x46 && ~x47 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s14;
				s15 : if( x15 && x16 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( x15 && x16 && ~x5 && x37 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && ~x5 && ~x37 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( x15 && ~x16 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s28;
						end
					else if( x15 && ~x16 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x15 && x47 && x35 && x36 )
						begin
							y1 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x15 && x47 && x35 && ~x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && x47 && ~x35 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && ~x47 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s15;
				s16 : if( x46 && x16 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s25;
						end
					else if( x46 && ~x16 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x46 && ~x16 && ~x12 )
						nx_state = s16;
					else if( ~x46 && x47 && x4 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x46 && x47 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x46 && ~x47 && x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x46 && ~x47 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s16;
				s17 : if( x46 && x47 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x46 && x47 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x46 && ~x47 && x2 && x34 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( x46 && ~x47 && x2 && ~x34 && x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x46 && ~x47 && x2 && ~x34 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x46 && ~x47 && x2 && ~x34 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x46 && ~x47 && ~x2 )
						nx_state = s17;
					else if( ~x46 && x16 && x35 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x46 && x16 && x35 && x5 && ~x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x46 && x16 && x35 && ~x5 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x46 && x16 && x35 && ~x5 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x46 && x16 && ~x35 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x46 && x16 && ~x35 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x46 && ~x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s17;
				s18 : if( x15 && x47 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else if( x15 && ~x47 && x36 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( x15 && ~x47 && ~x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x15 && x16 && x35 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x15 && x16 && x35 && x5 && ~x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x16 && x35 && ~x5 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x15 && x16 && x35 && ~x5 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x16 && ~x35 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x15 && x16 && ~x35 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && ~x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s18;
				s19 : if( x11 && x43 && x13 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && x43 && x13 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && x43 && x13 && ~x8 && ~x1 )
						nx_state = s19;
					else if( x11 && x43 && ~x13 && x10 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( x11 && x43 && ~x13 && ~x10 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && x43 && ~x13 && ~x10 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && x43 && ~x13 && ~x10 && ~x8 && ~x1 )
						nx_state = s19;
					else if( x11 && ~x43 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && ~x43 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && ~x43 && ~x8 && ~x1 )
						nx_state = s19;
					else if( ~x11 && x12 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && x12 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && x12 && ~x8 && ~x1 )
						nx_state = s19;
					else if( ~x11 && ~x12 && x44 && x45 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && x44 && x45 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && x44 && x45 && ~x8 && ~x1 )
						nx_state = s19;
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && x40 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s19;
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && ~x41 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && ~x41 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && x44 && ~x45 && ~x41 && ~x8 && ~x1 )
						nx_state = s19;
					else if( ~x11 && ~x12 && ~x44 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && ~x44 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && ~x44 && ~x8 && ~x1 )
						nx_state = s19;
					else nx_state = s19;
				s20 : if( x11 && x43 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && x43 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && x43 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( x11 && x43 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x11 && x43 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s20;
					else if( x11 && ~x43 && x44 && x10 && x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x11 && ~x43 && x44 && x10 && ~x35 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && ~x43 && x44 && ~x10 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && ~x43 && x44 && ~x10 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s20;
					else if( x11 && ~x43 && ~x44 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x11 && ~x43 && ~x44 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x11 && ~x43 && ~x44 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( x11 && ~x43 && ~x44 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x11 && ~x43 && ~x44 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s20;
					else if( ~x11 && x12 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && x12 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && x12 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && x12 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x11 && x12 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s20;
					else if( ~x11 && ~x12 && x13 && x45 && x41 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x11 && ~x12 && x13 && x45 && ~x41 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s20;
					else if( ~x11 && ~x12 && x13 && ~x45 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && x13 && ~x45 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s20;
					else if( ~x11 && ~x12 && ~x13 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x11 && ~x12 && ~x13 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s20;
					else nx_state = s20;
				s21 : if( x42 && x43 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x42 && ~x43 && x44 && x10 && x36 && x6 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && x47 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s21;
					else if( x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x44 && x10 && x36 && ~x6 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else if( x42 && ~x43 && x44 && x10 && ~x36 && x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s23;
						end
					else if( x42 && ~x43 && x44 && x10 && ~x36 && ~x35 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x42 && ~x43 && x44 && ~x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x42 && ~x43 && ~x44 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x42 && x12 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x42 && ~x12 && x13 && x14 && x41 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x42 && ~x12 && x13 && x14 && x41 && ~x4 )
						nx_state = s21;
					else if( ~x42 && ~x12 && x13 && x14 && ~x41 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x42 && ~x12 && x13 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x42 && ~x12 && ~x13 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s21;
				s22 : if( x42 && x43 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( x42 && x43 && ~x35 )
						nx_state = s22;
					else if( x42 && ~x43 && x13 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && ~x43 && x13 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x42 && ~x43 && x13 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x42 && ~x43 && x13 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x13 && x15 && ~x47 && ~x1 )
						nx_state = s22;
					else if( x42 && ~x43 && x13 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x13 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x42 && ~x43 && x13 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && ~x13 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( x42 && ~x43 && ~x13 && ~x35 )
						nx_state = s22;
					else if( ~x42 && x12 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x42 && x12 && ~x35 )
						nx_state = s22;
					else if( ~x42 && ~x12 && x44 && x14 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x35 )
						nx_state = s22;
					else if( ~x42 && ~x12 && x44 && ~x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s22;
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && ~x44 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x35 )
						nx_state = s22;
					else nx_state = s22;
				s23 : if( x42 && x43 && x34 && x44 && x10 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s2;
						end
					else if( x42 && x43 && x34 && x44 && x10 && ~x6 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x42 && x43 && x34 && x44 && ~x10 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && x43 && x34 && ~x44 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && x43 && ~x34 && x13 && x41 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x42 && x43 && ~x34 && x13 && ~x41 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && x43 && ~x34 && x13 && ~x41 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x42 && x43 && ~x34 && x13 && ~x41 && ~x1 && ~x38 )
						nx_state = s23;
					else if( x42 && x43 && ~x34 && ~x13 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && x43 && ~x34 && ~x13 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x42 && x43 && ~x34 && ~x13 && ~x1 && ~x38 )
						nx_state = s23;
					else if( x42 && ~x43 && x10 && x44 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s21;
						end
					else if( x42 && ~x43 && x10 && ~x44 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( x42 && ~x43 && x10 && ~x44 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s4;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s23;
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( x42 && ~x43 && ~x10 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( x42 && ~x43 && ~x10 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x10 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( x42 && ~x43 && ~x10 && ~x34 && ~x1 && ~x38 )
						nx_state = s23;
					else if( ~x42 && x12 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && x12 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x12 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x42 && x12 && ~x34 && ~x1 && ~x38 )
						nx_state = s23;
					else if( ~x42 && ~x12 && x41 && x13 && x14 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x42 && ~x12 && x41 && x13 && x14 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x42 && ~x12 && x41 && x13 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s23;
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x42 && ~x12 && ~x41 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x42 && ~x12 && ~x41 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && ~x41 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x42 && ~x12 && ~x41 && ~x34 && ~x1 && ~x38 )
						nx_state = s23;
					else nx_state = s23;
				s24 : if( x15 && x16 && x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && x16 && ~x36 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s26;
						end
					else if( x15 && ~x16 && x13 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x37 && x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x37 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x37 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x37 && x36 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x37 && ~x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else if( x15 && ~x16 && ~x13 && x45 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && x40 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && ~x40 && x6 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && ~x40 && x6 && ~x2 )
						nx_state = s24;
					else if( x15 && ~x16 && ~x13 && ~x45 && ~x40 && ~x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && ~x40 && ~x6 && ~x8 )
						nx_state = s24;
					else if( ~x15 && x47 && x35 && x5 && x33 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x47 && x35 && x5 && ~x33 && x1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && x47 && x35 && x5 && ~x33 && ~x1 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x15 && x47 && x35 && ~x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && x47 && ~x35 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s24;
				s25 : if( x15 && x16 && x5 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s25;
					else if( ~x15 && x47 && x35 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && x47 && ~x35 && x33 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && x47 && ~x35 && ~x33 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x15 && x47 && ~x35 && ~x33 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && ~x47 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s25;
				s26 : if( x46 )
						begin
							y15 = 1'b1;	y23 = 1'b1;	y31 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x46 && x16 && x2 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x46 && x16 && ~x2 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x46 && x16 && ~x2 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x46 && ~x16 )
						begin
							y15 = 1'b1;	y23 = 1'b1;	y31 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s26;
				s27 : if( x46 && x16 && x36 && x1 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( x46 && x16 && x36 && ~x1 && x2 && x3 && x35 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( x46 && x16 && x36 && ~x1 && x2 && x3 && ~x35 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x46 && x16 && x36 && ~x1 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x46 && x16 && x36 && ~x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x46 && x16 && ~x36 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x46 && x16 && ~x36 && ~x6 && x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && x34 && x4 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && x34 && ~x4 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && ~x34 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && ~x33 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x46 && ~x16 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s28;
						end
					else if( x46 && ~x16 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x46 && x47 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x46 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s27;
				s28 : if( x15 && x16 && x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( x15 && x16 && ~x32 && x36 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && x16 && ~x32 && ~x36 && x6 && x2 && x3 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( x15 && x16 && ~x32 && ~x36 && x6 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && x16 && ~x32 && ~x36 && x6 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && x16 && ~x32 && ~x36 && ~x6 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && x7 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && ~x7 && x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x41 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s28;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x41 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x41 && x42 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x41 && ~x42 )
						nx_state = s28;
					else if( ~x15 && x47 && x35 && x5 && x33 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x47 && x35 && x5 && ~x33 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x47 && x35 && x5 && ~x33 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && x47 && x35 && ~x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && x47 && ~x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && x34 && x2 && x42 )
						begin
							y2 = 1'b1;	y8 = 1'b1;	y12 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x15 && ~x47 && x34 && x2 && ~x42 && x4 && x12 && x13 && x3 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && ~x47 && x34 && x2 && ~x42 && x4 && x12 && x13 && ~x3 )
						begin
							y13 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x15 && ~x47 && x34 && x2 && ~x42 && x4 && x12 && ~x13 )
						nx_state = s28;
					else if( ~x15 && ~x47 && x34 && x2 && ~x42 && x4 && ~x12 )
						nx_state = s28;
					else if( ~x15 && ~x47 && x34 && x2 && ~x42 && ~x4 )
						nx_state = s28;
					else if( ~x15 && ~x47 && x34 && ~x2 )
						nx_state = s28;
					else if( ~x15 && ~x47 && ~x34 && x33 && x35 && x11 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && x44 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && x44 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && ~x44 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && ~x43 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && x38 && x39 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && x38 && ~x39 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && ~x38 && x8 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && ~x38 && ~x8 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && x7 && x9 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && x7 && ~x9 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && ~x7 && x40 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && ~x7 && ~x40 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && x38 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && x38 && ~x41 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && ~x38 && x10 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && ~x38 && ~x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && ~x34 && ~x33 )
						nx_state = s28;
					else nx_state = s28;
				s29 : if( x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s28;
						end
					else if( x15 && ~x16 && x39 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && ~x39 && x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && ~x39 && ~x9 && x41 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s28;
						end
					else if( x15 && ~x16 && ~x39 && ~x9 && x41 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x15 && ~x16 && ~x39 && ~x9 && ~x41 && x42 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( x15 && ~x16 && ~x39 && ~x9 && ~x41 && ~x42 )
						nx_state = s29;
					else if( ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s29;
				s30 : if( x46 && x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x46 && x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x46 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x46 && x47 && x4 && x5 && x1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x46 && x47 && x4 && x5 && ~x1 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x46 && x47 && x4 && ~x5 && x2 && x3 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x46 && x47 && x4 && ~x5 && x2 && ~x3 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x46 && x47 && x4 && ~x5 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x46 && x47 && ~x4 && x33 && x34 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x46 && x47 && ~x4 && x33 && ~x34 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x46 && x47 && ~x4 && ~x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x46 && ~x47 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s30;
				s31 : if( x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 && x13 && x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x15 && ~x16 && x13 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && x13 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x15 && ~x16 && ~x13 && x45 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && x9 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && ~x9 && x38 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && ~x9 && ~x38 && x39 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x45 && ~x9 && ~x38 && ~x39 )
						nx_state = s31;
					else if( ~x15 && x47 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x15 && x47 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x47 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s31;
				s32 : if( x46 && x16 && x36 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s25;
						end
					else if( x46 && x16 && ~x36 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s31;
						end
					else if( x46 && ~x16 && x43 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s31;
						end
					else if( x46 && ~x16 && ~x43 )
						nx_state = s32;
					else if( ~x46 && x47 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x46 && ~x47 && x44 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x46 && ~x47 && ~x44 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s31;
						end
					else nx_state = s32;
				s33 : if( x46 && x47 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( x46 && ~x47 && x2 && x34 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( x46 && ~x47 && x2 && ~x34 && x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( x46 && ~x47 && x2 && ~x34 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( x46 && ~x47 && x2 && ~x34 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( x46 && ~x47 && ~x2 )
						nx_state = s33;
					else if( ~x46 && x16 && x4 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x46 && x16 && x4 && ~x5 && x1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x46 && x16 && x4 && ~x5 && ~x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x46 && x16 && ~x4 && x32 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x46 && x16 && ~x4 && ~x32 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x46 && ~x16 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s33;
				s34 : if( x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x47 && x4 && x5 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x47 && x4 && ~x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x15 && x47 && ~x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && ~x47 && x43 && x44 && x34 )
						begin
							y13 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x15 && ~x47 && x43 && x44 && ~x34 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x15 && ~x47 && x43 && x44 && ~x34 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && ~x47 && x43 && ~x44 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 && ~x47 && ~x43 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s34;
				s35 : if( x55 && x10 && x39 && x36 )
						nx_state = s35;
					else if( x55 && x10 && x39 && ~x36 && x46 && x51 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && x10 && x39 && ~x36 && x46 && ~x51 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( x55 && x10 && x39 && ~x36 && ~x46 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s43;
						end
					else if( x55 && x10 && ~x39 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( x55 && ~x10 && x42 && x34 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( x55 && ~x10 && x42 && x34 && ~x8 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && ~x10 && x42 && x34 && ~x8 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x10 && x42 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && x54 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && x54 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s43;
						end
					else if( x55 && ~x10 && x42 && ~x34 && ~x32 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( x55 && ~x10 && ~x42 && x43 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s43;
						end
					else if( x55 && ~x10 && ~x42 && x43 && ~x20 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && ~x10 && ~x42 && x43 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && x3 && x6 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && ~x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x10 && ~x42 && ~x43 && x13 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s43;
						end
					else if( x55 && ~x10 && ~x42 && ~x43 && ~x13 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && x41 && x11 && x1 && x33 && x34 && x35 )
						nx_state = s35;
					else if( ~x55 && x41 && x11 && x1 && x33 && x34 && ~x35 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && x41 && x11 && x1 && x33 && ~x34 && x4 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && x41 && x11 && x1 && x33 && ~x34 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x55 && x41 && x11 && x1 && x33 && ~x34 && ~x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && x41 && x11 && x1 && ~x33 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x55 && x41 && x11 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && x41 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x55 && ~x41 && x32 && x42 )
						begin
							y23 = 1'b1;	y25 = 1'b1;	y32 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x55 && ~x41 && x32 && ~x42 && x43 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && ~x41 && x32 && ~x42 && ~x43 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x55 && ~x41 && ~x32 && x11 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && ~x41 && ~x32 && x11 && ~x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x41 && ~x32 && ~x11 && x12 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x41 && ~x32 && ~x11 && x12 && ~x35 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && x33 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && ~x33 && x40 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && ~x33 && ~x40 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s35;
				s36 : if( x46 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x46 && x14 && x44 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x46 && x14 && ~x44 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x46 && ~x14 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s36;
				s37 : if( x46 && x16 )
						begin
							y13 = 1'b1;	
							nx_state = s39;
						end
					else if( x46 && ~x16 && x42 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s30;
						end
					else if( x46 && ~x16 && ~x42 && x10 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s34;
						end
					else if( x46 && ~x16 && ~x42 && ~x10 )
						nx_state = s37;
					else if( ~x46 && x47 && x3 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x46 && x47 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x46 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s38;
				s39 : if( x15 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x15 && x47 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x47 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x15 && ~x47 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s40;
				s41 : if( x55 && x35 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x35 && x13 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( x55 && ~x35 && ~x13 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x55 && x41 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && ~x41 && x42 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x55 && ~x41 && ~x42 && x38 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && ~x41 && ~x42 && ~x38 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s41;
				s42 : if( x55 && x50 && x19 && x41 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( x55 && x50 && x19 && ~x41 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( x55 && x50 && ~x19 )
						nx_state = s42;
					else if( x55 && ~x50 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && x10 && x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && x10 && ~x11 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && ~x10 && x42 && x38 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x55 && ~x10 && x42 && ~x38 )
						begin
							y8 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x55 && ~x10 && ~x42 && x12 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && ~x1 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && ~x1 && ~x35 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s42;
				s43 : if( x55 && x53 && x47 )
						nx_state = s43;
					else if( x55 && x53 && ~x47 && x59 && x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( x55 && x53 && ~x47 && x59 && ~x51 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && x53 && ~x47 && ~x59 && x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( x55 && ~x53 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && x11 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && ~x11 && x1 && x33 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && ~x11 && x1 && ~x33 && x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x11 && x1 && ~x33 && ~x34 )
						nx_state = s43;
					else if( ~x55 && ~x11 && ~x1 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s43;
				s44 : if( x28 && x57 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( x28 && ~x57 )
						nx_state = s44;
					else if( ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x28 && x27 && ~x8 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x28 && x27 && ~x8 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x28 && ~x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s44;
				s45 : if( x50 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x50 )
						nx_state = s45;
					else nx_state = s45;
				s46 : if( x55 && x47 && x54 && x27 && x29 && x59 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s60;
						end
					else if( x55 && x47 && x54 && x27 && x29 && ~x59 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && x47 && x54 && x27 && ~x29 && x33 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && x47 && x54 && x27 && ~x29 && ~x33 && x57 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( x55 && x47 && x54 && x27 && ~x29 && ~x33 && ~x57 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && x47 && x54 && ~x27 )
						nx_state = s46;
					else if( x55 && x47 && ~x54 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x47 && x37 && x56 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && ~x47 && x37 && x56 && ~x1 )
						nx_state = s46;
					else if( x55 && ~x47 && x37 && ~x56 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x47 && ~x37 && x25 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x47 && ~x37 && ~x25 && x35 && x36 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s55;
						end
					else if( x55 && ~x47 && ~x37 && ~x25 && x35 && ~x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && ~x47 && ~x37 && ~x25 && ~x35 )
						nx_state = s46;
					else if( ~x55 && x41 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && x41 && ~x11 && x12 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && x41 && ~x11 && x12 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && x32 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && x32 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && x32 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && ~x32 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x41 && x43 && x33 && x35 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x55 && ~x41 && x43 && x33 && ~x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && ~x41 && x43 && ~x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x41 && ~x43 && x40 )
						begin
							y4 = 1'b1;	y10 = 1'b1;	y31 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x55 && ~x41 && ~x43 && ~x40 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x41 && ~x43 && ~x40 && ~x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s46;
				s47 : if( x55 && x17 && x19 && x41 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( x55 && x17 && x19 && ~x41 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( x55 && x17 && ~x19 )
						nx_state = s47;
					else if( x55 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s43;
						end
					else if( x55 && ~x17 && ~x20 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && x10 && x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && x10 && ~x11 && x43 && x4 && x32 )
						nx_state = s47;
					else if( ~x55 && x10 && ~x11 && x43 && x4 && ~x32 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && x10 && ~x11 && x43 && ~x4 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && x10 && ~x11 && ~x43 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x10 && x42 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x55 && ~x10 && ~x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s47;
				s48 : if( x55 && x51 && x24 && x36 )
						nx_state = s48;
					else if( x55 && x51 && x24 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && x51 && ~x24 && x31 && x29 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && x51 && ~x24 && ~x31 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && ~x51 && x42 && x35 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && ~x51 && x42 && x35 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x51 && x42 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x51 && x42 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x51 && ~x42 && x52 && x35 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s62;
						end
					else if( x55 && ~x51 && ~x42 && x52 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x51 && ~x42 && x52 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x51 && ~x42 && ~x52 && x3 && x6 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( x55 && ~x51 && ~x42 && ~x52 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x51 && ~x42 && ~x52 && ~x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && x10 && x11 && x34 && x35 )
						nx_state = s48;
					else if( ~x55 && x10 && x11 && x34 && ~x35 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && x10 && x11 && ~x34 && x4 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && x10 && x11 && ~x34 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x55 && x10 && x11 && ~x34 && ~x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x55 && x10 && ~x11 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && x10 && ~x11 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && ~x10 && x42 && x37 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && x4 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && x1 && x34 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && x1 && ~x34 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && ~x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && ~x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && ~x10 && ~x42 && x12 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && ~x10 && ~x42 && x12 && ~x9 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && ~x6 && x40 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && ~x6 && ~x40 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s48;
				s49 : if( x55 && x44 && x23 && x51 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && x44 && x23 && ~x51 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( x55 && x44 && ~x23 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && ~x44 && x28 && x35 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( x55 && ~x44 && x28 && x35 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x44 && x28 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x44 && x28 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x44 && ~x28 && x37 && x35 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s62;
						end
					else if( x55 && ~x44 && ~x28 && x37 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x44 && ~x28 && x37 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x44 && ~x28 && ~x37 && x39 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x55 && ~x44 && ~x28 && ~x37 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && x41 && x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x55 && x41 && ~x11 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && ~x41 && x42 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x55 && ~x41 && x42 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x41 && x42 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x55 && ~x41 && ~x42 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x41 && ~x42 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s49;
				s50 : if( x55 && x8 && x53 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( x55 && x8 && ~x53 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && x8 && ~x53 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( x55 && ~x8 && x51 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( x55 && ~x8 && ~x51 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x8 && ~x51 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x55 && x41 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && ~x41 && x42 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x55 && ~x41 && ~x42 && x43 && x39 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x55 && ~x41 && ~x42 && x43 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x55 && ~x41 && ~x42 && ~x43 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y16 = 1'b1;	y21 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s50;
				s51 : if( x7 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x7 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s51;
				s52 : if( x55 && x29 && x50 )
						begin
							y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x55 && x29 && ~x50 )
						nx_state = s52;
					else if( x55 && ~x29 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x29 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && x11 && x6 && x40 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x55 && x11 && x6 && ~x40 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x55 && x11 && ~x6 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x55 && ~x11 && x39 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && ~x11 && ~x39 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s52;
				s53 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s53;
				s54 : if( x55 && x10 && x43 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s66;
						end
					else if( x55 && x10 && x43 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( x55 && x10 && x43 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && x10 && ~x43 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s69;
						end
					else if( x55 && ~x10 && x1 && x22 )
						begin
							y10 = 1'b1;	y26 = 1'b1;	y37 = 1'b1;	
							nx_state = s70;
						end
					else if( x55 && ~x10 && x1 && ~x22 && x2 && x3 && x42 )
						nx_state = s54;
					else if( x55 && ~x10 && x1 && ~x22 && x2 && x3 && ~x42 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( x55 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else if( x55 && ~x10 && ~x1 && x42 && x35 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && ~x10 && ~x1 && x42 && ~x35 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( x55 && ~x10 && ~x1 && ~x42 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && x41 && x39 && x36 )
						nx_state = s54;
					else if( ~x55 && x41 && x39 && ~x36 && x46 && x51 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && x41 && x39 && ~x36 && x46 && ~x51 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x55 && x41 && x39 && ~x36 && ~x46 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x55 && x41 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x55 && ~x41 && x11 && x34 && x8 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x55 && ~x41 && x11 && x34 && ~x8 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x41 && x11 && x34 && ~x8 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x41 && x11 && ~x34 && x32 && x38 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && x54 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && x54 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && ~x54 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x55 && ~x41 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x55 && ~x41 && ~x11 && x12 && x51 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x55 && ~x41 && ~x11 && x12 && ~x51 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && ~x41 && ~x11 && x12 && ~x51 && ~x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && x34 && x37 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && x34 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && ~x34 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x41 && ~x11 && ~x12 && x44 && ~x32 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x55 && ~x41 && ~x11 && ~x12 && ~x44 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s54;
				s55 : if( x55 && x46 && x3 && x23 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( x55 && x46 && x3 && ~x23 )
						nx_state = s55;
					else if( x55 && x46 && ~x3 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x55 && ~x46 && x2 && x23 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( x55 && ~x46 && x2 && ~x23 )
						nx_state = s55;
					else if( x55 && ~x46 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && x10 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && ~x10 && x11 && x5 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x55 && ~x10 && x11 && ~x5 && x37 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x10 && x11 && ~x5 && ~x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x10 && ~x11 && x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x55 && ~x10 && ~x11 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s55;
				s56 : if( x38 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x38 )
						nx_state = s56;
					else nx_state = s56;
				s57 : if( x10 && x6 && x7 && x33 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( x10 && x6 && x7 && x33 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( x10 && x6 && x7 && x33 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( x10 && x6 && x7 && ~x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x10 && x6 && ~x7 && x39 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( x10 && x6 && ~x7 && ~x39 && x33 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( x10 && x6 && ~x7 && ~x39 && x33 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( x10 && x6 && ~x7 && ~x39 && x33 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( x10 && x6 && ~x7 && ~x39 && ~x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( x10 && ~x6 && x2 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( x10 && ~x6 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x10 && x11 && x5 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x10 && x11 && ~x5 && x37 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x10 && x11 && ~x5 && ~x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x10 && ~x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s57;
				s58 : if( x41 && x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x41 && ~x12 && x32 && x2 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( x41 && ~x12 && x32 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( x41 && ~x12 && ~x32 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x41 && x42 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x41 && x42 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x41 && x42 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x41 && ~x42 && x43 && x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x41 && ~x42 && x43 && ~x34 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x41 && ~x42 && ~x43 && x6 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x41 && ~x42 && ~x43 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s58;
				s59 : if( x55 && x48 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s55;
						end
					else if( x55 && ~x48 && x57 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( x55 && ~x48 && ~x57 )
						nx_state = s59;
					else if( ~x55 && x37 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x55 && ~x37 )
						begin
							y8 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s59;
				s60 : if( x55 && x34 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( x55 && ~x34 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x55 && ~x34 && ~x2 && x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( x55 && ~x34 && ~x2 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && x41 && x36 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x55 && x41 && x36 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && x41 && x36 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && x41 && ~x36 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x55 && ~x41 && x11 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x55 && ~x41 && x11 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x41 && x11 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x55 && ~x41 && ~x11 )
						nx_state = s60;
					else nx_state = s60;
				s61 : if( x55 && x50 )
						begin
							y8 = 1'b1;	
							nx_state = s59;
						end
					else if( x55 && ~x50 )
						nx_state = s61;
					else if( ~x55 && x42 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x55 && ~x42 && x9 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x55 && ~x42 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s61;
				s62 : if( x55 && x37 && x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s49;
						end
					else if( x55 && x37 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s48;
						end
					else if( x55 && ~x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x55 && x10 && x32 && x33 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x55 && x10 && x32 && x33 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && x10 && x32 && x33 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x55 && x10 && x32 && ~x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x55 && x10 && ~x32 && x33 && x9 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x55 && x10 && ~x32 && x33 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x55 && x10 && ~x32 && ~x33 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x55 && ~x10 )
						nx_state = s62;
					else nx_state = s62;
				s63 : if( x3 && x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( x3 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s63;
				s64 : if( x39 && x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s52;
						end
					else if( x39 && ~x1 && x4 )
						begin
							y4 = 1'b1;	y10 = 1'b1;	y31 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s61;
						end
					else if( x39 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x39 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s64;
				s65 : if( x55 && x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( x55 && ~x37 && x40 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s45;
						end
					else if( x55 && ~x37 && ~x40 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x55 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x10 && x42 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x55 && ~x10 && x42 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x55 && ~x10 && x42 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x55 && ~x10 && ~x42 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s65;
				s66 : if( x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x19 && x26 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x19 && x26 && ~x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x19 && ~x26 )
						begin
							y11 = 1'b1;	y36 = 1'b1;	
							nx_state = s80;
						end
					else nx_state = s66;
				s67 : if( x55 && x50 && x28 && x32 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s80;
						end
					else if( x55 && x50 && x28 && ~x32 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x50 && x28 && ~x32 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( x55 && x50 && ~x28 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( x55 && ~x50 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x55 && x13 && x23 && x51 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && x13 && x23 && ~x51 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x55 && x13 && ~x23 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x13 && x28 && x35 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x13 && x28 && x35 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x13 && x28 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x13 && x28 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x13 && ~x28 && x6 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x55 && ~x13 && ~x28 && x6 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x13 && ~x28 && x6 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s67;
				s68 : if( x55 && x30 && x16 && x37 )
						begin
							y6 = 1'b1;	y13 = 1'b1;	y34 = 1'b1;	
							nx_state = s83;
						end
					else if( x55 && x30 && x16 && ~x37 && x39 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s78;
						end
					else if( x55 && x30 && x16 && ~x37 && x39 && ~x19 && x26 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( x55 && x30 && x16 && ~x37 && x39 && ~x19 && x26 && ~x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( x55 && x30 && x16 && ~x37 && x39 && ~x19 && ~x26 )
						begin
							y11 = 1'b1;	y36 = 1'b1;	
							nx_state = s80;
						end
					else if( x55 && x30 && x16 && ~x37 && ~x39 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && x30 && ~x16 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x30 && ~x16 && ~x41 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && ~x30 && x36 && x9 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && ~x30 && x36 && ~x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s82;
						end
					else if( x55 && ~x30 && ~x36 && x3 && x42 )
						nx_state = s68;
					else if( x55 && ~x30 && ~x36 && x3 && ~x42 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( x55 && ~x30 && ~x36 && ~x3 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( x55 && ~x30 && ~x36 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && x51 && x24 && x5 && x36 )
						nx_state = s68;
					else if( ~x55 && x51 && x24 && x5 && ~x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && x51 && x24 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && x51 && ~x24 && x31 && x29 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && x51 && ~x24 && x31 && ~x29 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && x51 && ~x24 && ~x31 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x51 && x42 && x35 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x51 && x42 && x35 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x51 && x42 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x51 && x42 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x51 && ~x42 && x52 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x55 && ~x51 && ~x42 && x52 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x51 && ~x42 && x52 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x51 && ~x42 && ~x52 && x34 && x37 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x55 && ~x51 && ~x42 && ~x52 && x34 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && ~x51 && ~x42 && ~x52 && ~x34 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s68;
				s69 : if( x55 && x43 && x27 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( x55 && x43 && x27 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && x43 && x27 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x43 && ~x27 && x1 && x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( x55 && x43 && ~x27 && x1 && ~x29 )
						nx_state = s69;
					else if( x55 && x43 && ~x27 && ~x1 && x29 )
						nx_state = s69;
					else if( x55 && x43 && ~x27 && ~x1 && ~x29 )
						nx_state = s69;
					else if( x55 && ~x43 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s78;
						end
					else if( x55 && ~x43 && ~x29 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x55 && x48 )
						begin
							y13 = 1'b1;	y36 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x55 && ~x48 && x57 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x55 && ~x48 && ~x57 )
						nx_state = s69;
					else nx_state = s69;
				s70 : if( x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x33 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else nx_state = s70;
				s71 : if( x55 && x45 && x8 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x45 && x8 && ~x41 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && x45 && ~x8 && x30 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( x55 && x45 && ~x8 && x30 && ~x32 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( x55 && x45 && ~x8 && x30 && ~x32 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( x55 && x45 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && ~x45 && x34 && x32 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( x55 && ~x45 && x34 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && ~x45 && ~x34 )
						nx_state = s71;
					else if( ~x55 && x47 && x54 && x27 && x29 && x59 )
						begin
							y13 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x55 && x47 && x54 && x27 && x29 && ~x59 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && x47 && x54 && x27 && ~x29 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && x47 && x54 && x27 && ~x29 && ~x33 && x57 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x55 && x47 && x54 && x27 && ~x29 && ~x33 && ~x57 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && x47 && x54 && ~x27 )
						nx_state = s71;
					else if( ~x55 && x47 && ~x54 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x47 && x37 && x56 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && ~x47 && x37 && x56 && ~x1 )
						nx_state = s71;
					else if( ~x55 && ~x47 && x37 && ~x56 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x47 && ~x37 && x25 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x47 && ~x37 && ~x25 && x35 && x36 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x55 && ~x47 && ~x37 && ~x25 && x35 && ~x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && ~x47 && ~x37 && ~x25 && ~x35 )
						nx_state = s71;
					else nx_state = s71;
				s72 : if( x55 && x24 && x26 && x7 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s89;
						end
					else if( x55 && x24 && ~x26 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( x55 && ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s69;
						end
					else if( x55 && ~x24 && ~x28 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && x31 && x50 && x10 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x55 && x31 && x50 && ~x10 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x55 && x31 && ~x50 )
						nx_state = s72;
					else if( ~x55 && ~x31 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else nx_state = s72;
				s73 : if( x55 && x19 && x44 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s82;
						end
					else if( x55 && x19 && ~x44 && x32 && x18 && x12 )
						nx_state = s73;
					else if( x55 && x19 && ~x44 && x32 && x18 && ~x12 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( x55 && x19 && ~x44 && x32 && ~x18 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( x55 && x19 && ~x44 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && ~x19 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && x17 && x50 && x10 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x55 && x17 && x50 && ~x10 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x55 && x17 && ~x50 )
						nx_state = s73;
					else if( ~x55 && ~x17 && x51 )
						begin
							y11 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x55 && ~x17 && ~x51 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && ~x17 && ~x51 && ~x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s73;
				s74 : if( x55 && x11 && x25 && x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( x55 && x11 && x25 && ~x34 && x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && x11 && x25 && ~x34 && ~x36 )
						nx_state = s74;
					else if( x55 && x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( x55 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && x53 && x47 )
						nx_state = s74;
					else if( ~x55 && x53 && ~x47 && x59 && x51 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && x53 && ~x47 && x59 && ~x51 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && x53 && ~x47 && ~x59 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && ~x53 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s74;
				s75 : if( x55 && x35 && x7 && x1 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s80;
						end
					else if( x55 && x35 && x7 && ~x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x35 && ~x7 )
						nx_state = s75;
					else if( x55 && ~x35 && x38 && x32 )
						nx_state = s75;
					else if( x55 && ~x35 && x38 && ~x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( x55 && ~x35 && ~x38 )
						nx_state = s75;
					else if( ~x55 && x34 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x55 && ~x34 && x2 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x55 && ~x34 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && ~x34 && ~x2 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s75;
				s76 : if( x55 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( x55 && ~x5 && x34 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( x55 && ~x5 && ~x34 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x55 && x35 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x35 && x44 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x55 && ~x35 && ~x44 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s76;
				s77 : if( x55 && x41 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( x55 && ~x41 && x25 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x41 && ~x25 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x55 && x39 && x53 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x55 && x39 && ~x53 && x37 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && x39 && ~x53 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x55 && ~x39 && x51 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x55 && ~x39 && ~x51 && x37 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x39 && ~x51 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s77;
				s78 : if( x55 && x33 && x8 && x32 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s80;
						end
					else if( x55 && x33 && x8 && ~x32 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x33 && x8 && ~x32 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( x55 && x33 && ~x8 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( x55 && x33 && ~x8 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else if( x55 && ~x33 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x55 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && x37 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && ~x37 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s78;
				s79 : if( x55 && x16 && x50 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( x55 && x16 && x50 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && x16 && x50 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x16 && ~x50 && x32 && x30 && x26 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( x55 && x16 && ~x50 && x32 && x30 && ~x26 && x34 )
						nx_state = s79;
					else if( x55 && x16 && ~x50 && x32 && x30 && ~x26 && ~x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( x55 && x16 && ~x50 && x32 && ~x30 )
						nx_state = s79;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && x26 && x1 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && x26 && x1 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && x26 && ~x1 )
						nx_state = s79;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && x3 )
						nx_state = s79;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && x1 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && x1 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s85;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && ~x1 )
						nx_state = s79;
					else if( x55 && x16 && ~x50 && ~x32 && ~x30 )
						nx_state = s79;
					else if( x55 && ~x16 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && x28 && x57 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x55 && x28 && ~x57 )
						nx_state = s79;
					else if( ~x55 && ~x28 && x27 && x8 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x55 && ~x28 && x27 && ~x8 && x37 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x55 && ~x28 && ~x27 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && ~x28 && ~x27 && ~x50 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s79;
				s80 : if( x32 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x32 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x32 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s80;
				s81 : if( x32 && x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s90;
						end
					else if( x32 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s91;
						end
					else if( ~x32 )
						begin
							y11 = 1'b1;	
							nx_state = s91;
						end
					else nx_state = s81;
				s82 : if( x55 && x40 )
						begin
							y13 = 1'b1;	
							nx_state = s88;
						end
					else if( x55 && ~x40 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && ~x40 && ~x3 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x55 && x29 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x55 && x29 && ~x50 )
						nx_state = s82;
					else if( ~x55 && ~x29 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x29 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s82;
				s83 : if( x16 && x37 )
						begin
							y6 = 1'b1;	y13 = 1'b1;	y34 = 1'b1;	
							nx_state = s83;
						end
					else if( x16 && ~x37 && x39 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s78;
						end
					else if( x16 && ~x37 && x39 && ~x19 && x26 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else if( x16 && ~x37 && x39 && ~x19 && x26 && ~x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( x16 && ~x37 && x39 && ~x19 && ~x26 )
						begin
							y11 = 1'b1;	y36 = 1'b1;	
							nx_state = s80;
						end
					else if( x16 && ~x37 && ~x39 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x16 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x16 && ~x41 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else nx_state = s83;
				s84 : if( x55 && x22 && x2 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( x55 && x22 && x2 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && x22 && x2 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( x55 && x22 && ~x2 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && ~x22 && x31 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x55 && x46 && x3 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x55 && x46 && x3 && ~x23 )
						nx_state = s84;
					else if( ~x55 && x46 && ~x3 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && ~x46 && x33 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x55 && ~x46 && x33 && ~x23 )
						nx_state = s84;
					else if( ~x55 && ~x46 && ~x33 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else nx_state = s84;
				s85 : if( x55 && x25 && x52 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && x25 && ~x52 && x6 && x39 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( x55 && x25 && ~x52 && x6 && ~x39 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s81;
						end
					else if( x55 && x25 && ~x52 && ~x6 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( x55 && ~x25 && x29 )
						begin
							y10 = 1'b1;	y26 = 1'b1;	y37 = 1'b1;	
							nx_state = s70;
						end
					else if( x55 && ~x25 && ~x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x55 && x38 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x55 && ~x38 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x55 && ~x38 && ~x50 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s85;
				s86 : if( x37 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x37 && x40 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x37 && ~x40 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s86;
				s87 : if( 1'b1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s87;
				s88 : if( x55 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s84;
						end
					else if( x55 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s68;
						end
					else if( x55 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x55 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x55 && ~x50 )
						nx_state = s88;
					else nx_state = s88;
				s89 : if( x47 && x9 )
						begin
							y6 = 1'b1;	y13 = 1'b1;	y34 = 1'b1;	
							nx_state = s83;
						end
					else if( x47 && ~x9 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x47 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s69;
						end
					else nx_state = s89;
				s90 : if( x15 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x15 && x36 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x15 && ~x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s92;
						end
					else nx_state = s90;
				s91 : if( x46 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x46 && x2 && x34 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x46 && x2 && ~x34 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x46 && x2 && ~x34 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x46 && ~x2 )
						nx_state = s91;
					else nx_state = s91;
				s92 : if( x46 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x46 && x2 && x34 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x46 && x2 && ~x34 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x46 && x2 && ~x34 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x46 && ~x2 )
						nx_state = s92;
					else nx_state = s92;
				s93 : if( x15 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x15 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x15 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s93;
				s94 : if( x15 && x13 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s99;
						end
					else if( x15 && ~x13 )
						begin
							y8 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x15 && x12 )
						begin
							y8 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x15 && ~x12 )
						nx_state = s94;
					else nx_state = s94;
				s95 : if( x46 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x46 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x46 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s95;
				s96 : if( x15 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x15 && x39 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x15 && ~x39 && x40 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x15 && ~x39 && ~x40 && x10 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x15 && ~x39 && ~x40 && x10 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x15 && ~x39 && ~x40 && ~x10 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x15 && ~x39 && ~x40 && ~x10 && ~x42 )
						nx_state = s96;
					else nx_state = s96;
				s97 : if( x26 && x32 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( x26 && x32 && ~x28 && x33 && x34 && x25 )
						nx_state = s97;
					else if( x26 && x32 && ~x28 && x33 && x34 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( x26 && x32 && ~x28 && x33 && ~x34 && x35 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( x26 && x32 && ~x28 && x33 && ~x34 && x35 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else if( x26 && x32 && ~x28 && x33 && ~x34 && ~x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( x26 && x32 && ~x28 && ~x33 )
						begin
							y11 = 1'b1;	
							nx_state = s106;
						end
					else if( x26 && ~x32 && x28 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( x26 && ~x32 && x28 && ~x2 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( x26 && ~x32 && x28 && ~x2 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( x26 && ~x32 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && x27 )
						begin
							y11 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x27 && x28 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && ~x27 && x28 && ~x1 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x27 && x28 && ~x1 && ~x4 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y11 = 1'b1;	
							nx_state = s106;
						end
					else nx_state = s97;
				s98 : if( x46 && x34 && x2 && x42 )
						begin
							y2 = 1'b1;	y8 = 1'b1;	y12 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s108;
						end
					else if( x46 && x34 && x2 && ~x42 && x35 && x43 && x44 && x3 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s109;
						end
					else if( x46 && x34 && x2 && ~x42 && x35 && x43 && x44 && ~x3 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s110;
						end
					else if( x46 && x34 && x2 && ~x42 && x35 && x43 && ~x44 )
						nx_state = s98;
					else if( x46 && x34 && x2 && ~x42 && x35 && ~x43 )
						nx_state = s98;
					else if( x46 && x34 && x2 && ~x42 && ~x35 )
						nx_state = s98;
					else if( x46 && x34 && ~x2 )
						nx_state = s98;
					else if( x46 && ~x34 && x33 && x4 && x11 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s111;
						end
					else if( x46 && ~x34 && x33 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s110;
						end
					else if( x46 && ~x34 && x33 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( x46 && ~x34 && x33 && x4 && ~x11 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s112;
						end
					else if( x46 && ~x34 && x33 && x4 && ~x11 && ~x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s113;
						end
					else if( x46 && ~x34 && x33 && ~x4 && x5 && x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && x7 && x39 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && x7 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && ~x7 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && ~x7 && ~x8 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && x38 && x40 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && x38 && ~x40 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && ~x38 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && ~x38 && ~x9 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && ~x7 && x41 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && ~x7 && ~x41 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( x46 && ~x34 && ~x33 )
						nx_state = s98;
					else if( ~x46 && x38 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x46 && ~x38 && x40 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x46 && ~x38 && ~x40 && x10 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x46 && ~x38 && ~x40 && x10 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x46 && ~x38 && ~x40 && ~x10 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x46 && ~x38 && ~x40 && ~x10 && ~x42 )
						nx_state = s98;
					else nx_state = s98;
				s99 : if( x15 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x15 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x15 && ~x42 && x41 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x15 && ~x42 && ~x41 )
						nx_state = s99;
					else nx_state = s99;
				s100 : if( x46 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x46 && x44 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x46 && x44 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x46 && ~x44 && x14 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x46 && ~x44 && ~x14 && x40 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x40 && x38 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x40 && ~x38 && x39 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x40 && ~x38 && ~x39 )
						nx_state = s100;
					else nx_state = s100;
				s101 : if( x15 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x15 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s97;
						end
					else nx_state = s101;
				s102 : if( x26 && x28 && x3 && x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s114;
						end
					else if( x26 && x28 && x3 && ~x5 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( x26 && x28 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( x26 && ~x28 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x26 && x27 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x26 && ~x27 && x36 && x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x27 && x36 && ~x28 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && ~x27 && x36 && ~x28 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x26 && ~x27 && x36 && ~x28 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x27 && ~x36 && x28 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x27 && ~x36 && ~x28 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s102;
				s103 : if( x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( x26 && ~x28 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x26 && x27 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x26 && x27 && ~x35 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x27 && x28 && ~x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x26 && ~x27 && ~x28 && x49 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && ~x27 && ~x28 && x49 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x26 && ~x27 && ~x28 && x49 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x49 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s103;
				s104 : if( x26 && x28 && x37 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( x26 && x28 && ~x37 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( x26 && x28 && ~x37 && ~x4 )
						nx_state = s1;
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x27 && x28 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else nx_state = s104;
				s105 : if( x26 && x28 && x7 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( x26 && x28 && ~x7 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 && x25 && x9 )
						nx_state = s105;
					else if( ~x26 && x27 && x25 && ~x9 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && x27 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x26 && ~x27 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s105;
				s106 : if( x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( x26 && ~x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && x1 && x27 && x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && x1 && x27 && ~x33 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && x1 && x27 && ~x33 && ~x34 )
						nx_state = s106;
					else if( ~x26 && x1 && ~x27 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && x1 && ~x27 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x26 && ~x1 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x26 && ~x1 && ~x27 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && ~x1 && ~x27 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else nx_state = s106;
				s107 : if( x26 && x28 && x23 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else if( x26 && x28 && ~x23 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( x26 && x28 && ~x23 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( x26 && ~x28 && x34 && x25 )
						nx_state = s107;
					else if( x26 && ~x28 && x34 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( x26 && ~x28 && ~x34 && x35 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( x26 && ~x28 && ~x34 && x35 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else if( x26 && ~x28 && ~x34 && ~x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && x27 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x26 && x27 && ~x35 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && ~x11 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s107;
				s108 : if( 1'b1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s111;
						end
					else nx_state = s108;
				s109 : if( x46 && x12 && x13 && x3 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s110;
						end
					else if( x46 && x12 && x13 && ~x3 && x14 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s110;
						end
					else if( x46 && x12 && x13 && ~x3 && ~x14 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( x46 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s112;
						end
					else if( x46 && ~x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x46 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s113;
						end
					else nx_state = s109;
				s110 : if( 1'b1 )
						begin
							y19 = 1'b1;	
							nx_state = s120;
						end
					else nx_state = s110;
				s111 : if( 1'b1 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s121;
						end
					else nx_state = s111;
				s112 : if( x15 && x45 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s122;
						end
					else if( x15 && ~x45 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x15 && x43 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x15 && ~x43 )
						nx_state = s112;
					else nx_state = s112;
				s113 : if( x15 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x15 && x6 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s122;
						end
					else if( ~x15 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s112;
						end
					else nx_state = s113;
				s114 : if( x26 )
						begin
							y11 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && x28 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x26 && x28 && ~x36 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x26 && ~x28 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else nx_state = s114;
				s115 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x26 && x27 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x26 && ~x27 && x28 && ~x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s114;
						end
					else nx_state = s115;
				s116 : if( x28 && x7 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else if( x28 && ~x7 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x28 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s116;
				s117 : if( x26 && x39 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s102;
						end
					else if( x26 && x39 && ~x32 && x14 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else if( x26 && x39 && ~x32 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( x26 && ~x39 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x38 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && ~x28 && x6 && x38 && x5 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x26 && ~x28 && x6 && x38 && x5 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x28 && x6 && x38 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && x8 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && x5 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s117;
				s118 : if( x37 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x37 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s125;
						end
					else nx_state = s118;
				s119 : if( x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x8 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s127;
						end
					else nx_state = s119;
				s120 : if( 1'b1 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y26 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s120;
				s121 : if( 1'b1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s97;
						end
					else nx_state = s121;
				s122 : if( x46 )
						begin
							y19 = 1'b1;	
							nx_state = s120;
						end
					else if( ~x46 && x43 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x46 && ~x43 )
						nx_state = s122;
					else nx_state = s122;
				s123 : if( x46 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x46 && x44 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x46 && x44 && ~x11 && x6 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x46 && x44 && ~x11 && x6 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x46 && x44 && ~x11 && ~x6 && x36 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x46 && x44 && ~x11 && ~x6 && ~x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x46 && ~x44 && x14 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x46 && ~x44 && ~x14 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x9 && x37 && x33 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x9 && x37 && ~x33 )
						nx_state = s123;
					else if( ~x46 && ~x44 && ~x14 && ~x9 && ~x37 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x9 && ~x37 && ~x8 )
						nx_state = s123;
					else nx_state = s123;
				s124 : if( 1'b1 )
						begin
							y1 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s124;
				s125 : if( x40 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x40 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s125;
				s126 : if( x28 && x25 )
						nx_state = s1;
					else if( x28 && ~x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x28 )
						nx_state = s1;
					else nx_state = s126;
				s127 : if( 1'b1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s127;
				s128 : if( x45 && x13 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s121;
						end
					else if( x45 && ~x13 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x45 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s99;
						end
					else nx_state = s128;

			default : nx_state = 0;
		endcase
	end
endmodule
