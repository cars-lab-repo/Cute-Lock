/******** Key Information: *********** 
Key 1:   bin: '000101011111'    dec: 351
Key 2:   bin: '110001101100'    dec: 3180
Key 3:   bin: '010100110011'    dec: 1331
Key 4:   bin: '110111000111'    dec: 3527
**************************************/

module e1 (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11, clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10, keyinput11;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13;
reg[5:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19, s20=20,
	s21=21, s22=22, s23=23, s24=24;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 23) ? 0 : counter + 1;
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
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b1 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s21;
		end
		if ( counter > 5 && counter <= 11 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 && keyinput6 == 1'b1 && keyinput7 == 1'b0 && keyinput8 == 1'b1 && keyinput9 == 1'b1 && keyinput10 == 1'b0 && keyinput11 == 1'b0 )
				pr_state = nx_state;
			else
				pr_state = s3;
		end
		if ( counter > 11 && counter <= 17 ) begin 
			if ( keyinput0 == 1'b0 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b0 && keyinput6 == 1'b1 && keyinput7 == 1'b1 && keyinput8 == 1'b0 && keyinput9 == 1'b0 && keyinput10 == 1'b1 && keyinput11 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 17 && counter <= 23 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b1 && keyinput2 == 1'b0 && keyinput3 == 1'b1 && keyinput4 == 1'b1 && keyinput5 == 1'b1 && keyinput6 == 1'b0 && keyinput7 == 1'b0 && keyinput8 == 1'b0 && keyinput9 == 1'b1 && keyinput10 == 1'b1 && keyinput11 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s13;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	
		case ( pr_state )
				s1 : if( x10 && x11 && x1 && x2 && x3 && x4 )
						nx_state = s1;
					else if( x10 && x11 && x1 && x2 && x3 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x11 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x11 && x1 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && x1 && x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x10 && x1 && ~x11 && x12 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && x1 && ~x11 && ~x12 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x1 && x11 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && ~x1 && x11 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x1 && ~x11 && x12 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x1 && ~x11 && x12 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && ~x1 && ~x11 && ~x12 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x1 && ~x11 && ~x12 && ~x2 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x1 && ~x11 && ~x12 && ~x2 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s1;
				s2 : if( x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && x12 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && x12 && ~x2 )
						nx_state = s1;
					else if( x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && ~x11 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x12 && x2 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x10 && x12 && x2 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x10 && x12 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && ~x12 && ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s2;
				s3 : if( x10 && x11 )
						nx_state = s1;
					else if( x10 && ~x11 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x10 && x11 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && x11 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && ~x11 && x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && ~x11 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x1 && ~x4 )
						nx_state = s1;
					else nx_state = s3;
				s4 : if( x10 && x11 )
						nx_state = s1;
					else if( x10 && ~x11 && x12 && x4 && x1 )
						nx_state = s4;
					else if( x10 && ~x11 && x12 && x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && ~x11 && x12 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s4;
				s5 : if( x10 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && ~x11 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x11 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s5;
				s6 : if( x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && x1 && ~x2 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s6;
					else if( ~x11 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s6;
				s7 : if( x10 && x11 && x3 && x4 )
						nx_state = s7;
					else if( x10 && x11 && x3 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x11 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x11 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x11 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x11 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x11 && ~x2 )
						nx_state = s1;
					else if( ~x10 && x11 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && x11 && ~x6 && x8 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x10 && x11 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x10 && x11 && ~x6 && ~x8 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x12 && x9 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x12 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x6 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x6 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s7;
				s8 : if( x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s8;
				s9 : if( x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s9;
				s10 : if( x3 && x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s14;
						end
					else if( x3 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s10;
				s11 : if( x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && ~x11 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s22;
						end
					else nx_state = s11;
				s12 : if( x10 && x6 && x7 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && x6 && x7 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s22;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && ~x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s22;
						end
					else if( x10 && ~x6 && ~x2 )
						nx_state = s1;
					else if( ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 )
						nx_state = s1;
					else nx_state = s12;
				s13 : if( x10 && x12 )
						nx_state = s1;
					else if( x10 && ~x12 && x1 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s22;
						end
					else if( x10 && ~x12 && x1 && ~x2 )
						nx_state = s1;
					else if( x10 && ~x12 && ~x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && ~x11 && x12 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && ~x11 && x12 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else nx_state = s13;
				s14 : if( x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x10 && ~x11 && x12 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x11 && x12 && ~x8 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s14;
				s15 : if( x7 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x7 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s15;
				s16 : if( x10 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && ~x11 )
						nx_state = s16;
					else nx_state = s16;
				s17 : if( x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && ~x11 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s17;
				s18 : if( x11 && x6 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( x11 && x6 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s19;
						end
					else if( x11 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x11 && x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x11 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s18;
				s19 : if( x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s19;
				s20 : if( x10 && x1 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && x1 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && x1 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && x1 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && ~x1 && x2 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s24;
						end
					else if( x10 && ~x1 && x2 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 )
						nx_state = s20;
					else nx_state = s20;
				s21 : if( x8 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x8 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s15;
						end
					else if( x8 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s21;
				s22 : if( x10 )
						nx_state = s1;
					else if( ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && x1 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s22;
				s23 : if( x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s23;
				s24 : if( x11 )
						begin
							y13 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x11 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s24;

			default : nx_state = 0;
		endcase
	end
endmodule
