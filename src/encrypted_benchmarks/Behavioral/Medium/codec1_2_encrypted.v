/******** Key Information: *********** 
Key 1:   bin: '0111100000110100110011000111'    dec: 126045383
Key 2:   bin: '1110101111100000011110100010'    dec: 247334818
Key 3:   bin: '1110111101010011100001101001'    dec: 250951785
Key 4:   bin: '0100111001111011110010100111'    dec: 82295975
Key 5:   bin: '0011011101110111101110101110'    dec: 58162094
Key 6:   bin: '1101110010111100111111110011'    dec: 231460851
Key 7:   bin: '1000100111001110100100000111'    dec: 144500999
Key 8:   bin: '0101100011010010000110000110'    dec: 93135238
Key 9:   bin: '1001010010011000011011100010'    dec: 155813602
**************************************/

module codec1_2 (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75,
	y76, y77, y78, y79, y80, y81, y82, y83, y84, y85, y86, y87, y88, y89, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y101, y102, y103, y104, y105,
	y106, y107, y108);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75,
	y76, y77, y78, y79, y80, y81, y82, y83, y84, y85, y86, y87, y88, y89, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y101, y102, y103, y104, y105,
	y106, y107, y108;
reg[6:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75,
	y76, y77, y78, y79, y80, y81, y82, y83, y84, y85, y86, y87, y88, y89, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y101, y102, y103, y104, y105,
	y106, y107, y108;

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
	s111=111, s112=112, s113=113, s114=114, s115=115, s116=116, s117=117, s118=118, s119=119, s120=120,
	s121=121, s122=122, s123=123, s124=124, s125=125, s126=126, s127=127, s128=128, s129=129, s130=130,
	s131=131, s132=132, s133=133, s134=134, s135=135, s136=136, s137=137, s138=138, s139=139, s140=140,
	s141=141, s142=142, s143=143, s144=144, s145=145, s146=146, s147=147, s148=148, s149=149, s150=150,
	s151=151, s152=152, s153=153, s154=154, s155=155, s156=156, s157=157, s158=158, s159=159, s160=160,
	s161=161, s162=162, s163=163, s164=164, s165=165, s166=166, s167=167, s168=168, s169=169, s170=170,
	s171=171, s172=172, s173=173, s174=174, s175=175, s176=176, s177=177, s178=178, s179=179, s180=180,
	s181=181, s182=182, s183=183, s184=184, s185=185, s186=186, s187=187, s188=188, s189=189, s190=190;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 44) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 4 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s159;
		end
		if ( counter > 4 && counter <= 9 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s19;
		end
		if ( counter > 9 && counter <= 14 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s100;
		end
		if ( counter > 14 && counter <= 19 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s49;
		end
		if ( counter > 19 && counter <= 24 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s17;
		end
		if ( counter > 24 && counter <= 29 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s112;
		end
		if ( counter > 29 && counter <= 34 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s145;
		end
		if ( counter > 34 && counter <= 39 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s21;
		end
		if ( counter > 39 && counter <= 44 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s53;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27 or x28)
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
			y73 = 1'b0;	y74 = 1'b0;	y75 = 1'b0;	y76 = 1'b0;	
			y77 = 1'b0;	y78 = 1'b0;	y79 = 1'b0;	y80 = 1'b0;	
			y81 = 1'b0;	y82 = 1'b0;	y83 = 1'b0;	y84 = 1'b0;	
			y85 = 1'b0;	y86 = 1'b0;	y87 = 1'b0;	y88 = 1'b0;	
			y89 = 1'b0;	y90 = 1'b0;	y91 = 1'b0;	y92 = 1'b0;	
			y93 = 1'b0;	y94 = 1'b0;	y95 = 1'b0;	y96 = 1'b0;	
			y97 = 1'b0;	y98 = 1'b0;	y99 = 1'b0;	y100 = 1'b0;	
			y101 = 1'b0;	y102 = 1'b0;	y103 = 1'b0;	y104 = 1'b0;	
			y105 = 1'b0;	y106 = 1'b0;	y107 = 1'b0;	y108 = 1'b0;	
		case ( pr_state )
				s1 : if( x2 && x1 && x4 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							nx_state = s1;
						end
					else if( x2 && x1 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x2 && ~x1 && x3 )
						begin
							y12 = 1'b1;	
							nx_state = s3;
						end
					else if( x2 && ~x1 && ~x3 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x2 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y19 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y19 = 1'b1;	y25 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s8;
				s9 : if( x11 )
						begin
							y17 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x11 )
						begin
							y24 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s9;
				s10 : if( x11 )
						begin
							y15 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x11 )
						begin
							y24 = 1'b1;	
							nx_state = s6;
						end
					else nx_state = s10;
				s11 : if( 1'b1 )
						begin
							y32 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y21 = 1'b1;	y61 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s12;
				s13 : if( 1'b1 )
						begin
							y66 = 1'b1;	y64 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s13;
				s14 : if( 1'b1 )
						begin
							y59 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y94 = 1'b1;	y95 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y59 = 1'b1;	y60 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s16;
				s17 : if( 1'b1 )
						begin
							y91 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s18;
				s19 : if( 1'b1 )
						begin
							y73 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y63 = 1'b1;	y38 = 1'b1;	y22 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y59 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y59 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s22;
				s23 : if( 1'b1 )
						begin
							y59 = 1'b1;	y60 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y59 = 1'b1;	y60 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s26;
				s27 : if( 1'b1 )
						begin
							y104 = 1'b1;	y105 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s27;
				s28 : if( x19 )
						begin
							y63 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x19 && x18 )
						begin
							y38 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x19 && ~x18 && x12 )
						begin
							y23 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x19 && ~x18 && ~x12 )
						begin
							y22 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s28;
				s29 : if( 1'b1 )
						begin
							y106 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s29;
				s30 : if( x12 )
						begin
							y23 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x12 )
						begin
							y22 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s30;
				s31 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s31;
				s32 : if( x22 && x23 )
						begin
							y92 = 1'b1;	
							nx_state = s34;
						end
					else if( x22 && ~x23 )
						begin
							y96 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x22 )
						begin
							y71 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y89 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y90 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s35;
				s36 : if( 1'b1 )
						begin
							y62 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y95 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y93 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s38;
				s39 : if( 1'b1 )
						begin
							y21 = 1'b1;	y26 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y104 = 1'b1;	y107 = 1'b1;	
							nx_state = s42;
						end
					else nx_state = s40;
				s41 : if( x21 )
						begin
							y68 = 1'b1;	y69 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x21 )
						begin
							y67 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s41;
				s42 : if( 1'b1 )
						begin
							y106 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s42;
				s43 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y24 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s44;
				s45 : if( 1'b1 )
						begin
							y63 = 1'b1;	y38 = 1'b1;	y98 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s45;
				s46 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s46;
				s47 : if( 1'b1 )
						begin
							y104 = 1'b1;	y107 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s47;
				s48 : if( x9 )
						begin
							y28 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x9 )
						begin
							y14 = 1'b1;	y57 = 1'b1;	y58 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s48;
				s49 : if( 1'b1 )
						begin
							y106 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s49;
				s50 : if( x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x6 )
						begin
							y21 = 1'b1;	y61 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s50;
				s51 : if( x17 )
						begin
							y59 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x17 )
						begin
							y56 = 1'b1;	y43 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s51;
				s52 : if( x19 )
						begin
							y63 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x19 && x18 )
						begin
							y38 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x19 && ~x18 && x28 )
						begin
							y23 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x19 && ~x18 && ~x28 )
						begin
							y97 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s52;
				s53 : if( x2 )
						begin
							y8 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x2 )
						nx_state = s53;
					else nx_state = s53;
				s54 : if( 1'b1 )
						begin
							y59 = 1'b1;	y60 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s54;
				s55 : if( x28 )
						begin
							y23 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x28 )
						begin
							y97 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s55;
				s56 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s56;
				s57 : if( 1'b1 )
						begin
							y19 = 1'b1;	y8 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s57;
				s58 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s58;
				s59 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s59;
				s60 : if( 1'b1 )
						begin
							y35 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s60;
				s61 : if( 1'b1 )
						begin
							y31 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s61;
				s62 : if( 1'b1 )
						begin
							y108 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s62;
				s63 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s63;
				s64 : if( 1'b1 )
						begin
							y29 = 1'b1;	y30 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s64;
				s65 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s65;
				s66 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s69;
						end
					else nx_state = s66;
				s67 : if( 1'b1 )
						begin
							y14 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s67;
				s68 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s68;
				s69 : if( x8 )
						begin
							y35 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s69;
				s70 : if( 1'b1 )
						begin
							y47 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s70;
				s71 : if( 1'b1 )
						begin
							y84 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y87 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s71;
				s72 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s72;
				s73 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s73;
				s74 : if( 1'b1 )
						begin
							y88 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s74;
				s75 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s75;
				s76 : if( 1'b1 )
						begin
							y42 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s76;
				s77 : if( 1'b1 )
						begin
							y76 = 1'b1;	y77 = 1'b1;	
							nx_state = s80;
						end
					else nx_state = s77;
				s78 : if( x8 )
						begin
							y35 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s78;
				s79 : if( x16 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x16 )
						begin
							y46 = 1'b1;	
							nx_state = s83;
						end
					else nx_state = s79;
				s80 : if( 1'b1 )
						begin
							y75 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s80;
				s81 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s85;
						end
					else nx_state = s81;
				s82 : if( x15 )
						begin
							y55 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x15 && x14 && x12 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x15 && x14 && x12 && ~x6 )
						begin
							y21 = 1'b1;	y61 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x15 && x14 && ~x12 )
						begin
							y22 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x15 && ~x14 )
						begin
							y47 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s82;
				s83 : if( 1'b1 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s82;
						end
					else nx_state = s83;
				s84 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s88;
						end
					else nx_state = s84;
				s85 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s89;
						end
					else nx_state = s85;
				s86 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s90;
						end
					else nx_state = s86;
				s87 : if( 1'b1 )
						begin
							y59 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s87;
				s88 : if( 1'b1 )
						begin
							y80 = 1'b1;	y81 = 1'b1;	
							nx_state = s91;
						end
					else nx_state = s88;
				s89 : if( x8 )
						begin
							y35 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s89;
				s90 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s93;
						end
					else nx_state = s90;
				s91 : if( 1'b1 )
						begin
							y82 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s91;
				s92 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s92;
				s93 : if( 1'b1 )
						begin
							y49 = 1'b1;	y48 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s93;
				s94 : if( 1'b1 )
						begin
							y76 = 1'b1;	y77 = 1'b1;	
							nx_state = s97;
						end
					else nx_state = s94;
				s95 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s98;
						end
					else nx_state = s95;
				s96 : if( x14 && x12 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s53;
						end
					else if( x14 && x12 && ~x6 )
						begin
							y21 = 1'b1;	y61 = 1'b1;	
							nx_state = s14;
						end
					else if( x14 && ~x12 )
						begin
							y22 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x14 )
						begin
							y47 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s96;
				s97 : if( 1'b1 )
						begin
							y75 = 1'b1;	
							nx_state = s99;
						end
					else nx_state = s97;
				s98 : if( x8 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s63;
						end
					else nx_state = s98;
				s99 : if( 1'b1 )
						begin
							y78 = 1'b1;	
							nx_state = s101;
						end
					else nx_state = s99;
				s100 : if( 1'b1 )
						begin
							y35 = 1'b1;	
							nx_state = s102;
						end
					else nx_state = s100;
				s101 : if( 1'b1 )
						begin
							y79 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s101;
				s102 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s102;
				s103 : if( 1'b1 )
						begin
							y76 = 1'b1;	y77 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s103;
				s104 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else nx_state = s104;
				s105 : if( 1'b1 )
						begin
							y75 = 1'b1;	
							nx_state = s107;
						end
					else nx_state = s105;
				s106 : if( 1'b1 )
						begin
							y38 = 1'b1;	
							nx_state = s108;
						end
					else nx_state = s106;
				s107 : if( 1'b1 )
						begin
							y74 = 1'b1;	
							nx_state = s109;
						end
					else nx_state = s107;
				s108 : if( 1'b1 )
						begin
							y35 = 1'b1;	
							nx_state = s110;
						end
					else nx_state = s108;
				s109 : if( 1'b1 )
						begin
							y98 = 1'b1;	y95 = 1'b1;	
							nx_state = s111;
						end
					else nx_state = s109;
				s110 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s112;
						end
					else nx_state = s110;
				s111 : if( 1'b1 )
						begin
							y104 = 1'b1;	y107 = 1'b1;	
							nx_state = s113;
						end
					else nx_state = s111;
				s112 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s114;
						end
					else nx_state = s112;
				s113 : if( 1'b1 )
						begin
							y106 = 1'b1;	
							nx_state = s115;
						end
					else nx_state = s113;
				s114 : if( 1'b1 )
						begin
							y39 = 1'b1;	y40 = 1'b1;	y14 = 1'b1;	
							nx_state = s116;
						end
					else nx_state = s114;
				s115 : if( x24 && x26 )
						begin
							y102 = 1'b1;	
							nx_state = s117;
						end
					else if( x24 && ~x26 )
						begin
							y99 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x24 && x25 )
						begin
							y100 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x24 && ~x25 )
						begin
							y101 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s115;
				s116 : if( 1'b1 )
						begin
							y21 = 1'b1;	
							nx_state = s118;
						end
					else nx_state = s116;
				s117 : if( x27 )
						begin
							y73 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x27 )
						begin
							y103 = 1'b1;	
							nx_state = s120;
						end
					else nx_state = s117;
				s118 : if( x9 )
						begin
							y23 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x9 )
						begin
							y35 = 1'b1;	
							nx_state = s122;
						end
					else nx_state = s118;
				s119 : if( 1'b1 )
						begin
							y72 = 1'b1;	
							nx_state = s123;
						end
					else nx_state = s119;
				s120 : if( 1'b1 )
						begin
							y97 = 1'b1;	
							nx_state = s111;
						end
					else nx_state = s120;
				s121 : if( 1'b1 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	y5 = 1'b1;	
							nx_state = s124;
						end
					else nx_state = s121;
				s122 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s125;
						end
					else nx_state = s122;
				s123 : if( 1'b1 )
						begin
							y35 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s126;
						end
					else nx_state = s123;
				s124 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s127;
						end
					else nx_state = s124;
				s125 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s125;
				s126 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s129;
						end
					else nx_state = s126;
				s127 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s130;
						end
					else nx_state = s127;
				s128 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s131;
						end
					else nx_state = s128;
				s129 : if( 1'b1 )
						begin
							y70 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s129;
				s130 : if( x10 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x5 )
						begin
							y35 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x10 )
						begin
							y23 = 1'b1;	
							nx_state = s121;
						end
					else nx_state = s130;
				s131 : if( 1'b1 )
						begin
							y49 = 1'b1;	
							nx_state = s133;
						end
					else nx_state = s131;
				s132 : if( x22 && x20 )
						begin
							y33 = 1'b1;	
							nx_state = s134;
						end
					else if( x22 && ~x20 )
						begin
							y65 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x22 )
						begin
							y71 = 1'b1;	
							nx_state = s119;
						end
					else nx_state = s132;
				s133 : if( 1'b1 )
						begin
							y47 = 1'b1;	
							nx_state = s135;
						end
					else nx_state = s133;
				s134 : if( x13 && x7 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s136;
						end
					else if( x13 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x13 )
						begin
							y34 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s134;
				s135 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s137;
						end
					else nx_state = s135;
				s136 : if( x2 )
						begin
							y8 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x2 )
						nx_state = s136;
					else nx_state = s136;
				s137 : if( 1'b1 )
						begin
							y42 = 1'b1;	
							nx_state = s139;
						end
					else nx_state = s137;
				s138 : if( 1'b1 )
						begin
							y19 = 1'b1;	y8 = 1'b1;	
							nx_state = s140;
						end
					else nx_state = s138;
				s139 : if( x16 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x16 )
						begin
							y46 = 1'b1;	
							nx_state = s142;
						end
					else nx_state = s139;
				s140 : if( 1'b1 )
						begin
							y35 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s140;
				s141 : if( x14 )
						begin
							y41 = 1'b1;	y14 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x14 && x15 && x10 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x14 && x15 && x10 && ~x5 )
						begin
							y35 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x14 && x15 && ~x10 )
						begin
							y35 = 1'b1;	
							nx_state = s122;
						end
					else if( ~x14 && ~x15 )
						begin
							y47 = 1'b1;	
							nx_state = s135;
						end
					else nx_state = s141;
				s142 : if( 1'b1 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s141;
						end
					else nx_state = s142;
				s143 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s145;
						end
					else nx_state = s143;
				s144 : if( 1'b1 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	y5 = 1'b1;	
							nx_state = s146;
						end
					else nx_state = s144;
				s145 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s147;
						end
					else nx_state = s145;
				s146 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s148;
						end
					else nx_state = s146;
				s147 : if( x8 )
						begin
							y35 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s147;
				s148 : if( 1'b1 )
						begin
							y48 = 1'b1;	y22 = 1'b1;	
							nx_state = s150;
						end
					else nx_state = s148;
				s149 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s151;
						end
					else nx_state = s149;
				s150 : if( x15 && x10 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s1;
						end
					else if( x15 && x10 && ~x5 )
						begin
							y35 = 1'b1;	
							nx_state = s102;
						end
					else if( x15 && ~x10 )
						begin
							y35 = 1'b1;	
							nx_state = s122;
						end
					else if( ~x15 )
						begin
							y47 = 1'b1;	
							nx_state = s135;
						end
					else nx_state = s150;
				s151 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s152;
						end
					else nx_state = s151;
				s152 : if( x8 )
						begin
							y35 = 1'b1;	
							nx_state = s153;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s152;
				s153 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s154;
						end
					else nx_state = s153;
				s154 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s155;
						end
					else nx_state = s154;
				s155 : if( x8 )
						begin
							y35 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s155;
				s156 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s157;
						end
					else nx_state = s156;
				s157 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s158;
						end
					else nx_state = s157;
				s158 : if( x8 )
						begin
							y17 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x8 )
						begin
							y35 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s158;
				s159 : if( 1'b1 )
						begin
							y32 = 1'b1;	
							nx_state = s160;
						end
					else nx_state = s159;
				s160 : if( 1'b1 )
						begin
							y66 = 1'b1;	
							nx_state = s161;
						end
					else nx_state = s160;
				s161 : if( 1'b1 )
						begin
							y64 = 1'b1;	
							nx_state = s162;
						end
					else nx_state = s161;
				s162 : if( 1'b1 )
						begin
							y35 = 1'b1;	
							nx_state = s163;
						end
					else nx_state = s162;
				s163 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s164;
						end
					else nx_state = s163;
				s164 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s165;
						end
					else nx_state = s164;
				s165 : if( 1'b1 )
						begin
							y38 = 1'b1;	
							nx_state = s166;
						end
					else nx_state = s165;
				s166 : if( 1'b1 )
						begin
							y35 = 1'b1;	
							nx_state = s167;
						end
					else nx_state = s166;
				s167 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s168;
						end
					else nx_state = s167;
				s168 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s169;
						end
					else nx_state = s168;
				s169 : if( 1'b1 )
						begin
							y39 = 1'b1;	y40 = 1'b1;	y14 = 1'b1;	
							nx_state = s170;
						end
					else nx_state = s169;
				s170 : if( 1'b1 )
						begin
							y21 = 1'b1;	
							nx_state = s171;
						end
					else nx_state = s170;
				s171 : if( x9 )
						begin
							y23 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x9 )
						begin
							y35 = 1'b1;	
							nx_state = s173;
						end
					else nx_state = s171;
				s172 : if( 1'b1 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	y5 = 1'b1;	
							nx_state = s174;
						end
					else nx_state = s172;
				s173 : if( 1'b1 )
						begin
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s175;
						end
					else nx_state = s173;
				s174 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s176;
						end
					else nx_state = s174;
				s175 : if( 1'b1 )
						begin
							y37 = 1'b1;	
							nx_state = s177;
						end
					else nx_state = s175;
				s176 : if( 1'b1 )
						begin
							y22 = 1'b1;	
							nx_state = s178;
						end
					else nx_state = s176;
				s177 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s179;
						end
					else nx_state = s177;
				s178 : if( x10 && x20 )
						begin
							y33 = 1'b1;	
							nx_state = s180;
						end
					else if( x10 && ~x20 )
						begin
							y65 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x10 )
						begin
							y23 = 1'b1;	
							nx_state = s172;
						end
					else nx_state = s178;
				s179 : if( 1'b1 )
						begin
							y49 = 1'b1;	
							nx_state = s181;
						end
					else nx_state = s179;
				s180 : if( x13 && x7 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s1;
						end
					else if( x13 && ~x7 )
						begin
							y16 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x13 )
						begin
							y34 = 1'b1;	
							nx_state = s160;
						end
					else nx_state = s180;
				s181 : if( 1'b1 )
						begin
							y47 = 1'b1;	
							nx_state = s182;
						end
					else nx_state = s181;
				s182 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s183;
						end
					else nx_state = s182;
				s183 : if( 1'b1 )
						begin
							y42 = 1'b1;	
							nx_state = s184;
						end
					else nx_state = s183;
				s184 : if( x16 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s185;
						end
					else if( ~x16 )
						begin
							y46 = 1'b1;	
							nx_state = s186;
						end
					else nx_state = s184;
				s185 : if( x14 )
						begin
							y41 = 1'b1;	y14 = 1'b1;	
							nx_state = s187;
						end
					else if( ~x14 && x15 && x10 && x20 )
						begin
							y33 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x14 && x15 && x10 && ~x20 )
						begin
							y65 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x14 && x15 && ~x10 )
						begin
							y35 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x14 && ~x15 )
						begin
							y47 = 1'b1;	
							nx_state = s182;
						end
					else nx_state = s185;
				s186 : if( 1'b1 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s185;
						end
					else nx_state = s186;
				s187 : if( 1'b1 )
						begin
							y50 = 1'b1;	y51 = 1'b1;	y5 = 1'b1;	
							nx_state = s188;
						end
					else nx_state = s187;
				s188 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s189;
						end
					else nx_state = s188;
				s189 : if( 1'b1 )
						begin
							y48 = 1'b1;	y22 = 1'b1;	
							nx_state = s190;
						end
					else nx_state = s189;
				s190 : if( x15 && x10 && x20 )
						begin
							y33 = 1'b1;	
							nx_state = s180;
						end
					else if( x15 && x10 && ~x20 )
						begin
							y65 = 1'b1;	
							nx_state = s162;
						end
					else if( x15 && ~x10 )
						begin
							y35 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x15 )
						begin
							y47 = 1'b1;	
							nx_state = s182;
						end
					else nx_state = s190;

			default : nx_state = 0;
		endcase
	end
endmodule
