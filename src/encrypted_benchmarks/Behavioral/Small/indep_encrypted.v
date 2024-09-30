/******** Key Information: *********** 
Key 1:   bin: '101101'    dec: 45
Key 2:   bin: '100001'    dec: 33
**************************************/

module indep (keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, clk,rst,
	x1, x2, x3, x4, x5, x6, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23);

input clk, rst, x1, x2, x3, x4, x5, x6;
input keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23;
reg[3:0] counter = 0;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23;

parameter s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10,
	s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19;
integer pr_state;
integer nx_state;

always @(negedge clk or posedge rst)
begin
	if (rst == 1'b1)
		counter <= 0;
	else
		counter <= (counter >= 7) ? 0 : counter + 1;
end

always@(  negedge clk or posedge rst )
begin
	if (rst == 1'b1)
	 begin
		pr_state = s1;
	end
	else
	begin
		if ( counter <= 3 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b1 && keyinput3 == 1'b1 && keyinput4 == 1'b0 && keyinput5 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s12;
		end
		if ( counter > 3 && counter <= 7 ) begin 
			if ( keyinput0 == 1'b1 && keyinput1 == 1'b0 && keyinput2 == 1'b0 && keyinput3 == 1'b0 && keyinput4 == 1'b0 && keyinput5 == 1'b1 )
				pr_state = nx_state;
			else
				pr_state = s13;
		end
	end
end


always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6)
	begin
			y1 = 1'b0;	y2 = 1'b0;	y3 = 1'b0;	y4 = 1'b0;	
			y5 = 1'b0;	y6 = 1'b0;	y7 = 1'b0;	y8 = 1'b0;	
			y9 = 1'b0;	y10 = 1'b0;	y11 = 1'b0;	y12 = 1'b0;	
			y13 = 1'b0;	y14 = 1'b0;	y15 = 1'b0;	y16 = 1'b0;	
			y17 = 1'b0;	y18 = 1'b0;	y19 = 1'b0;	y20 = 1'b0;	
			y21 = 1'b0;	y22 = 1'b0;	y23 = 1'b0;	
		case ( pr_state )
				s1 : if( 1'b1 )
						nx_state = s2;
					else nx_state = s1;
				s2 : if( x4 )
						begin
							y7 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x4 )
						nx_state = s2;
					else nx_state = s2;
				s3 : if( x3 )
						begin
							y16 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x3 )
						begin
							y17 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s4;
				s5 : if( x4 && x5 && x6 && x2 && x1 )
						begin
							y10 = 1'b1;	y14 = 1'b1;	
							nx_state = s6;
						end
					else if( x4 && x5 && x6 && x2 && ~x1 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x4 && x5 && x6 && ~x2 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x4 && x5 && ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( x4 && ~x5 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x4 )
						begin
							y23 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s5;
				s6 : if( x4 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y10 = 1'b1;	
							y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x4 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s6;
				s7 : if( 1'b1 )
						begin
							y4 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s7;
				s8 : if( 1'b1 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s8;
				s9 : if( x4 )
						begin
							y3 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x4 )
						begin
							y14 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s9;
				s10 : if( 1'b1 )
						nx_state = s14;
					else nx_state = s10;
				s11 : if( x2 && x1 )
						begin
							y10 = 1'b1;	y14 = 1'b1;	
							nx_state = s6;
						end
					else if( x2 && ~x1 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x2 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s11;
				s12 : if( x6 && x2 && x1 )
						begin
							y10 = 1'b1;	y14 = 1'b1;	
							nx_state = s6;
						end
					else if( x6 && x2 && ~x1 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x6 && ~x2 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s12;
				s13 : if( x4 )
						nx_state = s15;
					else if( ~x4 && x6 && x2 && x1 )
						begin
							y10 = 1'b1;	y14 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x4 && x6 && x2 && ~x1 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x4 && x6 && ~x2 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x4 && ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s13;
				s14 : if( x4 )
						nx_state = s1;
					else if( ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						nx_state = s17;
					else nx_state = s15;
				s16 : if( x4 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s16;
				s17 : if( x4 )
						nx_state = s18;
					else if( ~x4 )
						nx_state = s17;
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y23 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s18;
				s19 : if( x4 && x6 && x2 && x1 )
						begin
							y10 = 1'b1;	y14 = 1'b1;	
							nx_state = s6;
						end
					else if( x4 && x6 && x2 && ~x1 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x4 && x6 && ~x2 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y11 = 1'b1;	
							y12 = 1'b1;	y13 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s7;
						end
					else if( x4 && ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x4 )
						begin
							y23 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s19;

			default : nx_state = 0;
		endcase
	end
endmodule
