/******** Key Information: *********** 
Key 1:   bin: '1100110100000101101111110000111110111001111'    dec: 7044517625295
Key 2:   bin: '0101101110101010001011101100011110010010011'    dec: 3149577731219
Key 3:   bin: '1011100110000101111100000100011111100111111'    dec: 6374528532287
Key 4:   bin: '1010110000111001011001111100000001000110100'    dec: 5917579805236
Key 5:   bin: '1110110001111100110101111110011001101001011'    dec: 8125654446923
Key 6:   bin: '0100111011000010010011101010001000001011010'    dec: 2706139058266
Key 7:   bin: '0011001001000010110110000010011100010100011'    dec: 1726958614691
Key 8:   bin: '1101100010111111100111100100011001111001010'    dec: 7447422055370
Key 9:   bin: '0111010110101100111011011000000100000000001'    dec: 4043299358721
Key 10:   bin: '1001111100010010100011001010010000100110011'    dec: 5465688056115
Key 11:   bin: '1000111011000101000001110011101110000010111'    dec: 4905527532567
Key 12:   bin: '0100100001100001001110111010110001101111101'    dec: 2486951568253
Key 13:   bin: '1101001000010011011110010001000000101101000'    dec: 7218158666088
Key 14:   bin: '1100000110000000001000010100011001010110011'    dec: 6648626819763
**************************************/

module e2 (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, keyinput40, keyinput41, keyinput42;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18;
reg[10:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 601) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 42 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s10;
		end
		if ( counter > 42 && counter <= 85 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s18;
		end
		if ( counter > 85 && counter <= 128 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s16;
		end
		if ( counter > 128 && counter <= 171 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s11;
		end
		if ( counter > 171 && counter <= 214 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b1 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s8;
		end
		if ( counter > 214 && counter <= 257 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 257 && counter <= 300 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s4;
		end
		if ( counter > 300 && counter <= 343 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b0 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b1 && keyinput36 == 1'b1 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s7;
		end
		if ( counter > 343 && counter <= 386 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b1 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b1 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b0 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s2;
		end
		if ( counter > 386 && counter <= 429 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b0 && keyinput16 == 1'b1 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b1 && keyinput21 == 1'b1 && keyinput22 == 1'b0 && keyinput23 == 1'b0 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s17;
		end
		if ( counter > 429 && counter <= 472 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b1 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b0 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b1 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b1 && keyinput28 == 1'b1 && keyinput29 == 1'b0 && keyinput30 == 1'b1 && keyinput31 == 1'b1 && keyinput32 == 1'b1 && keyinput33 == 1'b0 && keyinput34 == 1'b0 && keyinput35 == 1'b0 && keyinput36 == 1'b0 && keyinput37 == 1'b0 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b1 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s5;
		end
		if ( counter > 472 && counter <= 515 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b1 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b1 && keyinput23 == 1'b1 && keyinput24 == 1'b1 && keyinput25 == 1'b0 && keyinput26 == 1'b1 && keyinput27 == 1'b0 && keyinput28 == 1'b1 && keyinput29 == 1'b1 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b1 && keyinput40 == 1'b1 && keyinput41 == 1'b0 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s13;
		end
		if ( counter > 515 && counter <= 558 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b1 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b1 && keyinput15 == 1'b1 && keyinput16 == 1'b0 && keyinput17 == 1'b1 && keyinput18 == 1'b1 && keyinput19 == 1'b1 && keyinput20 == 1'b1 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b0 && keyinput26 == 1'b0 && keyinput27 == 1'b1 && keyinput28 == 1'b0 && keyinput29 == 1'b0 && keyinput30 == 1'b0 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b0 && keyinput34 == 1'b1 && keyinput35 == 1'b0 && keyinput36 == 1'b1 && keyinput37 == 1'b1 && keyinput38 == 1'b0 && keyinput39 == 1'b1 && keyinput40 == 1'b0 && keyinput41 == 1'b0 && keyinput42 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s1;
		end
		if ( counter > 558 && counter <= 601 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b0 && keyinput10 == 1'b0 && keyinput11 == 1'b0 && keyinput12 == 1'b0 && keyinput13 == 1'b0 && keyinput14 == 1'b0 && keyinput15 == 1'b0 && keyinput16 == 1'b0 && keyinput17 == 1'b0 && keyinput18 == 1'b1 && keyinput19 == 1'b0 && keyinput20 == 1'b0 && keyinput21 == 1'b0 && keyinput22 == 1'b0 && keyinput23 == 1'b1 && keyinput24 == 1'b0 && keyinput25 == 1'b1 && keyinput26 == 1'b0 && keyinput27 == 1'b0 && keyinput28 == 1'b0 && keyinput29 == 1'b1 && keyinput30 == 1'b1 && keyinput31 == 1'b0 && keyinput32 == 1'b0 && keyinput33 == 1'b1 && keyinput34 == 1'b0 && keyinput35 == 1'b1 && keyinput36 == 1'b0 && keyinput37 == 1'b1 && keyinput38 == 1'b1 && keyinput39 == 1'b0 && keyinput40 == 1'b0 && keyinput41 == 1'b1 && keyinput42 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s15;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27 or x28 or x29 or x30 or 
	x31 or x32 or x33 or x34 or x35 or x36 or x37 or x38 or x39 or x40 or x41 or x42 or x43)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	
		case ( pr_state )
				s1 : if( x10 && x39 && x36 && x35 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x39 && x36 && ~x35 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x39 && ~x36 && x43 && x42 && x40 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x39 && ~x36 && x43 && x42 && ~x40 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x39 && ~x36 && x43 && ~x42 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x39 && ~x36 && ~x43 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x39 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && x11 && x34 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x11 && ~x34 && x32 && ~x7 && x22 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && ~x34 && x32 && ~x7 && x22 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x34 && x32 && ~x7 && ~x22 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && ~x34 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s1;
				s2 : if( x29 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( x29 && ~x41 )
						nx_state = s2;
					else if( ~x29 && x14 )
						nx_state = s1;
					else if( ~x29 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s2;
				s3 : if( x16 && x22 && x27 && x29 && x15 )
						begin
							y1 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s14;
						end
					else if( x16 && x22 && x27 && x29 && ~x15 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x16 && x22 && x27 && ~x29 && x33 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x16 && x22 && x27 && ~x29 && ~x33 && x18 )
						begin
							y5 = 1'b1;	
							nx_state = s9;
						end
					else if( x16 && x22 && x27 && ~x29 && ~x33 && ~x18 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x16 && x22 && ~x27 )
						nx_state = s3;
					else if( x16 && ~x22 )
						nx_state = s1;
					else if( ~x16 && x37 && x21 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x16 && x37 && x21 && ~x1 )
						nx_state = s3;
					else if( ~x16 && x37 && ~x21 )
						nx_state = s1;
					else if( ~x16 && ~x37 && x25 )
						nx_state = s1;
					else if( ~x16 && ~x37 && ~x25 && x4 && x5 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x16 && ~x37 && ~x25 && x4 && ~x5 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x16 && ~x37 && ~x25 && ~x4 )
						nx_state = s3;
					else nx_state = s3;
				s4 : if( x3 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x3 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x3 && ~x2 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x3 && ~x2 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s4;
				s5 : if( x31 && x19 && x10 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else if( x31 && x19 && ~x10 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x31 && ~x19 )
						nx_state = s5;
					else if( ~x31 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s5;
				s6 : if( x26 && x42 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( x26 && ~x42 && x15 && x40 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( x26 && ~x42 && x15 && ~x40 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x26 && ~x42 && ~x15 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( x26 && ~x42 && ~x15 && ~x34 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x26 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s6;
				s7 : if( x35 )
						nx_state = s1;
					else if( ~x35 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x35 && ~x13 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s7;
				s8 : if( x8 && x26 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( x8 && ~x26 && x37 )
						nx_state = s1;
					else if( x8 && ~x26 && ~x37 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x8 && x40 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x8 && ~x40 && x37 )
						nx_state = s1;
					else if( ~x8 && ~x40 && ~x37 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s8;
				s9 : if( x17 && x19 && x10 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else if( x17 && x19 && ~x10 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	
							nx_state = s18;
						end
					else if( x17 && ~x19 )
						nx_state = s9;
					else if( ~x17 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x17 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s9;
				s10 : if( x40 && x24 && x5 && x36 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( x40 && x24 && x5 && ~x36 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x40 && x24 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x40 && ~x24 && x31 && x29 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x40 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x40 && ~x24 && ~x31 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x40 && x11 && x35 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x40 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x40 && x11 && ~x35 && x14 )
						nx_state = s1;
					else if( ~x40 && x11 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x40 && ~x11 && x30 && x35 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x40 && ~x11 && x30 && ~x35 && x14 )
						nx_state = s1;
					else if( ~x40 && ~x11 && x30 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x40 && ~x11 && ~x30 && x3 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x40 && ~x11 && ~x30 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x40 && ~x11 && ~x30 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s10;
				s11 : if( x13 && x23 && x42 && x40 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( x13 && x23 && x42 && ~x40 )
						begin
							y6 = 1'b1;	
							nx_state = s5;
						end
					else if( x13 && x23 && ~x42 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( x13 && ~x23 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x13 && x28 && x35 && x5 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && x28 && ~x35 && x14 )
						nx_state = s1;
					else if( ~x13 && x28 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && ~x28 && x6 && x35 )
						begin
							y1 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x13 && ~x28 && x6 && ~x35 && x14 )
						nx_state = s1;
					else if( ~x13 && ~x28 && x6 && ~x35 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && ~x28 && ~x6 && x39 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && ~x28 && ~x6 && x39 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s11;
				s12 : if( x17 )
						begin
							y8 = 1'b1;	y17 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x17 && x18 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x17 && ~x18 )
						nx_state = s12;
					else nx_state = s12;
				s13 : if( x37 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x37 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x37 && ~x9 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s13;
				s14 : if( x41 )
						begin
							y10 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x41 )
						nx_state = s14;
					else nx_state = s14;
				s15 : if( x37 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( x37 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x37 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s15;
				s16 : if( x43 && x3 && x23 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x43 && x3 && ~x23 )
						nx_state = s16;
					else if( x43 && ~x3 )
						nx_state = s1;
					else if( ~x43 && x2 && x23 )
						begin
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x43 && x2 && ~x23 )
						nx_state = s16;
					else if( ~x43 && ~x2 )
						nx_state = s1;
					else nx_state = s16;
				s17 : if( x28 && x18 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( x28 && ~x18 )
						nx_state = s17;
					else if( ~x28 && x27 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x28 && x27 && ~x8 && x37 )
						nx_state = s1;
					else if( ~x28 && x27 && ~x8 && ~x37 )
						begin
							y14 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x28 && ~x27 && x41 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x28 && ~x27 && ~x41 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s17;
				s18 : if( x38 )
						begin
							y13 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x38 && x41 )
						begin
							y2 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x38 && ~x41 )
						begin
							y9 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s18;

			default : nx_state = 0;
		endcase
	end
endmodule
