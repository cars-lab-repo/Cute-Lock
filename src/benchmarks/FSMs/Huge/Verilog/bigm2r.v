module bigm2r ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61, x62, x63, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61, x62, x63;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54;

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
	s171=171, s172=172, s173=173, s174=174;
integer pr_state;
integer nx_state;

always@ ( posedge rst or negedge clk )
begin
	if ( rst == 1'b1 )
		pr_state = s1;
	else
		pr_state = nx_state;
end

always@ ( pr_state or x1 or x2 or x3 or x4 or x5 or x6 or x7 or x8 or x9 or x10 or x11 or x12 or x13 or x14 or x15 or 
	x16 or x17 or x18 or x19 or x20 or x21 or x22 or x23 or x24 or x25 or x26 or x27 or x28 or x29 or x30 or 
	x31 or x32 or x33 or x34 or x35 or x36 or x37 or x38 or x39 or x40 or x41 or x42 or x43 or x44 or x45 or 
	x46 or x47 or x48 or x49 or x50 or x51 or x52 or x53 or x54 or x55 or x56 or x57 or x58 or x59 or x60 or 
	x61 or x62 or x63)
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
			y53 = 1'b0;	y54 = 1'b0;	
		case ( pr_state )
				s1 : if( x63 && x62 && x16 && x15 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x63 && x62 && x16 && x15 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && x62 && x16 && x15 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && x62 && x16 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && ~x16 && x15 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && ~x16 && x15 && ~x1 )
						nx_state = s1;
					else if( x63 && x62 && ~x16 && ~x15 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x62 && ~x16 && ~x15 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x62 && x10 && x11 && x43 && x13 && x32 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && ~x62 && x10 && x11 && x43 && x13 && x32 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x10 && x11 && x43 && x13 && x32 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x10 && x11 && x43 && x13 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x62 && x10 && x11 && x43 && ~x13 && x5 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x62 && x10 && x11 && x43 && ~x13 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x10 && x11 && ~x43 && x44 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && x10 && x11 && ~x43 && ~x44 && x14 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x62 && x10 && x11 && ~x43 && ~x44 && x14 && ~x7 && x1 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && x10 && x11 && ~x43 && ~x44 && x14 && ~x7 && x1 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x10 && x11 && ~x43 && ~x44 && x14 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x62 && x10 && x11 && ~x43 && ~x44 && ~x14 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x62 && x10 && ~x11 && x12 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x62 && x10 && ~x11 && x12 && ~x8 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && x10 && ~x11 && x12 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && x13 && x45 && x32 && x36 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && x13 && x45 && x32 && ~x36 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && x13 && x45 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && x13 && ~x45 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && ~x13 && x1 && x14 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && ~x13 && x1 && x14 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && ~x13 && x1 && ~x14 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x10 && ~x11 && ~x12 && ~x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x62 && ~x10 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && x17 && x18 && x40 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x40 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x40 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x19 && x1 && x10 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x19 && x1 && ~x10 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x19 && ~x1 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x19 && ~x1 && ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && x5 && x3 )
						nx_state = s1;
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && x5 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && ~x5 && x3 )
						nx_state = s1;
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && ~x5 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && x1 && x39 && ~x4 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && x1 && x39 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && x1 && ~x39 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x19 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && ~x17 && x18 && x40 && x19 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && x5 && x3 )
						nx_state = s1;
					else if( ~x63 && x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && x5 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && ~x5 && x3 )
						nx_state = s1;
					else if( ~x63 && x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && ~x5 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && ~x17 && x18 && x40 && ~x19 && x39 && ~x4 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && ~x17 && x18 && x40 && ~x19 && x39 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x17 && x18 && x40 && ~x19 && ~x39 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && ~x17 && x18 && ~x40 && x19 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && ~x17 && x18 && ~x40 && x19 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && ~x17 && x18 && ~x40 && ~x19 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && ~x17 && ~x18 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && ~x62 && x16 && x15 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && ~x62 && x16 && x15 && ~x5 && x6 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x62 && x16 && x15 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x1 )
						nx_state = s1;
					else if( ~x63 && ~x62 && ~x16 && ~x15 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && ~x62 && ~x16 && ~x15 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s1;
				s2 : if( x63 && x62 && x16 && x15 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && x62 && x16 && ~x15 && x4 && x5 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && x62 && x16 && ~x15 && x4 && ~x5 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x62 && x16 && ~x15 && ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x62 && ~x16 && x15 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x62 && ~x16 && x15 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && x62 && ~x16 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && ~x62 && x15 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x63 && ~x62 && ~x15 && x6 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x63 && ~x62 && ~x15 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && x62 && x44 && x10 && x12 && x23 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x63 && x62 && x44 && x10 && x12 && ~x23 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && x62 && x44 && x10 && x12 && ~x23 && ~x4 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && x44 && x10 && ~x12 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x63 && x62 && x44 && ~x10 && x37 && x22 )
						begin
							y29 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x63 && x62 && x44 && ~x10 && x37 && ~x22 && x2 && x11 && x42 )
						nx_state = s2;
					else if( ~x63 && x62 && x44 && ~x10 && x37 && ~x22 && x2 && x11 && ~x42 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && x44 && ~x10 && x37 && ~x22 && x2 && x11 && ~x42 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && x62 && x44 && ~x10 && x37 && ~x22 && x2 && ~x11 && x42 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x44 && ~x10 && x37 && ~x22 && x2 && ~x11 && ~x42 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && x62 && x44 && ~x10 && x37 && ~x22 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x63 && x62 && x44 && ~x10 && ~x37 && x11 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && x44 && ~x10 && ~x37 && x11 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x44 && ~x10 && ~x37 && ~x11 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && x10 && x39 && x46 && x51 && x36 )
						nx_state = s2;
					else if( ~x63 && x62 && ~x44 && x10 && x39 && x46 && x51 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && x10 && x39 && x46 && ~x51 && x36 )
						nx_state = s2;
					else if( ~x63 && x62 && ~x44 && x10 && x39 && x46 && ~x51 && ~x36 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && ~x44 && x10 && x39 && ~x46 && x36 )
						nx_state = s2;
					else if( ~x63 && x62 && ~x44 && x10 && x39 && ~x46 && ~x36 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x63 && x62 && ~x44 && x10 && ~x39 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && x34 && x8 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && x12 && x20 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && ~x12 && x13 && x36 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && ~x12 && x13 && x36 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && ~x12 && x13 && x36 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && ~x12 && x13 && ~x36 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && ~x62 && x16 && x15 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && x5 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && ~x5 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && ~x62 && ~x16 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else nx_state = s2;
				s3 : if( x15 && x16 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x15 && x16 && ~x5 && x62 && x6 && x63 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && x16 && ~x5 && x62 && x6 && ~x63 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && x16 && ~x5 && x62 && ~x6 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x15 && x16 && ~x5 && ~x62 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && x16 && ~x5 && ~x62 && ~x37 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x15 && ~x16 && x62 && x63 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x15 && ~x16 && x62 && x63 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x15 && ~x16 && x62 && ~x63 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x15 && ~x16 && x62 && ~x63 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x15 && ~x16 && ~x62 && x37 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x15 && ~x16 && ~x62 && ~x37 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x15 && x62 && x16 && x4 && x5 && x63 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x15 && x62 && x16 && x4 && x5 && ~x63 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x15 && x62 && x16 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x15 && x62 && x16 && ~x4 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x15 && x62 && ~x16 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x15 && ~x62 && x47 && x35 && x36 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x15 && ~x62 && x47 && x35 && ~x36 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x15 && ~x62 && x47 && ~x35 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x15 && ~x62 && ~x47 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s3;
				s4 : if( x62 && x15 && x16 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && x15 && ~x16 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x62 && x15 && ~x16 && ~x12 )
						nx_state = s4;
					else if( x62 && ~x15 && x16 && x4 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x62 && ~x15 && x16 && ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && ~x15 && ~x16 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && ~x15 && ~x16 && ~x14 && x63 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && ~x15 && ~x16 && ~x14 && ~x63 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x62 && x63 && x42 && x43 && x13 && x10 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && x42 && x43 && x13 && x10 && ~x4 )
						nx_state = s4;
					else if( ~x62 && x63 && x42 && x43 && x13 && ~x10 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && x42 && x43 && x13 && ~x10 && ~x3 && x33 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && x42 && x43 && x13 && ~x10 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x62 && x63 && x42 && x43 && ~x13 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && x42 && x43 && ~x13 && ~x3 && x33 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && x42 && x43 && ~x13 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x62 && x63 && x42 && ~x43 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && x42 && ~x43 && ~x3 && x33 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && x42 && ~x43 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x62 && x63 && ~x42 && x12 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x42 && x12 && ~x3 && x33 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x42 && x12 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && x45 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && x45 && ~x3 && x33 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && x45 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x45 && x41 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x45 && ~x41 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x45 && ~x41 && ~x3 && x33 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x45 && ~x41 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x62 && x63 && ~x42 && ~x12 && ~x44 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && ~x44 && ~x3 && x33 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && ~x44 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x62 && ~x63 && x61 && x12 && x27 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && ~x63 && x61 && x12 && x27 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x61 && x12 && x27 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && x61 && x12 && ~x27 && x29 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && x61 && x12 && ~x27 && x29 && ~x1 && x9 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && ~x63 && x61 && x12 && ~x27 && x29 && ~x1 && x9 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && ~x63 && x61 && x12 && ~x27 && x29 && ~x1 && ~x9 )
						nx_state = s4;
					else if( ~x62 && ~x63 && x61 && x12 && ~x27 && ~x29 )
						nx_state = s4;
					else if( ~x62 && ~x63 && x61 && ~x12 && x29 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x62 && ~x63 && x61 && ~x12 && ~x29 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x62 && ~x63 && ~x61 && x17 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x17 && x57 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x17 && ~x57 )
						nx_state = s4;
					else nx_state = s4;
				s5 : if( x63 && x62 && x16 && x15 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x62 && x16 && x15 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && x16 && ~x15 && x4 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && x62 && x16 && ~x15 && x4 && x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && x62 && x16 && ~x15 && x4 && ~x5 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && x62 && x16 && ~x15 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x63 && x62 && x16 && ~x15 && ~x4 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x62 && x16 && ~x15 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && ~x16 && x15 && x2 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x62 && ~x16 && x15 && x2 && ~x3 && x4 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && x62 && ~x16 && x15 && x2 && ~x3 && ~x4 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x62 && ~x16 && x15 && x2 && ~x3 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && ~x16 && x15 && ~x2 )
						nx_state = s5;
					else if( x63 && x62 && ~x16 && ~x15 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && x43 && x44 && x10 && x33 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && x42 && x43 && x44 && x10 && ~x33 )
						nx_state = s5;
					else if( x63 && ~x62 && x42 && x43 && x44 && ~x10 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x44 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && x2 && x45 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && x2 && ~x45 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x41 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && x12 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && x10 && x33 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && x10 && ~x33 )
						nx_state = s5;
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x10 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x41 && x2 && x45 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x41 && x2 && ~x45 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x41 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x41 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && x18 && x17 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x4 && x40 && x31 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x4 && x40 && ~x31 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x4 && ~x40 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && x18 && ~x17 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && x17 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x11 && x16 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x11 && ~x16 && x15 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x11 && ~x16 && x15 && ~x1 )
						nx_state = s5;
					else if( ~x63 && x62 && ~x18 && x17 && ~x11 && ~x16 && ~x15 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x11 && ~x16 && ~x15 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && x1 && x39 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && x1 && ~x39 && x31 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && x1 && ~x39 && ~x31 )
						nx_state = s5;
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && x1 && x39 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && x1 && x39 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && x1 && x39 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && x1 && ~x39 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && ~x1 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && ~x1 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x62 && x16 && x15 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && x5 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && ~x5 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && x3 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && x3 && ~x2 )
						nx_state = s5;
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && x4 && ~x2 )
						nx_state = s5;
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && ~x4 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && ~x4 && ~x2 )
						nx_state = s5;
					else if( ~x63 && ~x62 && ~x16 && ~x15 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s5;
				s6 : if( x63 && x62 && x15 && x16 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && x62 && x15 && ~x16 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x5 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x63 && x62 && ~x15 && x16 && ~x4 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && x62 && ~x15 && x16 && ~x4 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x63 && x62 && ~x15 && ~x16 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && x43 && x34 && x44 && x10 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && ~x62 && x42 && x43 && x34 && x44 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x42 && x43 && x34 && x44 && ~x10 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && x43 && x34 && ~x44 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x34 && x13 && x41 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x34 && x13 && ~x41 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x34 && x13 && ~x41 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x34 && x13 && ~x41 && ~x1 && ~x38 )
						nx_state = s6;
					else if( x63 && ~x62 && x42 && x43 && ~x34 && ~x13 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x34 && ~x13 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x34 && ~x13 && ~x1 && ~x38 )
						nx_state = s6;
					else if( x63 && ~x62 && x42 && ~x43 && x10 && x44 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && x45 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && x45 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && x32 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s6;
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x10 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x10 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x10 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x10 && ~x34 && ~x1 && ~x38 )
						nx_state = s6;
					else if( x63 && ~x62 && ~x42 && x12 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x34 && ~x1 && ~x38 )
						nx_state = s6;
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && x13 && x14 && x36 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && x13 && x14 && ~x36 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && x13 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && x45 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && x45 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && x32 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s6;
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x41 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x41 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x41 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x41 && ~x34 && ~x1 && ~x38 )
						nx_state = s6;
					else if( ~x63 && x62 && x18 && x17 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && ~x18 && x17 && x7 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x7 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && x5 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && x5 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && x5 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && ~x62 && x15 && x16 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x5 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && x4 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && ~x4 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && ~x4 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s6;
				s7 : if( x63 && x62 && x15 && x16 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && x62 && x15 && ~x16 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x8 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s7;
					else if( x63 && x62 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x62 && x42 && x43 && x10 && x34 && x44 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && x42 && x43 && x10 && x34 && x44 && ~x4 )
						nx_state = s7;
					else if( x63 && ~x62 && x42 && x43 && x10 && x34 && ~x44 && x4 )
						begin
							y17 = 1'b1;	
							nx_state = s57;
						end
					else if( x63 && ~x62 && x42 && x43 && x10 && x34 && ~x44 && ~x4 )
						nx_state = s7;
					else if( x63 && ~x62 && x42 && x43 && x10 && ~x34 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && x43 && x10 && ~x34 && ~x4 )
						nx_state = s7;
					else if( x63 && ~x62 && x42 && x43 && ~x10 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && x14 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && x14 && ~x4 )
						nx_state = s7;
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x41 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && ~x62 && ~x42 && x10 && x12 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && x10 && x12 && ~x4 )
						nx_state = s7;
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && x45 && x35 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && x45 && x35 && ~x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && x45 && ~x35 )
						nx_state = s7;
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && x14 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && x14 && ~x4 )
						nx_state = s7;
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x10 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x17 && x18 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && x17 && ~x18 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && ~x17 && x19 && x18 && x39 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && x62 && ~x17 && x19 && x18 && x39 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && ~x17 && x19 && x18 && ~x39 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && x15 && ~x16 && ~x1 )
						nx_state = s7;
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && ~x17 && x19 && ~x18 && ~x35 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x17 && ~x19 && x18 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && ~x17 && ~x19 && ~x18 && x40 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && ~x17 && ~x19 && ~x18 && x40 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && x62 && ~x17 && ~x19 && ~x18 && x40 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && ~x17 && ~x19 && ~x18 && ~x40 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x15 && x16 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x8 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x8 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s7;
					else if( ~x63 && ~x62 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s7;
				s8 : if( x62 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x62 && ~x8 )
						begin
							y13 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x62 && x63 && x11 && x12 && x33 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && x11 && x12 && ~x33 )
						nx_state = s8;
					else if( ~x62 && x63 && x11 && ~x12 && x3 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x11 && ~x12 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && x11 && ~x12 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x11 && ~x12 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && ~x12 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s8;
					else if( ~x62 && x63 && x11 && ~x12 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && ~x12 && x3 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && x11 && ~x12 && x3 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && ~x12 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && ~x11 && x3 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && ~x11 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && ~x11 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x11 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s8;
					else if( ~x62 && x63 && ~x11 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && x3 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && ~x11 && x3 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && ~x63 && x61 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x62 && ~x63 && x61 && ~x9 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x61 && ~x9 && ~x3 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && ~x63 && ~x61 && x29 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x62 && ~x63 && ~x61 && x29 && ~x50 )
						nx_state = s8;
					else if( ~x62 && ~x63 && ~x61 && ~x29 && x60 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x29 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s8;
				s9 : if( x63 && x62 && x40 && x24 && x26 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && x40 && x24 && x26 && ~x7 )
						begin
							y28 = 1'b1;	
							nx_state = s63;
						end
					else if( x63 && x62 && x40 && x24 && ~x26 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && x62 && x40 && ~x24 && x28 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x62 && x40 && ~x24 && ~x28 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && x31 && x19 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && x62 && ~x40 && x31 && x19 && ~x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && x62 && ~x40 && x31 && ~x19 )
						nx_state = s9;
					else if( x63 && x62 && ~x40 && ~x31 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && ~x62 && x42 && x43 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x44 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x44 && ~x10 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x44 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x42 && x12 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x13 && x14 && x41 && x37 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x13 && x14 && x41 && x37 && ~x2 )
						nx_state = s9;
					else if( x63 && ~x62 && ~x42 && ~x12 && x13 && x14 && x41 && ~x37 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x13 && x14 && x41 && ~x37 && ~x2 )
						nx_state = s9;
					else if( x63 && ~x62 && ~x42 && ~x12 && x13 && x14 && ~x41 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x13 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x13 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && x62 && x18 && x17 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x7 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && ~x16 && ~x1 )
						nx_state = s9;
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && x17 )
						nx_state = s9;
					else if( ~x63 && x62 && ~x18 && ~x17 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && x61 && x24 && x26 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && x61 && x24 && x26 && ~x7 )
						begin
							y15 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x63 && ~x62 && x61 && x24 && ~x26 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && x61 && ~x24 && x28 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && ~x62 && x61 && ~x24 && ~x28 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && x31 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x62 && ~x61 && x31 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && ~x61 && x31 && ~x19 )
						nx_state = s9;
					else if( ~x63 && ~x62 && ~x61 && ~x31 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s9;
				s10 : if( x63 && x62 && x50 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x62 && ~x50 )
						nx_state = s10;
					else if( x63 && ~x62 && x11 && x43 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x13 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x13 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && ~x11 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x45 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x45 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x17 && x8 && x11 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && x17 && x8 && ~x11 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x17 && ~x8 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && ~x17 && x18 && x8 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && x62 && ~x17 && x18 && ~x8 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && x62 && ~x17 && ~x18 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && ~x50 )
						nx_state = s10;
					else nx_state = s10;
				s11 : if( x63 && x62 && x16 && x15 && x5 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x62 && x16 && x15 && ~x5 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( x63 && x62 && x16 && ~x15 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x63 && x62 && ~x16 && x15 && x12 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( x63 && x62 && ~x16 && x15 && ~x12 )
						nx_state = s11;
					else if( x63 && x62 && ~x16 && ~x15 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && x62 && ~x16 && ~x15 && ~x13 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( x63 && ~x62 && x42 && x43 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && x43 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && x42 && ~x43 && x13 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && x13 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x42 && ~x43 && ~x13 && ~x45 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && x12 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && x12 && ~x41 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && x14 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && x10 && x5 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && x10 && ~x5 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && x10 && ~x5 && ~x32 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && ~x2 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s11;
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && ~x2 )
						nx_state = s11;
					else if( ~x63 && x62 && x17 && x18 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x6 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && x62 && ~x17 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && ~x62 && x16 && x15 && x5 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x62 && x16 && x15 && ~x5 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && x12 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x12 )
						nx_state = s11;
					else if( ~x63 && ~x62 && ~x16 && ~x15 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && ~x62 && ~x16 && ~x15 && ~x13 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s11;
				s12 : if( x63 && x62 && x15 && x16 && x1 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && x15 && x16 && ~x1 && x5 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && x62 && x15 && x16 && ~x1 && ~x5 && x6 && x2 && x3 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && x15 && x16 && ~x1 && ~x5 && x6 && x2 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && x62 && x15 && x16 && ~x1 && ~x5 && x6 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && x62 && x15 && x16 && ~x1 && ~x5 && ~x6 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && x62 && x15 && ~x16 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x7 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x7 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && x16 && x4 && x5 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && x5 && ~x2 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && x5 && ~x2 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && x3 && x11 && x2 )
						begin
							y20 = 1'b1;	
							nx_state = s73;
						end
					else if( x63 && x62 && ~x15 && ~x16 && x3 && x11 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && x2 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x63 && x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && x3 && ~x11 && ~x4 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && x11 && x2 )
						begin
							y48 = 1'b1;	
							nx_state = s74;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && x11 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x2 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && ~x13 && x2 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && ~x12 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && ~x12 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && x6 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && x6 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x2 )
						nx_state = s12;
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x2 )
						nx_state = s12;
					else if( x63 && ~x62 && x11 && x43 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x44 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x45 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && ~x45 && x10 && x32 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && ~x45 && x10 && ~x32 && x33 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && ~x45 && x10 && ~x32 && ~x33 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && ~x45 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && ~x11 && x12 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && x37 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && x37 && ~x2 )
						nx_state = s12;
					else if( x63 && ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && ~x37 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && ~x37 && ~x2 )
						nx_state = s12;
					else if( x63 && ~x62 && ~x11 && ~x12 && x13 && x14 && ~x41 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x13 && ~x14 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x13 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && x62 && x18 && x17 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x15 && ~x16 && ~x1 )
						nx_state = s12;
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && x17 && x14 && x5 )
						nx_state = s12;
					else if( ~x63 && x62 && ~x18 && x17 && x14 && ~x5 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x14 && x5 )
						nx_state = s12;
					else if( ~x63 && x62 && ~x18 && x17 && ~x14 && ~x5 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x4 && x19 && x1 )
						nx_state = s12;
					else if( ~x63 && x62 && ~x18 && ~x17 && x4 && x19 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x4 && ~x19 )
						nx_state = s12;
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x4 && x19 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x4 && ~x19 )
						nx_state = s12;
					else if( ~x63 && ~x62 && x15 && x16 && x1 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x1 && x5 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x1 && ~x5 && x6 && x2 && x3 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x1 && ~x5 && x6 && x2 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x1 && ~x5 && x6 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x1 && ~x5 && ~x6 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x7 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && x16 && x4 && x5 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && x4 && x5 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && x3 && x11 && x2 )
						begin
							y19 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && x3 && x11 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && x2 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && x3 && ~x11 && ~x4 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && x11 && x2 )
						begin
							y20 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && x11 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x2 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && ~x13 && x2 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && ~x12 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && ~x12 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && x6 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && x6 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x2 )
						nx_state = s12;
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x2 )
						nx_state = s12;
					else nx_state = s12;
				s13 : if( x62 && x17 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x17 && ~x13 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x62 && ~x17 && x7 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x62 && ~x17 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x63 && x11 && x43 && x41 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x11 && x43 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && x11 && x43 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x11 && x43 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && x43 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && x43 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && x43 && x41 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && x11 && x43 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && x43 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x11 && x43 && ~x41 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && x43 && ~x41 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && x11 && x43 && ~x41 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && ~x43 && x13 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x13 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && ~x43 && x13 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x13 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && ~x41 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && ~x41 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && x45 && ~x41 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && ~x45 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && ~x45 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && ~x45 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x13 && ~x45 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && x12 && x41 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && ~x11 && x12 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && ~x11 && x12 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x11 && x12 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && x12 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && x12 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && x12 && x41 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && ~x11 && x12 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && x12 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && ~x11 && x12 && ~x41 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && x12 && ~x41 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x11 && x12 && ~x41 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && ~x47 && ~x1 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && ~x14 && x1 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && x10 && ~x14 && ~x1 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && ~x10 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && ~x10 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && ~x10 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x44 && ~x10 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && ~x45 && x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && ~x45 && x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && ~x45 && ~x4 && x2 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x44 && ~x45 && ~x4 && ~x2 )
						nx_state = s13;
					else if( ~x62 && ~x63 && x16 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && ~x63 && x16 && ~x6 && x8 && x19 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x62 && ~x63 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && ~x63 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x62 && ~x63 && x16 && ~x6 && ~x8 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && ~x16 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && ~x16 && ~x10 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s13;
				s14 : if( x63 && x62 && x15 && x16 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x62 && x15 && ~x16 && x2 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x62 && x15 && ~x16 && x2 && ~x3 && x4 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && x62 && x15 && ~x16 && x2 && ~x3 && ~x4 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x62 && x15 && ~x16 && x2 && ~x3 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x62 && x15 && ~x16 && ~x2 )
						nx_state = s14;
					else if( x63 && x62 && ~x15 && x16 && x4 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x62 && ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && x62 && ~x15 && x16 && ~x4 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x62 && ~x15 && x16 && ~x4 && ~x1 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x63 && x62 && ~x15 && ~x16 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x11 && x43 && x41 && x13 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && ~x62 && x11 && x43 && x41 && x13 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x11 && x43 && x41 && x13 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x11 && x43 && x41 && ~x13 && x5 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x62 && x11 && x43 && x41 && ~x13 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x11 && x43 && ~x41 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x62 && x11 && ~x43 && x44 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && x45 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && x45 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && x32 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s14;
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x44 && ~x10 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x62 && ~x11 && x41 && x12 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x11 && x41 && x12 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && x13 && x45 && x36 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && x13 && x45 && ~x36 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && x13 && ~x45 && x39 && x1 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && x13 && ~x45 && x39 && ~x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && x13 && ~x45 && ~x39 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && x45 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && x45 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && x32 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s14;
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x62 && ~x11 && ~x41 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && x62 && x44 && x30 && x16 && x6 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x63 && x62 && x44 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && x62 && x44 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x62 && x44 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x62 && x44 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x63 && x62 && x44 && x30 && x16 && ~x6 && ~x8 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && x44 && x30 && ~x16 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && x44 && x30 && ~x16 && ~x10 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && x44 && ~x30 && x5 && x9 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && x44 && ~x30 && x5 && ~x9 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && x62 && x44 && ~x30 && ~x5 && x43 && x11 )
						nx_state = s14;
					else if( ~x63 && x62 && x44 && ~x30 && ~x5 && x43 && ~x11 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x44 && ~x30 && ~x5 && ~x43 && x11 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && x62 && x44 && ~x30 && ~x5 && ~x43 && ~x11 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && x62 && ~x44 && x51 && x24 && x5 && x36 )
						nx_state = s14;
					else if( ~x63 && x62 && ~x44 && x51 && x24 && x5 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && x51 && ~x24 && x31 && x29 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && x51 && ~x24 && ~x31 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && x11 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && x11 && ~x35 && x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && x11 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && ~x11 && x52 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && ~x11 && x52 && ~x35 && x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && ~x11 && x52 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && x16 && x15 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && ~x5 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && x4 && ~x5 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && ~x4 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && x16 && ~x15 && ~x4 && ~x1 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && x3 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && x3 && ~x2 )
						nx_state = s14;
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && x4 && ~x2 )
						nx_state = s14;
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && ~x4 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && ~x62 && ~x16 && x15 && ~x3 && ~x4 && ~x2 )
						nx_state = s14;
					else if( ~x63 && ~x62 && ~x16 && ~x15 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s14;
				s15 : if( x63 && x62 && x40 && x30 && x16 && x6 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( x63 && x62 && x40 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && x62 && x40 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && x62 && x40 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && x62 && x40 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( x63 && x62 && x40 && x30 && x16 && ~x6 && ~x8 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && x40 && x30 && ~x16 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && x30 && ~x16 && ~x10 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && x40 && ~x30 && x5 && x9 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && x40 && ~x30 && x5 && ~x9 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x62 && x40 && ~x30 && ~x5 && x11 && x3 )
						nx_state = s15;
					else if( x63 && x62 && x40 && ~x30 && ~x5 && x11 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && x40 && ~x30 && ~x5 && ~x11 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && x40 && ~x30 && ~x5 && ~x11 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x62 && ~x40 && x51 && x24 && x5 && x36 )
						nx_state = s15;
					else if( x63 && x62 && ~x40 && x51 && x24 && x5 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x40 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && x51 && ~x24 && x31 && x29 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x40 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && x51 && ~x24 && ~x31 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x40 && ~x51 && x11 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x40 && ~x51 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x51 && x11 && ~x35 && x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x51 && x11 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x51 && ~x11 && x49 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x62 && ~x40 && ~x51 && ~x11 && x49 && ~x35 && x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x51 && ~x11 && x49 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x51 && ~x11 && ~x49 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x62 && ~x40 && ~x51 && ~x11 && ~x49 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x51 && ~x11 && ~x49 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && x55 && x30 && x16 && x37 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( x63 && ~x62 && x55 && x30 && x16 && ~x37 && x39 && x19 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( x63 && ~x62 && x55 && x30 && x16 && ~x37 && x39 && ~x19 && x26 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && ~x62 && x55 && x30 && x16 && ~x37 && x39 && ~x19 && x26 && ~x5 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && ~x62 && x55 && x30 && x16 && ~x37 && x39 && ~x19 && ~x26 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( x63 && ~x62 && x55 && x30 && x16 && ~x37 && ~x39 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && x55 && x30 && ~x16 && x41 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && x30 && ~x16 && ~x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && x55 && ~x30 && x36 && x9 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && x55 && ~x30 && x36 && ~x9 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x62 && x55 && ~x30 && ~x36 && x3 && x42 )
						nx_state = s15;
					else if( x63 && ~x62 && x55 && ~x30 && ~x36 && x3 && ~x42 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && x55 && ~x30 && ~x36 && ~x3 && x11 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 && x55 && ~x30 && ~x36 && ~x3 && ~x11 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && ~x62 && ~x55 && x51 && x24 && x5 && x36 )
						nx_state = s15;
					else if( x63 && ~x62 && ~x55 && x51 && x24 && x5 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && x51 && ~x24 && x31 && x29 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && x51 && ~x24 && ~x31 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && x42 && x35 && x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && x42 && x35 && ~x36 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && x42 && ~x35 && x58 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && x42 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && ~x42 && x52 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && ~x42 && x52 && ~x35 && x58 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && ~x42 && x52 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && ~x42 && ~x52 && x34 && x37 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && ~x42 && ~x52 && x34 && ~x37 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x51 && ~x42 && ~x52 && ~x34 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x18 && x17 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && x8 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && x8 && ~x4 && x40 && x31 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && x8 && ~x4 && x40 && ~x31 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && x8 && ~x4 && ~x40 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && ~x8 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && ~x8 && x15 && x16 && ~x5 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && ~x8 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && ~x8 && x15 && ~x16 && ~x1 )
						nx_state = s15;
					else if( ~x63 && x62 && x18 && x17 && ~x6 && ~x8 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && ~x8 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x6 && ~x8 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && x15 && ~x16 && ~x1 )
						nx_state = s15;
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && x9 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x19 && ~x9 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x4 && x5 && x3 )
						nx_state = s15;
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x4 && x5 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x4 && ~x5 && x3 )
						nx_state = s15;
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && x4 && ~x5 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x4 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x19 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && x17 && x12 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x12 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && x15 && ~x16 && ~x1 )
						nx_state = s15;
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x19 && ~x35 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x19 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && x30 && x16 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x62 && x61 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x62 && x61 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x62 && x61 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && ~x62 && x61 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x63 && ~x62 && x61 && x30 && x16 && ~x6 && ~x8 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && x61 && x30 && ~x16 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && x30 && ~x16 && ~x10 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && x61 && ~x30 && x5 && x9 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && x61 && ~x30 && x5 && ~x9 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x62 && x61 && ~x30 && ~x5 && x11 && x3 )
						nx_state = s15;
					else if( ~x63 && ~x62 && x61 && ~x30 && ~x5 && x11 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && ~x62 && x61 && ~x30 && ~x5 && ~x11 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && x61 && ~x30 && ~x5 && ~x11 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && ~x62 && ~x61 && x51 && x24 && x5 && x36 )
						nx_state = s15;
					else if( ~x63 && ~x62 && ~x61 && x51 && x24 && x5 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && ~x61 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && x51 && ~x24 && x31 && x29 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && ~x61 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && x51 && ~x24 && ~x31 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && x11 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && x11 && ~x35 && x60 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && x11 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && ~x11 && x52 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && ~x11 && x52 && ~x35 && x60 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && ~x11 && x52 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s15;
				s16 : if( x62 && x10 && x63 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x10 && x63 && ~x12 && x1 && x2 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x10 && x63 && ~x12 && x1 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x10 && x63 && ~x12 && ~x1 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x10 && ~x63 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x10 && ~x63 && ~x12 && x1 && x34 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x10 && ~x63 && ~x12 && x1 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x10 && ~x63 && ~x12 && ~x1 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x62 && ~x10 && x11 && x63 && x1 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( x62 && ~x10 && x11 && x63 && ~x1 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x10 && x11 && x63 && ~x1 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x10 && x11 && ~x63 && x37 )
						begin
							y52 = 1'b1;	
							nx_state = s86;
						end
					else if( x62 && ~x10 && x11 && ~x63 && ~x37 && x41 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x10 && x11 && ~x63 && ~x37 && ~x41 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x10 && ~x11 && x12 && x63 && x3 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x10 && ~x11 && x12 && x63 && ~x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && ~x10 && ~x11 && x12 && ~x63 && x41 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x10 && ~x11 && x12 && ~x63 && ~x41 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x10 && ~x11 && ~x12 && x6 && x63 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && ~x10 && ~x11 && ~x12 && x6 && ~x63 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && x63 && x46 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && x63 && ~x46 && x37 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x62 && x63 && ~x46 && ~x37 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x62 && ~x63 && x15 && x16 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x63 && x15 && x16 && ~x5 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && ~x63 && x15 && x16 && ~x5 && ~x6 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && x5 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && ~x4 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s16;
				s17 : if( x15 && x62 && x14 )
						begin
							y41 = 1'b1;	
							nx_state = s91;
						end
					else if( x15 && x62 && ~x14 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x15 && ~x62 && x63 && x45 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x15 && ~x62 && x63 && ~x45 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( x15 && ~x62 && ~x63 && x16 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x62 && ~x63 && ~x16 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x15 && ~x62 && ~x63 && ~x16 && ~x12 )
						nx_state = s17;
					else if( ~x15 && x62 && x63 && x12 )
						begin
							y41 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x15 && x62 && x63 && ~x12 )
						nx_state = s17;
					else if( ~x15 && x62 && ~x63 && x12 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x15 && x62 && ~x63 && ~x12 )
						nx_state = s17;
					else if( ~x15 && ~x62 && x63 && x43 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x15 && ~x62 && x63 && ~x43 )
						nx_state = s17;
					else if( ~x15 && ~x62 && ~x63 && x16 && x4 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && ~x62 && ~x63 && ~x16 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && ~x62 && ~x63 && ~x16 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s17;
				s18 : if( x62 && x15 && x16 && x5 && x63 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x62 && x15 && x16 && x5 && ~x63 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x15 && x16 && ~x5 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x62 && x15 && ~x16 && x13 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && x6 && x4 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && x63 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && x63 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && ~x63 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && ~x63 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && ~x6 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && ~x6 && ~x5 && x63 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && x15 && ~x16 && x13 && ~x11 && ~x6 && ~x5 && ~x63 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && x15 && ~x16 && ~x13 && x14 && x63 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x15 && ~x16 && ~x13 && x14 && ~x63 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && x9 && x63 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && x9 && ~x63 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && x63 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && x63 && ~x2 )
						nx_state = s18;
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && ~x63 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && ~x63 && ~x2 )
						nx_state = s18;
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && x63 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && x63 && ~x8 )
						nx_state = s18;
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && ~x63 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && ~x63 && ~x8 )
						nx_state = s18;
					else if( x62 && ~x15 && x16 && x4 && x5 && x63 && x2 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && x63 && ~x2 && x1 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && x63 && ~x2 && ~x1 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && ~x63 && x34 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && ~x63 && ~x34 && x1 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && ~x63 && ~x34 && ~x1 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x15 && x16 && x4 && ~x5 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x15 && x16 && ~x4 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x15 && ~x16 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x63 && x15 && x16 && x36 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x15 && x16 && ~x36 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x63 && x15 && ~x16 && x13 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x62 && x63 && x15 && ~x16 && x13 && ~x11 && x37 && x4 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && x15 && ~x16 && x13 && ~x11 && x37 && ~x4 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && x15 && ~x16 && x13 && ~x11 && x37 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x15 && ~x16 && x13 && ~x11 && ~x37 && x36 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x62 && x63 && x15 && ~x16 && x13 && ~x11 && ~x37 && ~x36 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && x63 && x15 && ~x16 && ~x13 && x45 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x15 && ~x16 && ~x13 && ~x45 && x40 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x15 && ~x16 && ~x13 && ~x45 && ~x40 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x15 && ~x16 && ~x13 && ~x45 && ~x40 && x6 && ~x2 )
						nx_state = s18;
					else if( ~x62 && x63 && x15 && ~x16 && ~x13 && ~x45 && ~x40 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x15 && ~x16 && ~x13 && ~x45 && ~x40 && ~x6 && ~x8 )
						nx_state = s18;
					else if( ~x62 && x63 && ~x15 && x47 && x35 && x5 && x33 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x15 && x47 && x35 && x5 && ~x33 && x1 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x62 && x63 && ~x15 && x47 && x35 && x5 && ~x33 && ~x1 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x62 && x63 && ~x15 && x47 && x35 && ~x5 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x15 && x47 && ~x35 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x15 && ~x47 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && ~x63 && x28 && x57 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && ~x63 && x28 && ~x57 )
						nx_state = s18;
					else if( ~x62 && ~x63 && ~x28 && x27 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && ~x63 && ~x28 && x27 && ~x8 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && ~x63 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && ~x28 && ~x27 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s18;
				s19 : if( x62 && x16 && x15 )
						begin
							y19 = 1'b1;	
							nx_state = s76;
						end
					else if( x62 && x16 && ~x15 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x16 && ~x15 && ~x2 && x63 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x62 && x16 && ~x15 && ~x2 && x63 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x16 && ~x15 && ~x2 && ~x63 && x37 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x62 && x16 && ~x15 && ~x2 && ~x63 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && ~x16 )
						begin
							y19 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x62 && x63 && x46 )
						begin
							y19 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x62 && x63 && ~x46 && x16 && x2 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x62 && x63 && ~x46 && x16 && ~x2 && x32 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && ~x46 && x16 && ~x2 && ~x32 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && ~x46 && ~x16 )
						begin
							y19 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x62 && ~x63 && x15 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x62 && ~x63 && ~x15 && x14 && x13 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x62 && ~x63 && ~x15 && x14 && ~x13 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s19;
				s20 : if( x15 && x16 && x63 && x5 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && x16 && x63 && ~x5 && x62 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && x16 && x63 && ~x5 && ~x62 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && x16 && ~x63 && x62 && x5 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && x16 && ~x63 && x62 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && x16 && ~x63 && ~x62 && x5 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && x16 && ~x63 && ~x62 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && x63 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && x63 && ~x12 )
						nx_state = s20;
					else if( x15 && ~x16 && ~x63 && x62 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x16 && ~x63 && x62 && ~x12 )
						nx_state = s20;
					else if( x15 && ~x16 && ~x63 && ~x62 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x15 && ~x16 && ~x63 && ~x62 && ~x12 )
						nx_state = s20;
					else if( ~x15 && x62 && x16 && x4 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x15 && x62 && x16 && ~x4 && x63 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x15 && x62 && x16 && ~x4 && x63 && ~x2 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x62 && x16 && ~x4 && x63 && ~x2 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x62 && x16 && ~x4 && ~x63 && x34 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x15 && x62 && x16 && ~x4 && ~x63 && ~x34 && x37 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && x62 && x16 && ~x4 && ~x63 && ~x34 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x15 && x62 && ~x16 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && ~x62 && x63 && x47 && x35 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x15 && ~x62 && x63 && x47 && ~x35 && x33 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x15 && ~x62 && x63 && x47 && ~x35 && ~x33 && x32 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x15 && ~x62 && x63 && x47 && ~x35 && ~x33 && ~x32 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x15 && ~x62 && x63 && ~x47 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && x4 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && ~x4 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && ~x4 && ~x2 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && ~x4 && ~x2 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x62 && ~x63 && ~x16 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s20;
				s21 : if( x62 && x63 && x40 && x46 && x3 && x23 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x63 && x40 && x46 && x3 && ~x23 )
						nx_state = s21;
					else if( x62 && x63 && x40 && x46 && ~x3 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x46 && x2 && x23 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x63 && x40 && ~x46 && x2 && ~x23 )
						nx_state = s21;
					else if( x62 && x63 && x40 && ~x46 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && x5 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && ~x5 && x6 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && x1 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && ~x1 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && x46 && x42 && x23 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x63 && x44 && x46 && x42 && ~x23 )
						nx_state = s21;
					else if( x62 && ~x63 && x44 && x46 && ~x42 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x46 && x34 && x23 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x63 && x44 && ~x46 && x34 && ~x23 )
						nx_state = s21;
					else if( x62 && ~x63 && x44 && ~x46 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && x5 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x5 && x6 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x36 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x46 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x62 && ~x46 && x44 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && ~x46 && x44 && ~x11 && x6 && x35 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x46 && x44 && ~x11 && x6 && ~x35 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x62 && ~x46 && x44 && ~x11 && ~x6 && x36 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && ~x46 && x44 && ~x11 && ~x6 && ~x36 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x62 && ~x46 && ~x44 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && ~x9 && x37 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && ~x9 && x37 && ~x33 )
						nx_state = s21;
					else if( ~x62 && ~x46 && ~x44 && ~x14 && ~x9 && ~x37 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && ~x9 && ~x37 && ~x8 )
						nx_state = s21;
					else nx_state = s21;
				s22 : if( x62 && x15 && x13 && x63 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && x15 && x13 && ~x63 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x62 && x15 && ~x13 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( x62 && ~x15 && x12 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( x62 && ~x15 && ~x12 )
						nx_state = s22;
					else if( ~x62 && x46 )
						begin
							y48 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x62 && ~x46 && x43 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x62 && ~x46 && ~x43 )
						nx_state = s22;
					else nx_state = s22;
				s23 : if( x62 && x19 && x63 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x62 && x19 && ~x63 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( x62 && ~x19 && x26 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && ~x19 && x26 && ~x5 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && ~x19 && ~x26 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x62 && x63 && x19 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x62 && x63 && ~x19 && x26 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x63 && ~x19 && x26 && ~x5 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && x63 && ~x19 && ~x26 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x62 && ~x63 && x8 && x1 )
						begin
							y20 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x62 && ~x63 && x8 && ~x1 && x4 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x62 && ~x63 && x8 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x62 && ~x63 && ~x8 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else nx_state = s23;
				s24 : if( x63 && x62 && x26 && x28 && x3 && x5 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( x63 && x62 && x26 && x28 && x3 && ~x5 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x62 && x26 && x28 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && x62 && x26 && ~x28 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && x62 && ~x26 && x27 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x62 && ~x26 && ~x27 && x28 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x62 && ~x26 && ~x27 && x28 && ~x5 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 && x55 && x50 && x28 && x32 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x63 && ~x62 && x55 && x50 && x28 && ~x32 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && x50 && x28 && ~x32 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 && x55 && x50 && ~x28 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && x55 && ~x50 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 && ~x55 && x13 && x23 && x51 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && x13 && x23 && ~x51 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && ~x55 && x13 && ~x23 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && x28 && x35 && x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && x28 && x35 && ~x36 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && x28 && ~x35 && x58 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && x28 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && ~x28 && x6 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && ~x28 && x6 && ~x35 && x58 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && ~x28 && x6 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x62 && x44 && x19 && x28 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x63 && x62 && x44 && x19 && x28 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && x44 && x19 && x28 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && x62 && x44 && x19 && ~x28 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x44 && ~x19 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && x62 && ~x44 && x13 && x23 && x51 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && x13 && x23 && ~x51 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && ~x44 && x13 && ~x23 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && x28 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && x28 && ~x35 && x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && x28 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && ~x28 && x6 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && ~x28 && x6 && ~x35 && x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && ~x28 && x6 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && ~x44 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x62 && x61 && x19 && x28 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x63 && ~x62 && x61 && x19 && x28 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && x19 && x28 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && ~x62 && x61 && x19 && ~x28 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && x61 && ~x19 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && ~x62 && ~x61 && x13 && x23 && x51 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && ~x61 && x13 && x23 && ~x51 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && ~x61 && x13 && ~x23 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && x28 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && x28 && ~x35 && x60 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && x28 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && ~x28 && x6 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && ~x28 && x6 && ~x35 && x60 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && ~x28 && x6 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s24;
				s25 : if( x62 && x44 && x12 && x27 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x44 && x12 && x27 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && x44 && x12 && x27 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && x44 && x12 && ~x27 && x37 && x29 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && x44 && x12 && ~x27 && x37 && ~x29 )
						nx_state = s25;
					else if( x62 && x44 && x12 && ~x27 && ~x37 )
						nx_state = s25;
					else if( x62 && x44 && ~x12 && x29 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( x62 && x44 && ~x12 && ~x29 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( x62 && ~x44 && x17 )
						begin
							y30 = 1'b1;	
							nx_state = s110;
						end
					else if( x62 && ~x44 && ~x17 && x49 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && ~x44 && ~x17 && ~x49 )
						nx_state = s25;
					else if( ~x62 && x63 && x55 && x43 && x27 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && x63 && x55 && x43 && x27 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x63 && x55 && x43 && x27 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && x55 && x43 && ~x27 && x29 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x63 && x55 && x43 && ~x27 && x29 && ~x1 )
						nx_state = s25;
					else if( ~x62 && x63 && x55 && x43 && ~x27 && ~x29 )
						nx_state = s25;
					else if( ~x62 && x63 && x55 && ~x43 && x29 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x62 && x63 && x55 && ~x43 && ~x29 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x62 && x63 && ~x55 && x48 )
						begin
							y30 = 1'b1;	
							nx_state = s110;
						end
					else if( ~x62 && x63 && ~x55 && ~x48 && x57 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && x63 && ~x55 && ~x48 && ~x57 )
						nx_state = s25;
					else if( ~x62 && ~x63 && x15 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x62 && ~x63 && x15 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x62 && ~x63 && ~x15 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x12 )
						nx_state = s25;
					else nx_state = s25;
				s26 : if( x62 && x63 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && ~x2 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && ~x63 && x33 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && ~x33 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && x33 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x33 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s26;
				s27 : if( x62 && x44 && x24 && x26 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x62 && x44 && x24 && x26 && ~x7 )
						begin
							y28 = 1'b1;	
							nx_state = s63;
						end
					else if( x62 && x44 && x24 && ~x26 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && x44 && ~x24 && x28 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( x62 && x44 && ~x24 && ~x28 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x44 && x31 && x19 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && ~x44 && x31 && x19 && ~x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && ~x44 && x31 && ~x19 )
						nx_state = s27;
					else if( x62 && ~x44 && ~x31 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && x26 && x28 && x63 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x62 && x26 && x28 && x63 && ~x37 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && x26 && x28 && x63 && ~x37 && ~x4 )
						nx_state = s1;
					else if( ~x62 && x26 && x28 && ~x63 && x6 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x62 && x26 && x28 && ~x63 && ~x6 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x62 && x26 && x28 && ~x63 && ~x6 && ~x4 )
						nx_state = s1;
					else if( ~x62 && x26 && ~x28 )
						nx_state = s1;
					else if( ~x62 && ~x26 && x63 && x27 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && ~x26 && x63 && ~x27 && x28 )
						begin
							y42 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x62 && ~x26 && x63 && ~x27 && ~x28 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && ~x26 && ~x63 && x27 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x62 && ~x26 && ~x63 && ~x27 && x28 )
						begin
							y12 = 1'b1;	
							nx_state = s120;
						end
					else if( ~x62 && ~x26 && ~x63 && ~x27 && ~x28 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else nx_state = s27;
				s28 : if( x63 && x62 && x26 && x28 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && x62 && x26 && x28 && ~x7 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x62 && x26 && ~x28 )
						nx_state = s1;
					else if( x63 && x62 && ~x26 && x27 && x25 && x9 )
						nx_state = s28;
					else if( x63 && x62 && ~x26 && x27 && x25 && ~x9 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x62 && ~x26 && x27 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x62 && ~x26 && ~x27 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && x19 && x44 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x62 && x55 && x19 && ~x44 && x32 && x18 && x12 )
						nx_state = s28;
					else if( x63 && ~x62 && x55 && x19 && ~x44 && x32 && x18 && ~x12 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && ~x62 && x55 && x19 && ~x44 && x32 && ~x18 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && x55 && x19 && ~x44 && ~x32 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && ~x19 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && x17 && x50 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && ~x62 && ~x55 && x17 && x50 && ~x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && ~x62 && ~x55 && x17 && ~x50 )
						nx_state = s28;
					else if( x63 && ~x62 && ~x55 && ~x17 && x51 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && ~x62 && ~x55 && ~x17 && ~x51 && x33 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && ~x17 && ~x51 && ~x33 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && x62 && x44 && x19 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && x62 && x44 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s28;
					else if( ~x63 && x62 && x44 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && x62 && x44 && x19 && ~x13 && x32 && ~x18 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x44 && x19 && ~x13 && ~x32 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && x44 && ~x19 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && x17 && x19 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x62 && ~x44 && x17 && x19 && ~x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && x62 && ~x44 && x17 && ~x19 )
						nx_state = s28;
					else if( ~x63 && x62 && ~x44 && ~x17 && x20 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x63 && x62 && ~x44 && ~x17 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && ~x62 && x61 && x19 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x62 && x61 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s28;
					else if( ~x63 && ~x62 && x61 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && x61 && x19 && ~x13 && x32 && ~x18 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && x61 && x19 && ~x13 && ~x32 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && ~x19 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && x17 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x62 && ~x61 && x17 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && ~x61 && x17 && ~x19 )
						nx_state = s28;
					else if( ~x63 && ~x62 && ~x61 && ~x17 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x17 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s28;
				s29 : if( x63 && x62 && x26 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && x62 && x26 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x62 && x26 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x62 && x26 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && x62 && ~x26 && x27 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && x62 && ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( x63 && x62 && ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( x63 && x62 && ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x62 && ~x26 && ~x27 && x28 && ~x2 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && x18 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && x18 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 && ~x18 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && x45 && x8 && x41 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && x45 && x8 && ~x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && x55 && x45 && ~x8 && x30 && x32 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && ~x62 && x55 && x45 && ~x8 && x30 && ~x32 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && ~x62 && x55 && x45 && ~x8 && x30 && ~x32 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && ~x62 && x55 && x45 && ~x8 && ~x30 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && ~x45 && x34 && x32 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && ~x62 && x55 && ~x45 && x34 && ~x32 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && ~x45 && ~x34 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && x47 && x54 && x29 && x59 && x27 )
						begin
							y17 = 1'b1;	
							nx_state = s122;
						end
					else if( x63 && ~x62 && ~x55 && x47 && x54 && x29 && x59 && ~x27 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && x47 && x54 && x29 && ~x59 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && x47 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && x47 && x54 && ~x29 && x33 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && x47 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && x47 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 && ~x55 && x47 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && x47 && ~x54 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x47 && x37 && x56 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && ~x47 && x37 && x56 && ~x1 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && ~x47 && x37 && ~x56 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x47 && ~x37 && x25 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x47 && ~x37 && ~x25 && x36 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( x63 && ~x62 && ~x55 && ~x47 && ~x37 && ~x25 && x36 && ~x35 )
						nx_state = s29;
					else if( x63 && ~x62 && ~x55 && ~x47 && ~x37 && ~x25 && ~x36 && x35 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && ~x47 && ~x37 && ~x25 && ~x36 && ~x35 )
						nx_state = s29;
					else if( ~x63 && x62 && x44 && x14 && x8 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && x44 && x14 && x8 && ~x10 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && x44 && x14 && ~x8 && x30 && x37 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x63 && x62 && x44 && x14 && ~x8 && x30 && ~x37 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x62 && x44 && x14 && ~x8 && x30 && ~x37 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && x62 && x44 && x14 && ~x8 && ~x30 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && x44 && ~x14 && x32 && x3 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x62 && x44 && ~x14 && x32 && ~x3 )
						nx_state = s29;
					else if( ~x63 && x62 && x44 && ~x14 && ~x32 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x62 && x44 && ~x14 && ~x32 && ~x3 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && x16 && x54 && x29 && x48 && x27 )
						begin
							y17 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x63 && x62 && ~x44 && x16 && x54 && x29 && x48 && ~x27 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && x16 && x54 && x29 && ~x48 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && x16 && x54 && x29 && ~x48 && ~x27 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && x16 && x54 && ~x29 && ~x33 && x49 && x27 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && x62 && ~x44 && x16 && x54 && ~x29 && ~x33 && x49 && ~x27 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && ~x27 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && x16 && ~x54 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x16 && x37 && x55 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && ~x16 && x37 && x55 && ~x1 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && ~x16 && x37 && ~x55 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x16 && ~x37 && x25 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && x62 && ~x44 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s29;
					else if( ~x63 && x62 && ~x44 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && ~x44 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s29;
					else if( ~x63 && ~x62 && x61 && x14 && x8 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && x14 && x8 && ~x10 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && x61 && x14 && ~x8 && x30 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x63 && ~x62 && x61 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x62 && x61 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && x61 && x14 && ~x8 && ~x30 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && ~x14 && x32 && x3 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && ~x62 && x61 && ~x14 && x32 && ~x3 )
						nx_state = s29;
					else if( ~x63 && ~x62 && x61 && ~x14 && ~x32 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && ~x14 && ~x32 && ~x3 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && x29 && x59 && x27 )
						begin
							y16 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && x29 && x59 && ~x27 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && x29 && ~x59 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x62 && ~x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && x16 && ~x54 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x16 && x37 && x56 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x16 && x37 && x56 && ~x1 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && ~x16 && x37 && ~x56 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x16 && ~x37 && x25 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s29;
					else if( ~x63 && ~x62 && ~x61 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s29;
					else nx_state = s29;
				s30 : if( x62 && x63 && x40 && x11 && x25 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x63 && x40 && x11 && x25 && ~x3 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && x40 && x11 && x25 && ~x3 && ~x5 )
						nx_state = s30;
					else if( x62 && x63 && x40 && x11 && ~x25 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x62 && x63 && x40 && ~x11 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x63 && ~x40 && x48 && x42 && x51 && x47 )
						nx_state = s30;
					else if( x62 && x63 && ~x40 && x48 && x42 && x51 && ~x47 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x63 && ~x40 && x48 && x42 && ~x51 && x47 )
						nx_state = s30;
					else if( x62 && x63 && ~x40 && x48 && x42 && ~x51 && ~x47 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && ~x40 && x48 && ~x42 && x47 )
						nx_state = s30;
					else if( x62 && x63 && ~x40 && x48 && ~x42 && ~x47 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && ~x40 && x48 && ~x42 && ~x47 && ~x34 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x63 && ~x40 && ~x48 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && ~x63 && x44 && x11 && x25 && x42 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x63 && x44 && x11 && x25 && ~x42 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && x44 && x11 && x25 && ~x42 && ~x5 )
						nx_state = s30;
					else if( x62 && ~x63 && x44 && x11 && ~x25 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x62 && ~x63 && x44 && ~x11 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x63 && ~x44 && x53 && x47 )
						nx_state = s30;
					else if( x62 && ~x63 && ~x44 && x53 && ~x47 && x48 && x51 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x63 && ~x44 && x53 && ~x47 && x48 && ~x51 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && ~x44 && x53 && ~x47 && ~x48 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && ~x44 && x53 && ~x47 && ~x48 && ~x34 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x63 && ~x44 && ~x53 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && x55 && x11 && x25 && x34 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && x55 && x11 && x25 && ~x34 && x36 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x55 && x11 && x25 && ~x34 && ~x36 )
						nx_state = s30;
					else if( ~x62 && x55 && x11 && ~x25 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && x55 && ~x11 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x55 && x53 && x47 )
						nx_state = s30;
					else if( ~x62 && ~x55 && x53 && ~x47 && x59 && x51 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x55 && x53 && ~x47 && x59 && ~x51 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x55 && x53 && ~x47 && ~x59 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x55 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x55 && ~x53 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s30;
				s31 : if( x62 && x44 && x35 && x36 && x7 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x62 && x44 && x35 && x36 && ~x7 )
						nx_state = s31;
					else if( x62 && x44 && x35 && ~x36 && x7 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && x44 && x35 && ~x36 && ~x7 )
						nx_state = s31;
					else if( x62 && x44 && ~x35 && x37 )
						nx_state = s31;
					else if( x62 && x44 && ~x35 && ~x37 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && x44 && ~x35 && ~x37 && ~x7 )
						nx_state = s31;
					else if( x62 && ~x44 && x43 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x44 && ~x43 && x2 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( x62 && ~x44 && ~x43 && ~x2 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x44 && ~x43 && ~x2 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && x55 && x35 && x7 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x62 && x63 && x55 && x35 && x7 && ~x1 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && x55 && x35 && ~x7 )
						nx_state = s31;
					else if( ~x62 && x63 && x55 && ~x35 && x38 && x32 )
						nx_state = s31;
					else if( ~x62 && x63 && x55 && ~x35 && x38 && ~x32 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && x63 && x55 && ~x35 && ~x38 )
						nx_state = s31;
					else if( ~x62 && x63 && ~x55 && x34 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && x63 && ~x55 && ~x34 && x2 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x62 && x63 && ~x55 && ~x34 && ~x2 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && x63 && ~x55 && ~x34 && ~x2 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x15 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x62 && ~x63 && x15 && ~x13 )
						begin
							y15 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x62 && ~x63 && ~x15 && x12 )
						begin
							y15 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x12 )
						nx_state = s31;
					else nx_state = s31;
				s32 : if( x63 && x62 && x40 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && x40 && ~x5 && x34 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && x62 && x40 && ~x5 && ~x34 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && x62 && ~x40 && x35 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x35 && x13 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x62 && ~x40 && ~x35 && ~x13 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && ~x62 && x28 && x7 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x63 && ~x62 && x28 && ~x7 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && ~x62 && ~x28 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x63 && x62 && x44 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x44 && ~x5 && x34 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x62 && x44 && ~x5 && ~x34 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x63 && x62 && ~x44 && x35 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x35 && x13 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x63 && x62 && ~x44 && ~x35 && ~x13 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x62 && x61 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && x61 && ~x5 && x34 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x62 && x61 && ~x5 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x63 && ~x62 && ~x61 && x35 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x35 && x13 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x35 && ~x13 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s32;
				s33 : if( x62 && x63 && x40 && x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && x63 && x40 && ~x10 && x25 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x25 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x62 && x63 && ~x40 && x8 && x48 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && ~x40 && x8 && ~x48 && x37 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && ~x40 && x8 && ~x48 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && ~x40 && ~x8 && x51 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && ~x40 && ~x8 && ~x51 && x37 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && ~x40 && ~x8 && ~x51 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && x44 && x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && ~x63 && x44 && ~x10 && x25 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x62 && ~x63 && x44 && ~x10 && ~x25 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( x62 && ~x63 && ~x44 && x8 && x53 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && ~x44 && x8 && ~x53 && x36 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && ~x44 && x8 && ~x53 && ~x36 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && ~x44 && ~x8 && x51 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && ~x44 && ~x8 && ~x51 && x36 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && ~x44 && ~x8 && ~x51 && ~x36 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x62 && x55 && x41 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && x55 && ~x41 && x25 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x62 && x55 && ~x41 && ~x25 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x62 && ~x55 && x39 && x53 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && ~x55 && x39 && ~x53 && x37 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && ~x55 && x39 && ~x53 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && ~x55 && ~x39 && x51 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && ~x55 && ~x39 && ~x51 && x37 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && ~x55 && ~x39 && ~x51 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else nx_state = s33;
				s34 : if( x62 && x28 && x7 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x62 && x28 && ~x7 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( x62 && ~x28 && x63 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x62 && ~x28 && ~x63 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x55 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && x63 && x55 && ~x5 && x34 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x63 && x55 && ~x5 && ~x34 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && x63 && ~x55 && x35 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x63 && ~x55 && ~x35 && x44 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x62 && x63 && ~x55 && ~x35 && ~x44 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x62 && ~x63 && x16 && x15 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && ~x63 && x16 && x15 && ~x5 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && x5 && x2 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && x5 && ~x2 && x1 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && x5 && ~x2 && ~x1 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && ~x5 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && ~x4 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x13 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x13 && ~x11 && x6 && x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s34;
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s34;
					else if( ~x62 && ~x63 && ~x16 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s34;
				s35 : if( x15 && x62 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x62 && x63 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x62 && ~x63 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && x62 && x16 && x63 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x62 && x16 && x63 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && x62 && x16 && ~x63 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x15 && x62 && x16 && ~x63 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x15 && x62 && ~x16 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && ~x62 && x63 && x47 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x15 && ~x62 && x63 && x47 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x15 && ~x62 && x63 && ~x47 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && ~x2 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && ~x2 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && ~x62 && ~x63 && ~x16 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s35;
				s36 : if( x62 && x15 && x16 && x5 && x1 && x63 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && x15 && x16 && x5 && x1 && ~x63 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x62 && x15 && x16 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && x15 && x16 && x5 && ~x1 && x2 && x3 && ~x4 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && x16 && x5 && ~x1 && x2 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && x16 && x5 && ~x1 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && x16 && ~x5 && x6 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && x63 && x1 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && x63 && ~x1 && x2 && x3 && x4 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && x63 && ~x1 && x2 && x3 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && x63 && ~x1 && x2 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && x63 && ~x1 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && ~x63 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && ~x63 && ~x37 && x34 && x3 && x4 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && ~x63 && ~x37 && x34 && x3 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && ~x63 && ~x37 && x34 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && x16 && ~x5 && ~x6 && ~x63 && ~x37 && ~x34 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x15 && ~x16 && x63 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x62 && x15 && ~x16 && x63 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x62 && x15 && ~x16 && ~x63 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x62 && x15 && ~x16 && ~x63 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x62 && ~x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x62 && ~x15 && ~x16 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x46 && x16 && x36 && x1 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x62 && x46 && x16 && x36 && ~x1 && x2 && x3 && x35 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x62 && x46 && x16 && x36 && ~x1 && x2 && x3 && ~x35 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x46 && x16 && x36 && ~x1 && x2 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x46 && x16 && x36 && ~x1 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x46 && x16 && ~x36 && x6 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x46 && x16 && ~x36 && ~x6 && x32 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x62 && x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && x34 && x4 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x62 && x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && x34 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && ~x34 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x46 && x16 && ~x36 && ~x6 && ~x32 && ~x33 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x46 && ~x16 && x37 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x62 && x46 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x62 && ~x46 && x47 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && ~x46 && ~x47 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s36;
				s37 : if( x63 && x62 && x40 && x48 && x42 && x51 && x47 )
						nx_state = s37;
					else if( x63 && x62 && x40 && x48 && x42 && x51 && ~x47 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x62 && x40 && x48 && x42 && ~x51 && x47 )
						nx_state = s37;
					else if( x63 && x62 && x40 && x48 && x42 && ~x51 && ~x47 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x63 && x62 && x40 && x48 && ~x42 && x47 )
						nx_state = s37;
					else if( x63 && x62 && x40 && x48 && ~x42 && ~x47 && x34 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x63 && x62 && x40 && x48 && ~x42 && ~x47 && ~x34 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x62 && x40 && ~x48 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x62 && ~x40 && x11 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x62 && ~x40 && ~x11 && x1 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x62 && ~x40 && ~x11 && x1 && ~x2 && x3 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x63 && x62 && ~x40 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s37;
					else if( x63 && x62 && ~x40 && ~x11 && ~x1 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x63 && ~x62 && x46 && x47 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x46 && x47 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x46 && ~x47 && x34 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && ~x62 && x46 && ~x47 && x34 && ~x2 )
						nx_state = s37;
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && x4 && x2 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && x4 && ~x2 )
						nx_state = s37;
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && x32 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && x32 && ~x2 )
						nx_state = s37;
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && ~x2 )
						nx_state = s37;
					else if( x63 && ~x62 && ~x46 && x16 && x35 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && ~x62 && ~x46 && x16 && x35 && x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x46 && x16 && x35 && ~x5 && x32 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && ~x62 && ~x46 && x16 && x35 && ~x5 && ~x32 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x46 && x16 && ~x35 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x46 && x16 && ~x35 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x46 && ~x16 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x62 && x16 && x15 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x16 && x15 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && ~x5 && x37 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && ~x5 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x16 && ~x15 && ~x4 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x16 && ~x15 && ~x4 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x16 && x15 && x31 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && x62 && ~x16 && x15 && x31 && ~x2 )
						nx_state = s37;
					else if( ~x63 && x62 && ~x16 && x15 && ~x31 && x4 && x2 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x31 && x4 && ~x2 )
						nx_state = s37;
					else if( ~x63 && x62 && ~x16 && x15 && ~x31 && ~x4 && x37 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x31 && ~x4 && x37 && ~x2 )
						nx_state = s37;
					else if( ~x63 && x62 && ~x16 && x15 && ~x31 && ~x4 && ~x37 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x31 && ~x4 && ~x37 && ~x2 )
						nx_state = s37;
					else if( ~x63 && x62 && ~x16 && ~x15 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x10 && x61 && x39 && x46 && x51 && x36 )
						nx_state = s37;
					else if( ~x63 && ~x62 && x10 && x61 && x39 && x46 && x51 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x10 && x61 && x39 && x46 && ~x51 && x36 )
						nx_state = s37;
					else if( ~x63 && ~x62 && x10 && x61 && x39 && x46 && ~x51 && ~x36 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && x10 && x61 && x39 && ~x46 && x36 )
						nx_state = s37;
					else if( ~x63 && ~x62 && x10 && x61 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x63 && ~x62 && x10 && x61 && ~x39 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && x1 && x2 && x4 && x5 && x3 )
						nx_state = s37;
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && x1 && x2 && x4 && x5 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && x1 && x2 && x4 && ~x5 && x3 )
						nx_state = s37;
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && x1 && x2 && x4 && ~x5 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && x1 && x2 && ~x4 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && x1 && x2 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && x11 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && ~x11 && x12 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x63 && ~x62 && x10 && ~x61 && ~x11 && ~x12 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && x34 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && x34 && ~x8 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && ~x34 && x32 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x61 && ~x34 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && ~x61 && x1 )
						begin
							y23 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && ~x61 && ~x1 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && ~x61 && ~x1 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && x12 && x61 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && x12 && x61 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && x12 && x61 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && x12 && ~x61 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && x12 && ~x61 && ~x1 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && x12 && ~x61 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && x61 && x13 && x1 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && x61 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && x61 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && x61 && x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && x61 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && ~x61 && x1 )
						begin
							y20 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && ~x61 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && ~x61 && ~x1 && ~x2 && x9 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 && ~x12 && ~x61 && ~x1 && ~x2 && ~x9 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s37;
				s38 : if( x63 && x62 && x40 && x19 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x62 && x40 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s38;
					else if( x63 && x62 && x40 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && x62 && x40 && x19 && ~x13 && x32 && ~x18 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && x40 && x19 && ~x13 && ~x32 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && ~x19 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && x17 && x19 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && x62 && ~x40 && x17 && x19 && ~x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && x62 && ~x40 && x17 && ~x19 )
						nx_state = s38;
					else if( x63 && x62 && ~x40 && ~x17 && x20 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && x62 && ~x40 && ~x17 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x40 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x15 && x16 && x32 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && x15 && x16 && ~x32 && x36 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && x15 && x16 && ~x32 && ~x36 && x6 && x2 && x3 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && x15 && x16 && ~x32 && ~x36 && x6 && x2 && ~x3 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && ~x62 && x15 && x16 && ~x32 && ~x36 && x6 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && ~x62 && x15 && x16 && ~x32 && ~x36 && ~x6 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && ~x62 && x15 && ~x16 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x7 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && x41 && x37 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && x41 && ~x37 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && ~x41 && x42 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x7 && ~x9 && ~x41 && ~x42 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && x47 && x35 && x5 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x15 && x47 && x35 && x5 && ~x33 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x15 && x47 && x35 && x5 && ~x33 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x15 && x47 && x35 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && x47 && ~x35 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && x42 && x2 )
						begin
							y20 = 1'b1;	
							nx_state = s73;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && x42 && ~x2 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && x12 && x13 && x2 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && x12 && x13 && ~x2 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && x12 && ~x13 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && ~x12 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && x3 && ~x4 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && x12 && x13 && x2 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && x12 && x13 && ~x2 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && x12 && ~x13 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && ~x12 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && ~x4 )
						nx_state = s38;
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && x35 && x11 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && x44 && x14 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && x44 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && ~x44 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && ~x43 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && x38 && x39 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && x38 && ~x39 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && ~x38 && x8 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && ~x38 && ~x8 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && x7 && x9 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && x7 && ~x9 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && ~x7 && x40 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && ~x7 && ~x40 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && x38 && x41 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && x38 && ~x41 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && ~x38 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && ~x38 && ~x10 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && ~x15 && ~x47 && ~x34 && ~x33 )
						nx_state = s38;
					else if( ~x63 && x62 && x16 && x15 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && x16 && x15 && ~x37 && x5 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x16 && x15 && ~x37 && ~x5 && x6 && x2 && x31 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && x16 && x15 && ~x37 && ~x5 && x6 && x2 && ~x31 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x62 && x16 && x15 && ~x37 && ~x5 && x6 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x62 && x16 && x15 && ~x37 && ~x5 && ~x6 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && x5 && x34 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && x5 && ~x34 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && x5 && ~x34 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x16 && ~x15 && x4 && ~x5 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && x16 && ~x15 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && x15 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x7 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && x11 && x2 )
						begin
							y20 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && x11 && ~x2 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && x13 && x31 && x2 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && x13 && x31 && ~x2 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && x13 && ~x31 && x2 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && x13 && ~x31 && ~x2 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && x3 && ~x11 && ~x4 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && x4 && x34 && x11 )
						begin
							y49 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && x4 && x34 && ~x11 && x12 && x13 && x14 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && x4 && x34 && ~x11 && x12 && x13 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && x4 && x34 && ~x11 && x12 && ~x13 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && x4 && x34 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && x4 && ~x34 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && x6 && x34 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && x6 && x34 && ~x5 && x9 && x7 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && x6 && x34 && ~x5 && x9 && ~x7 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && x6 && x34 && ~x5 && ~x9 && x7 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && x6 && x34 && ~x5 && ~x9 && ~x7 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && x6 && ~x34 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && x7 && x34 && x5 && x8 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && x7 && x34 && x5 && ~x8 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && x7 && x34 && ~x5 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && x7 && x34 && ~x5 && ~x10 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && x7 && ~x34 )
						nx_state = s38;
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && x5 && x8 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && x5 && ~x8 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && ~x5 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && ~x5 && ~x10 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x6 && ~x7 && ~x34 )
						nx_state = s38;
					else if( ~x63 && ~x62 && x61 && x17 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && x61 && x17 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && x61 && x17 && ~x19 )
						nx_state = s38;
					else if( ~x63 && ~x62 && x61 && ~x17 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x63 && ~x62 && x61 && ~x17 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x10 && x12 && x4 && x1 )
						nx_state = s38;
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x10 && x12 && x4 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x10 && x12 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x10 && ~x12 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else nx_state = s38;
				s39 : if( x63 && x62 && x40 && x14 && x8 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && x14 && x8 && ~x10 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && x40 && x14 && ~x8 && x30 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x62 && x40 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && x62 && x40 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && x62 && x40 && x14 && ~x8 && ~x30 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && ~x14 && x32 && x3 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && x62 && x40 && ~x14 && x32 && ~x3 )
						nx_state = s39;
					else if( x63 && x62 && x40 && ~x14 && ~x32 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && ~x14 && ~x32 && ~x3 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && x16 && x45 && x29 && x42 && x27 )
						begin
							y17 = 1'b1;	
							nx_state = s57;
						end
					else if( x63 && x62 && ~x40 && x16 && x45 && x29 && x42 && ~x27 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && x16 && x45 && x29 && ~x42 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x40 && x16 && x45 && x29 && ~x42 && ~x27 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && x16 && x45 && ~x29 && x33 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x40 && x16 && x45 && ~x29 && x33 && ~x27 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && x16 && x45 && ~x29 && ~x33 && x43 && x27 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && ~x40 && x16 && x45 && ~x29 && ~x33 && x43 && ~x27 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && ~x27 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && x16 && ~x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x16 && x37 && x44 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x40 && ~x16 && x37 && x44 && ~x1 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && ~x16 && x37 && ~x44 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x16 && ~x37 && x25 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && x62 && ~x40 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s39;
					else if( x63 && x62 && ~x40 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x40 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s39;
					else if( x63 && ~x62 && x15 && x16 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && ~x62 && x15 && ~x16 && x39 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x39 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x39 && ~x9 && x41 && x37 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x39 && ~x9 && x41 && ~x37 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x39 && ~x9 && ~x41 && x42 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x63 && ~x62 && x15 && ~x16 && ~x39 && ~x9 && ~x41 && ~x42 )
						nx_state = s39;
					else if( x63 && ~x62 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && x62 && x15 && x16 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && x62 && x15 && ~x16 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x8 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s39;
					else if( ~x63 && x62 && ~x15 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x62 && x61 && x16 && x54 && x29 && x59 && x27 )
						begin
							y16 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x63 && ~x62 && x61 && x16 && x54 && x29 && x59 && ~x27 )
						nx_state = s39;
					else if( ~x63 && ~x62 && x61 && x16 && x54 && x29 && ~x59 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && x16 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s39;
					else if( ~x63 && ~x62 && x61 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s39;
					else if( ~x63 && ~x62 && x61 && x16 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x62 && x61 && x16 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s39;
					else if( ~x63 && ~x62 && x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s39;
					else if( ~x63 && ~x62 && x61 && x16 && ~x54 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x16 && x37 && x56 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && ~x16 && x37 && x56 && ~x1 )
						nx_state = s39;
					else if( ~x63 && ~x62 && x61 && ~x16 && x37 && ~x56 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x16 && ~x37 && x25 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && ~x62 && x61 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s39;
					else if( ~x63 && ~x62 && x61 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s39;
					else if( ~x63 && ~x62 && ~x61 && x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 && ~x11 && x12 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 && ~x11 && x12 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x12 && x2 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x12 && x2 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x12 && ~x2 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x12 && x9 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s39;
				s40 : if( x62 && x15 && x16 && x63 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x62 && x15 && x16 && x63 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x62 && x15 && x16 && ~x63 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x15 && x16 && ~x63 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x15 && ~x16 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && x1 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x15 && x16 && x4 && ~x5 && x2 && x3 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && ~x15 && x16 && x4 && ~x5 && x2 && ~x3 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x15 && x16 && x4 && ~x5 && ~x2 && x63 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x15 && x16 && x4 && ~x5 && ~x2 && ~x63 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && ~x15 && x16 && ~x4 && x63 && x2 && x3 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x62 && ~x15 && x16 && ~x4 && x63 && x2 && ~x3 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x15 && x16 && ~x4 && x63 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x15 && x16 && ~x4 && ~x63 && x34 && x3 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x62 && ~x15 && x16 && ~x4 && ~x63 && x34 && ~x3 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x15 && x16 && ~x4 && ~x63 && ~x34 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && ~x15 && ~x16 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && x46 && x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && x46 && x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x46 && ~x16 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x63 && ~x46 && x47 && x4 && x5 && x1 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x62 && x63 && ~x46 && x47 && x4 && x5 && ~x1 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x62 && x63 && ~x46 && x47 && x4 && ~x5 && x2 && x3 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x62 && x63 && ~x46 && x47 && x4 && ~x5 && x2 && ~x3 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x62 && x63 && ~x46 && x47 && x4 && ~x5 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && x63 && ~x46 && x47 && ~x4 && x33 && x34 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && ~x46 && x47 && ~x4 && x33 && ~x34 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x62 && x63 && ~x46 && x47 && ~x4 && ~x33 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && x63 && ~x46 && ~x47 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && ~x63 && x15 && x16 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && x5 && x1 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && ~x5 && x2 && x3 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && ~x5 && x2 && ~x3 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && ~x5 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && ~x4 && x2 && x3 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && ~x4 && x2 && ~x3 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && ~x4 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s40;
				s41 : if( x15 && x16 && x63 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x15 && x16 && ~x63 && x62 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x15 && x16 && ~x63 && ~x62 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && x13 && x4 && x63 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && x4 && ~x63 && x62 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x15 && ~x16 && x13 && x4 && ~x63 && ~x62 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x15 && ~x16 && x13 && ~x4 && x62 && x63 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x13 && ~x4 && x62 && x63 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( x15 && ~x16 && x13 && ~x4 && x62 && ~x63 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x15 && ~x16 && x13 && ~x4 && x62 && ~x63 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && x13 && ~x4 && ~x62 && x63 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x15 && ~x16 && x13 && ~x4 && ~x62 && x63 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x15 && ~x16 && x13 && ~x4 && ~x62 && ~x63 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && ~x13 && x62 && x63 && x14 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && x62 && x63 && ~x14 && x9 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && x62 && x63 && ~x14 && ~x9 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && x62 && x63 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && x62 && x63 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s41;
					else if( x15 && ~x16 && ~x13 && x62 && ~x63 && x14 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && x62 && ~x63 && ~x14 && x9 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && x62 && ~x63 && ~x14 && ~x9 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && x62 && ~x63 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && x62 && ~x63 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s41;
					else if( x15 && ~x16 && ~x13 && ~x62 && x63 && x45 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && x63 && ~x45 && x9 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && x63 && ~x45 && ~x9 && x38 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && x63 && ~x45 && ~x9 && ~x38 && x39 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && x63 && ~x45 && ~x9 && ~x38 && ~x39 )
						nx_state = s41;
					else if( x15 && ~x16 && ~x13 && ~x62 && ~x63 && x14 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && ~x63 && ~x14 && x9 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && ~x63 && ~x14 && ~x9 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && ~x63 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x15 && ~x16 && ~x13 && ~x62 && ~x63 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s41;
					else if( ~x15 && x62 && x16 && x4 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && x62 && x16 && ~x4 && x63 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && x62 && x16 && ~x4 && x63 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x15 && x62 && x16 && ~x4 && ~x63 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x15 && x62 && x16 && ~x4 && ~x63 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x15 && x62 && ~x16 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x15 && ~x62 && x63 && x47 && x4 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && ~x62 && x63 && x47 && ~x4 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x15 && ~x62 && x63 && x47 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x15 && ~x62 && x63 && ~x47 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && x4 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && ~x62 && ~x63 && x16 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x15 && ~x62 && ~x63 && ~x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s41;
				s42 : if( x63 && x62 && x40 && x7 && x35 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x63 && x62 && x40 && x7 && x35 && ~x1 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && x7 && ~x35 && x1 )
						nx_state = s42;
					else if( x63 && x62 && x40 && x7 && ~x35 && ~x1 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x62 && x40 && ~x7 )
						nx_state = s42;
					else if( x63 && x62 && ~x40 && x3 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && x62 && ~x40 && ~x3 && x2 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && x62 && ~x40 && ~x3 && ~x2 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x62 && ~x40 && ~x3 && ~x2 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && x46 && x16 && x36 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x62 && x46 && x16 && ~x36 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( x63 && ~x62 && x46 && ~x16 && x43 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( x63 && ~x62 && x46 && ~x16 && ~x43 )
						nx_state = s42;
					else if( x63 && ~x62 && ~x46 && x47 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x63 && ~x62 && ~x46 && ~x47 && x44 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x63 && ~x62 && ~x46 && ~x47 && ~x44 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && x62 && x16 && x15 && x5 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && x62 && x16 && x15 && ~x5 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && x62 && x16 && ~x15 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x63 && x62 && ~x16 && x15 && x12 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && x62 && ~x16 && x15 && ~x12 )
						nx_state = s42;
					else if( ~x63 && x62 && ~x16 && ~x15 && x13 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x63 && x62 && ~x16 && ~x15 && ~x13 )
						begin
							y15 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x62 && x61 && x35 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x35 && x13 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && ~x62 && x61 && ~x35 && ~x13 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x11 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x11 && x7 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x11 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s42;
				s43 : if( x63 && x62 && x40 && x2 && x8 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x63 && x62 && x40 && x2 && x8 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && x2 && x8 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && x40 && x2 && ~x8 && x32 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x62 && x40 && x2 && ~x8 && x32 && ~x1 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && x62 && x40 && x2 && ~x8 && x32 && ~x1 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x63 && x62 && x40 && x2 && ~x8 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && x40 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && x37 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x62 && ~x40 && x37 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x40 && ~x37 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && ~x62 && x11 && x43 && x13 && x10 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x62 && x11 && x43 && x13 && ~x10 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x11 && x43 && x13 && ~x10 && ~x34 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && x11 && x43 && x13 && ~x10 && ~x34 && ~x37 )
						nx_state = s43;
					else if( x63 && ~x62 && x11 && x43 && ~x13 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x11 && x43 && ~x13 && ~x34 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && x11 && x43 && ~x13 && ~x34 && ~x37 )
						nx_state = s43;
					else if( x63 && ~x62 && x11 && ~x43 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x34 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x34 && ~x37 )
						nx_state = s43;
					else if( x63 && ~x62 && ~x11 && x12 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x11 && x12 && ~x34 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && ~x11 && x12 && ~x34 && ~x37 )
						nx_state = s43;
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && x14 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && x14 && ~x34 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && x14 && ~x34 && ~x37 )
						nx_state = s43;
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x14 && x41 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x14 && x41 && ~x32 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x14 && ~x41 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x14 && ~x41 && ~x34 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x14 && ~x41 && ~x34 && ~x37 )
						nx_state = s43;
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x44 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x44 && ~x34 && x37 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x44 && ~x34 && ~x37 )
						nx_state = s43;
					else if( ~x63 && x62 && x17 && x18 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x35 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && x62 && ~x17 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && x61 && x46 && x3 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && x61 && x46 && x3 && ~x23 )
						nx_state = s43;
					else if( ~x63 && ~x62 && x61 && x46 && ~x3 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x46 && x2 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && x61 && ~x46 && x2 && ~x23 )
						nx_state = s43;
					else if( ~x63 && ~x62 && x61 && ~x46 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x11 && ~x5 && x6 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x11 && x1 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x11 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s43;
				s44 : if( x62 && x15 && x63 )
						begin
							y41 = 1'b1;	
							nx_state = s93;
						end
					else if( x62 && x15 && ~x63 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && ~x15 && x6 )
						begin
							y41 = 1'b1;	
							nx_state = s91;
						end
					else if( x62 && ~x15 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && x63 && x46 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && x46 && ~x16 && x37 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x46 && ~x16 && ~x37 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x46 && x47 && x4 && x36 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && ~x46 && x47 && x4 && ~x36 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x63 && ~x46 && x47 && ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && ~x46 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && ~x63 && x61 && x22 && x2 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && ~x63 && x61 && x22 && x2 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x61 && x22 && x2 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && x61 && x22 && ~x2 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && x61 && ~x22 && x31 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && x61 && ~x22 && ~x31 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && ~x61 && x46 && x3 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && ~x61 && x46 && x3 && ~x23 )
						nx_state = s44;
					else if( ~x62 && ~x63 && ~x61 && x46 && ~x3 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x46 && x2 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x46 && x2 && ~x23 )
						nx_state = s44;
					else if( ~x62 && ~x63 && ~x61 && ~x46 && ~x2 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s44;
				s45 : if( x62 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( x62 && ~x15 && x6 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( x62 && ~x15 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x62 && x63 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x62 && x63 && ~x15 && x37 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x62 && x63 && ~x15 && ~x37 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x62 && ~x63 && x61 && x16 && x19 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && ~x63 && x61 && x16 && x19 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x61 && x16 && x19 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && x26 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && x26 && ~x1 && x9 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && x26 && ~x1 && x9 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && x26 && ~x1 && ~x9 )
						nx_state = s45;
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && ~x26 && x3 )
						nx_state = s45;
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 && x9 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 && x9 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 && ~x9 )
						nx_state = s45;
					else if( ~x62 && ~x63 && x61 && x16 && ~x19 && ~x30 )
						nx_state = s45;
					else if( ~x62 && ~x63 && x61 && ~x16 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && ~x61 && x28 && x57 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x61 && x28 && ~x57 )
						nx_state = s45;
					else if( ~x62 && ~x63 && ~x61 && ~x28 && x27 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x28 && x27 && ~x8 && x37 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x28 && ~x27 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x28 && ~x27 && ~x50 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s45;
				s46 : if( x62 && x17 && x18 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x62 && x17 && x18 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && x17 && x18 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x62 && x17 && ~x18 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x17 && ~x18 && ~x7 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && ~x17 && x18 && x31 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x62 && ~x17 && x18 && ~x31 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( x62 && ~x17 && ~x18 && x19 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && ~x17 && ~x18 && x19 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x62 && ~x17 && ~x18 && x19 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x17 && ~x18 && x19 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x17 && ~x18 && x19 && x15 && ~x16 && ~x1 )
						nx_state = s46;
					else if( x62 && ~x17 && ~x18 && x19 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x17 && ~x18 && x19 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && ~x17 && ~x18 && x19 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && x32 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && ~x16 && ~x1 )
						nx_state = s46;
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && x40 && ~x32 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x17 && ~x18 && ~x19 && ~x40 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && x11 && x43 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && x11 && x43 && ~x9 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && x11 && x43 && ~x9 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && x63 && x11 && x43 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && x11 && x43 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s46;
					else if( ~x62 && x63 && x11 && ~x43 && x44 && x10 && x35 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x44 && x10 && ~x35 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x44 && ~x10 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x44 && ~x10 && ~x9 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s46;
					else if( ~x62 && x63 && x11 && ~x43 && ~x44 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x44 && ~x9 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x44 && ~x9 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x44 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && x11 && ~x43 && ~x44 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s46;
					else if( ~x62 && x63 && ~x11 && x12 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && ~x11 && x12 && ~x9 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x11 && x12 && ~x9 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && x63 && ~x11 && x12 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && ~x11 && x12 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s46;
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && x45 && x41 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && x45 && ~x41 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s46;
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && ~x45 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s46;
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x13 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x13 && ~x9 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && x1 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s46;
					else if( ~x62 && ~x63 && x61 && x25 && x22 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && x61 && x25 && ~x22 && x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && ~x63 && x61 && x25 && ~x22 && x6 && ~x8 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x62 && ~x63 && x61 && x25 && ~x22 && ~x6 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && x61 && ~x25 && x29 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x62 && ~x63 && x61 && ~x25 && ~x29 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && ~x61 && x38 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x38 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x38 && ~x50 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s46;
				s47 : if( x62 && x44 && x33 && x8 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x62 && x44 && x33 && x8 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && x44 && x33 && x8 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x62 && x44 && x33 && ~x8 && x32 && x37 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && x44 && x33 && ~x8 && x32 && ~x37 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && x44 && x33 && ~x8 && x32 && ~x37 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && x44 && x33 && ~x8 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x62 && x44 && ~x33 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x62 && ~x44 && x1 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x44 && x1 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x44 && ~x1 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && x63 && x55 && x33 && x32 && x8 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x62 && x63 && x55 && x33 && x32 && ~x8 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x63 && x55 && x33 && ~x32 && x8 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && x55 && x33 && ~x32 && x8 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && x63 && x55 && x33 && ~x32 && ~x8 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && x63 && x55 && ~x33 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && x63 && ~x55 && x37 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && x63 && ~x55 && x37 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x63 && ~x55 && ~x37 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && ~x63 && x61 && x2 && x8 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x62 && ~x63 && x61 && x2 && x8 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && x61 && x2 && x8 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && ~x63 && x61 && x2 && ~x8 && x32 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && x61 && x2 && ~x8 && x32 && ~x1 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && ~x63 && x61 && x2 && ~x8 && x32 && ~x1 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x62 && ~x63 && x61 && x2 && ~x8 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && ~x63 && x61 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && ~x63 && ~x61 && x37 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x63 && ~x61 && x37 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x37 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s47;
				s48 : if( x62 && x1 && x37 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && x1 && ~x37 && x9 )
						nx_state = s48;
					else if( x62 && x1 && ~x37 && ~x9 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x1 && x9 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && ~x1 && ~x9 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x62 && x63 && x37 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && x63 && ~x37 && x40 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && x63 && ~x37 && ~x40 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && ~x63 && x37 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x37 && x9 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x37 && ~x9 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s48;
				s49 : if( x62 && x16 && x6 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( x62 && x16 && ~x6 && x8 && x19 && x63 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x62 && x16 && ~x6 && x8 && x19 && ~x63 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( x62 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( x62 && x16 && ~x6 && ~x8 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x16 && x10 && x63 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && ~x16 && x10 && ~x63 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && ~x16 && ~x10 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x63 && x16 && x37 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x62 && x63 && x16 && ~x37 && x39 && x19 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x62 && x63 && x16 && ~x37 && x39 && ~x19 && x26 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x63 && x16 && ~x37 && x39 && ~x19 && x26 && ~x5 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && x63 && x16 && ~x37 && x39 && ~x19 && ~x26 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x62 && x63 && x16 && ~x37 && ~x39 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x63 && ~x16 && x41 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && ~x16 && ~x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && ~x63 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s49;
				s50 : if( x63 && x50 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && ~x50 )
						nx_state = s50;
					else if( ~x63 && x62 && x50 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x63 && x62 && ~x50 )
						nx_state = s50;
					else if( ~x63 && ~x62 && x61 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x62 && x61 && ~x10 && x25 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x62 && x61 && ~x10 && ~x25 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x62 && ~x61 && x8 && x53 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x63 && ~x62 && ~x61 && x8 && ~x53 && x37 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && x8 && ~x53 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x8 && x51 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x8 && ~x51 && x37 )
						begin
							y12 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x8 && ~x51 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s50;
				s51 : if( x62 && x18 && x17 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x18 && x17 && ~x5 && x6 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x18 && x17 && ~x5 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && x18 && ~x17 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && x18 && ~x17 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x62 && x18 && ~x17 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && x18 && ~x17 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x18 && ~x17 && x15 && ~x16 && ~x1 )
						nx_state = s51;
					else if( x62 && x18 && ~x17 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x18 && ~x17 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x18 && ~x17 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x18 && x17 && x9 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x62 && ~x18 && x17 && x9 && ~x10 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x18 && x17 && ~x9 && x6 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && ~x18 && x17 && ~x9 && ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( x62 && ~x18 && ~x17 && x6 && x7 && x39 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x62 && ~x18 && ~x17 && x6 && x7 && x39 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x62 && ~x18 && ~x17 && x6 && x7 && x39 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x62 && ~x18 && ~x17 && x6 && x7 && ~x39 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x62 && ~x18 && ~x17 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && x39 && x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( x62 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && x39 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x62 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && x39 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else if( x62 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && ~x39 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( x62 && ~x18 && ~x17 && ~x6 && x32 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x62 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && x16 && ~x5 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && ~x16 && ~x1 )
						nx_state = s51;
					else if( x62 && ~x18 && ~x17 && ~x6 && ~x32 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x18 && ~x17 && ~x6 && ~x32 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && ~x18 && ~x17 && ~x6 && ~x32 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x42 && x43 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && x6 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && x47 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s51;
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && ~x36 && x35 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && x10 && ~x36 && ~x35 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x44 && ~x10 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && x42 && ~x43 && ~x44 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && ~x42 && x12 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x13 && x14 && x41 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x13 && x14 && x41 && ~x4 )
						nx_state = s51;
					else if( ~x62 && x63 && ~x42 && ~x12 && x13 && x14 && ~x41 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x13 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && ~x13 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && ~x63 && x38 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && ~x63 && ~x38 )
						nx_state = s51;
					else nx_state = s51;
				s52 : if( x63 && x62 && x40 && x19 && x28 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x63 && x62 && x40 && x19 && x28 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && x19 && x28 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && x40 && x19 && ~x28 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && x40 && ~x19 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && ~x40 && x13 && x23 && x51 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x40 && x13 && x23 && ~x51 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && ~x40 && x13 && ~x23 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x40 && ~x13 && x28 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x40 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x13 && x28 && ~x35 && x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x13 && x28 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x13 && ~x28 && x6 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x62 && ~x40 && ~x13 && ~x28 && x6 && ~x35 && x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x13 && ~x28 && x6 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x40 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && ~x62 && x15 && x47 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && ~x62 && x15 && ~x47 && x36 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( x63 && ~x62 && x15 && ~x47 && ~x36 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && ~x62 && ~x15 && x16 && x35 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && ~x62 && ~x15 && x16 && x35 && x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x15 && x16 && x35 && ~x5 && x32 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && ~x62 && ~x15 && x16 && x35 && ~x5 && ~x32 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x15 && x16 && ~x35 && x32 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && ~x62 && ~x15 && x16 && ~x35 && ~x32 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x15 && ~x16 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x62 && x15 && x16 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x62 && x15 && ~x16 && x5 )
						begin
							y38 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x5 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x62 && ~x15 && x16 && x4 && x5 && x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x62 && ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && ~x15 && x16 && x4 && ~x5 && x37 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && x62 && ~x15 && x16 && x4 && ~x5 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && ~x15 && x16 && ~x4 && x37 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && x62 && ~x15 && x16 && ~x4 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && ~x15 && ~x16 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && x13 && x23 && x51 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x61 && x13 && x23 && ~x51 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && x61 && x13 && ~x23 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && x28 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && x28 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && x28 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && ~x28 && x6 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && ~x28 && x6 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && ~x28 && x6 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x10 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s52;
				s53 : if( x63 && x62 && x37 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && x62 && ~x37 && x9 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && x62 && ~x37 && ~x9 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && ~x62 && x11 && x43 && x13 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && x11 && x43 && x13 && ~x8 && x1 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && x11 && x43 && x13 && ~x8 && ~x1 )
						nx_state = s53;
					else if( x63 && ~x62 && x11 && x43 && ~x13 && x10 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x62 && x11 && x43 && ~x13 && ~x10 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && x11 && x43 && ~x13 && ~x10 && ~x8 && x1 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && x11 && x43 && ~x13 && ~x10 && ~x8 && ~x1 )
						nx_state = s53;
					else if( x63 && ~x62 && x11 && ~x43 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x8 && x1 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && x11 && ~x43 && ~x8 && ~x1 )
						nx_state = s53;
					else if( x63 && ~x62 && ~x11 && x12 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && x12 && ~x8 && x1 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && x12 && ~x8 && ~x1 )
						nx_state = s53;
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && x45 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && x45 && ~x8 && x1 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && x45 && ~x8 && ~x1 )
						nx_state = s53;
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && x40 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s53;
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && ~x41 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && ~x41 && ~x8 && x1 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && x44 && ~x45 && ~x41 && ~x8 && ~x1 )
						nx_state = s53;
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x44 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x44 && ~x8 && x1 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( x63 && ~x62 && ~x11 && ~x12 && ~x44 && ~x8 && ~x1 )
						nx_state = s53;
					else if( ~x63 && x62 && x17 && x18 && x6 && x9 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && x62 && x17 && x18 && x6 && ~x9 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x10 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x10 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && x62 && ~x17 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && x62 && ~x17 && ~x8 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && ~x62 && x61 && x17 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && ~x62 && x61 && ~x17 && x57 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && ~x62 && x61 && ~x17 && ~x57 )
						nx_state = s53;
					else if( ~x63 && ~x62 && ~x61 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x6 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s53;
				s54 : if( x63 && x62 && x40 && x12 && x27 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && x62 && x40 && x12 && x27 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && x40 && x12 && x27 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x40 && x12 && ~x27 && x29 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x62 && x40 && x12 && ~x27 && x29 && ~x1 )
						nx_state = s54;
					else if( x63 && x62 && x40 && x12 && ~x27 && ~x29 )
						nx_state = s54;
					else if( x63 && x62 && x40 && ~x12 && x29 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( x63 && x62 && x40 && ~x12 && ~x29 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && x62 && ~x40 && x17 )
						begin
							y30 = 1'b1;	
							nx_state = s110;
						end
					else if( x63 && x62 && ~x40 && ~x17 && x43 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && x62 && ~x40 && ~x17 && ~x43 )
						nx_state = s54;
					else if( x63 && ~x62 && x46 && x16 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x62 && x46 && ~x16 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && ~x62 && x46 && ~x16 && ~x12 )
						nx_state = s54;
					else if( x63 && ~x62 && ~x46 && x47 && x4 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && ~x62 && ~x46 && x47 && ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x62 && ~x46 && ~x47 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x62 && ~x46 && ~x47 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && x62 && x17 && x18 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x5 && x6 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x5 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x14 )
						begin
							y1 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && x15 && ~x16 && ~x1 )
						nx_state = s54;
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x14 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x17 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && x62 && ~x17 && ~x6 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && ~x62 && x61 && x8 && x53 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && x61 && x8 && ~x53 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && x8 && ~x53 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && x61 && ~x8 && x51 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && x61 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x8 && ~x51 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && ~x61 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && x11 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x11 && x12 && x8 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x10 && ~x11 && ~x12 )
						begin
							y19 = 1'b1;	
							nx_state = s130;
						end
					else nx_state = s54;
				s55 : if( x63 && x62 && x38 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x62 && ~x38 )
						nx_state = s55;
					else if( x63 && ~x62 && x38 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x63 && ~x62 && ~x38 )
						nx_state = s55;
					else if( ~x63 && x62 && x38 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && x62 && ~x38 )
						nx_state = s55;
					else if( ~x63 && ~x62 && x15 && x16 && x5 && x1 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && ~x62 && x15 && x16 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x63 && ~x62 && x15 && x16 && x5 && ~x1 && x2 && x3 && ~x4 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && x16 && x5 && ~x1 && x2 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && x16 && x5 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x5 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x5 && ~x6 && x1 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && x3 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x5 && ~x6 && ~x1 && x2 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && x16 && ~x5 && ~x6 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && ~x62 && x15 && ~x16 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s55;
				s56 : if( x62 && x15 && x16 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( x62 && x15 && ~x16 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x15 && ~x16 && ~x11 && x10 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && x15 && ~x16 && ~x11 && ~x10 )
						nx_state = s56;
					else if( x62 && ~x15 && x16 && x3 && x63 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && ~x15 && x16 && x3 && ~x63 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x62 && ~x15 && x16 && ~x3 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && ~x15 && ~x16 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x63 && x46 && x16 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && x63 && x46 && ~x16 && x42 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x62 && x63 && x46 && ~x16 && ~x42 && x10 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x62 && x63 && x46 && ~x16 && ~x42 && ~x10 )
						nx_state = s56;
					else if( ~x62 && x63 && ~x46 && x47 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x62 && x63 && ~x46 && x47 && ~x3 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && ~x46 && ~x47 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && ~x63 && x16 && x15 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && ~x3 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x11 && x10 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x11 && ~x10 )
						nx_state = s56;
					else if( ~x62 && ~x63 && ~x16 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s56;
				s57 : if( x62 && x63 && x40 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && x40 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && x40 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && x63 && ~x40 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x62 && x63 && ~x40 && ~x50 )
						nx_state = s57;
					else if( x62 && ~x63 && x44 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && x44 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && x44 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && ~x63 && ~x44 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( x62 && ~x63 && ~x44 && ~x50 )
						nx_state = s57;
					else if( ~x62 && x63 && x33 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && x63 && ~x33 )
						nx_state = s57;
					else if( ~x62 && ~x63 )
						begin
							y18 = 1'b1;	
							nx_state = s131;
						end
					else nx_state = s57;
				s58 : if( x62 && x16 && x15 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x62 && x16 && ~x15 && x4 && x5 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x62 && x16 && ~x15 && x4 && ~x5 )
						begin
							y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x62 && x16 && ~x15 && ~x4 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && ~x16 && x15 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && ~x16 && x15 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( x62 && ~x16 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && x42 && x43 && x35 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && x42 && x43 && ~x35 )
						nx_state = s58;
					else if( ~x62 && x63 && x42 && ~x43 && x13 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x13 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x13 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x13 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x13 && x15 && ~x47 && ~x1 )
						nx_state = s58;
					else if( ~x62 && x63 && x42 && ~x43 && x13 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x13 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && x42 && ~x43 && x13 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && x42 && ~x43 && ~x13 && x35 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && x42 && ~x43 && ~x13 && ~x35 )
						nx_state = s58;
					else if( ~x62 && x63 && ~x42 && x12 && x35 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && ~x42 && x12 && ~x35 )
						nx_state = s58;
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && x14 && x35 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && x14 && ~x35 )
						nx_state = s58;
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && x15 && x47 && x36 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s58;
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && x44 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && ~x44 && x35 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && ~x42 && ~x12 && ~x44 && ~x35 )
						nx_state = s58;
					else if( ~x62 && ~x63 && x10 && x61 && x12 && x23 )
						begin
							y23 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x62 && ~x63 && x10 && x61 && x12 && ~x23 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x63 && x10 && x61 && x12 && ~x23 && ~x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x10 && x61 && ~x12 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x62 && ~x63 && x10 && ~x61 && x39 && x46 && x51 && x36 )
						nx_state = s58;
					else if( ~x62 && ~x63 && x10 && ~x61 && x39 && x46 && x51 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x62 && ~x63 && x10 && ~x61 && x39 && x46 && ~x51 && x36 )
						nx_state = s58;
					else if( ~x62 && ~x63 && x10 && ~x61 && x39 && x46 && ~x51 && ~x36 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && x10 && ~x61 && x39 && ~x46 && x36 )
						nx_state = s58;
					else if( ~x62 && ~x63 && x10 && ~x61 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x62 && ~x63 && x10 && ~x61 && ~x39 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && x22 )
						begin
							y26 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && ~x22 && x2 && x11 && x5 && x3 )
						nx_state = s58;
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && ~x22 && x2 && x11 && x5 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && ~x22 && x2 && x11 && ~x5 && x3 )
						nx_state = s58;
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && ~x22 && x2 && x11 && ~x5 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && ~x22 && x2 && ~x11 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && ~x22 && x2 && ~x11 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && x1 && ~x22 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && ~x1 && x11 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && ~x1 && x11 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && ~x63 && ~x10 && x61 && ~x1 && ~x11 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && x34 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && x34 && ~x8 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && ~x34 && x32 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && x11 && ~x34 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && x12 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x61 && ~x11 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s58;
				s59 : if( x62 && x26 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x62 && x26 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x62 && x26 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x62 && x26 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x62 && ~x26 && x27 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x62 && ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( x62 && ~x26 && ~x27 && x28 && x32 && x24 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( x62 && ~x26 && ~x27 && x28 && x32 && ~x24 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && ~x26 && ~x27 && x28 && ~x32 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && x18 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && x18 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && ~x18 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && x26 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && x63 && x26 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && x63 && x26 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x26 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x26 && x27 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x26 && x27 && ~x35 )
						nx_state = s1;
					else if( ~x62 && x63 && ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && x28 && ~x2 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && ~x28 && x49 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && ~x28 && x49 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && ~x28 && x49 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && ~x28 && ~x49 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && ~x63 && x15 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && ~x63 && ~x15 && x8 )
						begin
							y16 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x8 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x8 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s59;
					else nx_state = s59;
				s60 : if( x63 && x62 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x63 && x62 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x63 && ~x62 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else nx_state = s60;
				s61 : if( x61 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x61 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x61 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x61 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x61 && ~x50 )
						nx_state = s61;
					else nx_state = s61;
				s62 : if( x15 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x15 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s136;
						end
					else if( ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s136;
						end
					else nx_state = s62;
				s63 : if( x62 && x16 && x9 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( x62 && x16 && ~x9 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x62 && ~x16 && x63 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x62 && ~x16 && ~x63 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x62 && x47 && x9 )
						begin
							y27 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x62 && x47 && ~x9 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x62 && ~x47 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s63;
				s64 : if( x62 && x63 && x40 && x25 && x22 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && x40 && x25 && ~x22 && x6 && x8 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && x40 && x25 && ~x22 && x6 && ~x8 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && x40 && x25 && ~x22 && ~x6 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && x63 && x40 && ~x25 && x29 )
						begin
							y29 = 1'b1;	
							nx_state = s26;
						end
					else if( x62 && x63 && x40 && ~x25 && ~x29 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && x63 && ~x40 && x38 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && x63 && ~x40 && ~x38 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x63 && ~x40 && ~x38 && ~x50 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && ~x63 && x44 && x25 && x22 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && x44 && x25 && ~x22 && x6 && x8 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && x44 && x25 && ~x22 && x6 && ~x8 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && x44 && x25 && ~x22 && ~x6 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && ~x63 && x44 && ~x25 && x29 )
						begin
							y29 = 1'b1;	
							nx_state = s26;
						end
					else if( x62 && ~x63 && x44 && ~x25 && ~x29 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && ~x63 && ~x44 && x38 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && ~x63 && ~x44 && ~x38 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x63 && ~x44 && ~x38 && ~x50 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x55 && x25 && x52 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x55 && x25 && ~x52 && x6 && x39 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && x55 && x25 && ~x52 && x6 && ~x39 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x55 && x25 && ~x52 && ~x6 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && x55 && ~x25 && x29 )
						begin
							y29 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x62 && x55 && ~x25 && ~x29 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && ~x55 && x38 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && ~x55 && ~x38 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x55 && ~x38 && ~x50 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s64;
				s65 : if( x15 && x62 && x63 && x1 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x15 && x62 && x63 && ~x1 )
						begin
							y31 = 1'b1;	
							nx_state = s137;
						end
					else if( x15 && x62 && ~x63 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x15 && x62 && ~x63 && ~x37 )
						begin
							y31 = 1'b1;	
							nx_state = s137;
						end
					else if( x15 && ~x62 && x32 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x15 && ~x62 && ~x32 )
						begin
							y31 = 1'b1;	
							nx_state = s137;
						end
					else if( ~x15 )
						begin
							y31 = 1'b1;	
							nx_state = s137;
						end
					else nx_state = s65;
				s66 : if( x62 && x63 && x40 && x16 && x19 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && x40 && x16 && x19 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && x40 && x16 && x19 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && x63 && x40 && x16 && ~x19 && x30 && x26 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && x63 && x40 && x16 && ~x19 && x30 && x26 && ~x1 )
						nx_state = s66;
					else if( x62 && x63 && x40 && x16 && ~x19 && x30 && ~x26 && x3 )
						nx_state = s66;
					else if( x62 && x63 && x40 && x16 && ~x19 && x30 && ~x26 && ~x3 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && x63 && x40 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 )
						nx_state = s66;
					else if( x62 && x63 && x40 && x16 && ~x19 && ~x30 )
						nx_state = s66;
					else if( x62 && x63 && x40 && ~x16 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && ~x40 && x28 && x43 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && x63 && ~x40 && x28 && ~x43 )
						nx_state = s66;
					else if( x62 && x63 && ~x40 && ~x28 && x27 && x8 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && x63 && ~x40 && ~x28 && x27 && ~x8 && x37 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && ~x40 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && ~x40 && ~x28 && ~x27 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x62 && x63 && ~x40 && ~x28 && ~x27 && ~x50 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && ~x63 && x44 && x16 && x19 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && x44 && x16 && x19 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && x44 && x16 && x19 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && x26 && x1 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && x26 && ~x1 && x37 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && x26 && ~x1 && x37 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && x26 && ~x1 && ~x37 )
						nx_state = s66;
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && ~x26 && x1 && x3 )
						nx_state = s66;
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && ~x26 && x1 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && x37 && x43 )
						nx_state = s66;
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && x37 && ~x43 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && x37 && ~x43 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( x62 && ~x63 && x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && ~x37 )
						nx_state = s66;
					else if( x62 && ~x63 && x44 && x16 && ~x19 && ~x30 )
						nx_state = s66;
					else if( x62 && ~x63 && x44 && ~x16 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && ~x44 && x28 && x49 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && ~x63 && ~x44 && x28 && ~x49 )
						nx_state = s66;
					else if( x62 && ~x63 && ~x44 && ~x28 && x27 && x8 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x62 && ~x63 && ~x44 && ~x28 && x27 && ~x8 && x36 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && ~x44 && ~x28 && x27 && ~x8 && ~x36 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && ~x44 && ~x28 && ~x27 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && ~x63 && ~x44 && ~x28 && ~x27 && ~x50 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x55 && x16 && x50 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && x55 && x16 && x50 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x55 && x16 && x50 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x55 && x16 && ~x50 && x32 && x30 && x26 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x55 && x16 && ~x50 && x32 && x30 && ~x26 && x34 )
						nx_state = s66;
					else if( ~x62 && x55 && x16 && ~x50 && x32 && x30 && ~x26 && ~x34 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x55 && x16 && ~x50 && x32 && ~x30 )
						nx_state = s66;
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && x26 && x4 && x1 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && x26 && x4 && ~x1 )
						nx_state = s66;
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && x26 && ~x4 && x1 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && x26 && ~x4 && ~x1 )
						nx_state = s66;
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && x3 )
						nx_state = s66;
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && x4 && x1 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && x4 && ~x1 )
						nx_state = s66;
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && ~x4 && x1 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && ~x4 && ~x1 )
						nx_state = s66;
					else if( ~x62 && x55 && x16 && ~x50 && ~x32 && ~x30 )
						nx_state = s66;
					else if( ~x62 && x55 && ~x16 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && ~x55 && x28 && x57 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && ~x55 && x28 && ~x57 )
						nx_state = s66;
					else if( ~x62 && ~x55 && ~x28 && x27 && x8 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && ~x55 && ~x28 && x27 && ~x8 && x37 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && ~x55 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && ~x55 && ~x28 && ~x27 && x50 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x62 && ~x55 && ~x28 && ~x27 && ~x50 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s66;
				s67 : if( x63 && x62 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x63 && x62 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x63 && ~x62 && x61 && x7 && x35 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x63 && ~x62 && x61 && x7 && x35 && ~x1 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && ~x62 && x61 && x7 && ~x35 && x1 )
						nx_state = s67;
					else if( ~x63 && ~x62 && x61 && x7 && ~x35 && ~x1 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && ~x62 && x61 && ~x7 )
						nx_state = s67;
					else if( ~x63 && ~x62 && ~x61 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x3 && x2 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x3 && ~x2 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x3 && ~x2 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s67;
				s68 : if( x16 && x9 )
						begin
							y11 = 1'b1;	
							nx_state = s13;
						end
					else if( x16 && ~x9 )
						begin
							y24 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x16 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s68;
				s69 : if( x62 && x63 && x40 && x13 && x23 && x51 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && x13 && x23 && ~x51 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && x40 && x13 && ~x23 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && ~x13 && x28 && x35 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && ~x13 && x28 && x35 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x13 && x28 && ~x35 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x13 && x28 && ~x35 && ~x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x13 && ~x28 && x6 && x35 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x62 && x63 && x40 && ~x13 && ~x28 && x6 && ~x35 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x13 && ~x28 && x6 && ~x35 && ~x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && ~x40 && x11 && x10 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && x1 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x1 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x1 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && x63 && ~x40 && ~x11 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && x5 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && x44 && x13 && x23 && x51 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x44 && x13 && x23 && ~x51 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && x44 && x13 && ~x23 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x44 && ~x13 && x28 && x35 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x44 && ~x13 && x28 && x35 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x13 && x28 && ~x35 && x45 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x13 && x28 && ~x35 && ~x45 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x13 && ~x28 && x6 && x35 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && ~x63 && x44 && ~x13 && ~x28 && x6 && ~x35 && x45 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x13 && ~x28 && x6 && ~x35 && ~x45 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && x37 )
						begin
							y52 = 1'b1;	
							nx_state = s86;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x37 && x41 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x37 && ~x41 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x5 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x55 && x44 && x23 && x51 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && x44 && x23 && ~x51 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && x55 && x44 && ~x23 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && ~x44 && x28 && x35 && x36 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && ~x44 && x28 && x35 && ~x36 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x44 && x28 && ~x35 && x58 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x44 && x28 && ~x35 && ~x58 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x44 && ~x28 && x37 && x35 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x62 && x55 && ~x44 && ~x28 && x37 && ~x35 && x58 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x44 && ~x28 && x37 && ~x35 && ~x58 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x44 && ~x28 && ~x37 && x39 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x44 && ~x28 && ~x37 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && x41 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && ~x41 && x42 && x32 )
						begin
							y54 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x62 && ~x55 && ~x41 && x42 && ~x32 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x41 && x42 && ~x32 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x42 && x5 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x42 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s69;
				s70 : if( x15 && x16 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x15 && ~x16 && x62 && x63 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x15 && ~x16 && x62 && ~x63 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( x15 && ~x16 && ~x62 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x15 && x62 && x16 && x4 && x5 && x63 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x62 && x16 && x4 && x5 && ~x63 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x15 && x62 && x16 && x4 && ~x5 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x15 && x62 && x16 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x15 && x62 && ~x16 && x12 && x13 && x3 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && x62 && ~x16 && x12 && x13 && ~x3 && x14 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && x62 && ~x16 && x12 && x13 && ~x3 && ~x14 && x63 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x15 && x62 && ~x16 && x12 && x13 && ~x3 && ~x14 && ~x63 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x15 && x62 && ~x16 && x12 && ~x13 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x15 && x62 && ~x16 && ~x12 && x63 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x15 && x62 && ~x16 && ~x12 && ~x63 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x15 && ~x62 && x47 && x4 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x15 && ~x62 && x47 && x4 && ~x5 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x15 && ~x62 && x47 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x15 && ~x62 && ~x47 && x43 && x44 && x34 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && ~x62 && ~x47 && x43 && x44 && ~x34 && x14 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && ~x62 && ~x47 && x43 && x44 && ~x34 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x15 && ~x62 && ~x47 && x43 && ~x44 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x15 && ~x62 && ~x47 && ~x43 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s70;
				s71 : if( x62 && x12 && x15 && x13 && x3 && x63 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( x62 && x12 && x15 && x13 && x3 && ~x63 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( x62 && x12 && x15 && x13 && ~x3 && x14 && x63 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( x62 && x12 && x15 && x13 && ~x3 && x14 && ~x63 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( x62 && x12 && x15 && x13 && ~x3 && ~x14 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && x12 && x15 && ~x13 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( x62 && x12 && ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x62 && x63 && x46 && x12 && x13 && x3 )
						begin
							y47 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x62 && x63 && x46 && x12 && x13 && ~x3 && x14 )
						begin
							y47 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x62 && x63 && x46 && x12 && x13 && ~x3 && ~x14 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && x63 && x46 && x12 && ~x13 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && x63 && x46 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && x63 && ~x46 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x63 && x16 && x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && ~x5 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && ~x4 )
						begin
							y6 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && ~x63 && ~x16 && ~x15 && x12 && x13 && x3 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x62 && ~x63 && ~x16 && ~x15 && x12 && x13 && ~x3 && x14 )
						begin
							y16 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x62 && ~x63 && ~x16 && ~x15 && x12 && x13 && ~x3 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x62 && ~x63 && ~x16 && ~x15 && x12 && ~x13 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && ~x63 && ~x16 && ~x15 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else nx_state = s71;
				s72 : if( x62 && x63 && x40 && x10 && x39 && x46 && x51 && x36 )
						nx_state = s72;
					else if( x62 && x63 && x40 && x10 && x39 && x46 && x51 && ~x36 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && x10 && x39 && x46 && ~x51 && x36 )
						nx_state = s72;
					else if( x62 && x63 && x40 && x10 && x39 && x46 && ~x51 && ~x36 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && x40 && x10 && x39 && ~x46 && x36 )
						nx_state = s72;
					else if( x62 && x63 && x40 && x10 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x63 && x40 && x10 && ~x39 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && x34 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x45 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x63 && x40 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x63 && x40 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && x10 && x11 && x1 && x2 && x4 && x5 && x3 )
						nx_state = s72;
					else if( x62 && x63 && ~x40 && x10 && x11 && x1 && x2 && x4 && x5 && ~x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && x10 && x11 && x1 && x2 && x4 && ~x5 && x3 )
						nx_state = s72;
					else if( x62 && x63 && ~x40 && x10 && x11 && x1 && x2 && x4 && ~x5 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && x63 && ~x40 && x10 && x11 && x1 && x2 && ~x4 && x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && x10 && x11 && x1 && x2 && ~x4 && ~x3 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x63 && ~x40 && x10 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x63 && ~x40 && x10 && x11 && ~x1 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && ~x12 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && x1 )
						begin
							y50 = 1'b1;	
							nx_state = s144;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && ~x1 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && ~x1 && ~x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && x12 && x1 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && x12 && ~x1 && x4 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && x12 && ~x1 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && ~x12 && x1 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && ~x2 && x9 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && ~x2 && ~x9 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x10 && x44 && x39 && x46 && x51 && x36 )
						nx_state = s72;
					else if( x62 && ~x63 && x10 && x44 && x39 && x46 && x51 && ~x36 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x10 && x44 && x39 && x46 && ~x51 && x36 )
						nx_state = s72;
					else if( x62 && ~x63 && x10 && x44 && x39 && x46 && ~x51 && ~x36 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && x10 && x44 && x39 && ~x46 && x36 )
						nx_state = s72;
					else if( x62 && ~x63 && x10 && x44 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x63 && x10 && x44 && ~x39 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x63 && x10 && ~x44 && x11 && x36 && x34 && x4 && x5 && x3 )
						nx_state = s72;
					else if( x62 && ~x63 && x10 && ~x44 && x11 && x36 && x34 && x4 && x5 && ~x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && x10 && ~x44 && x11 && x36 && x34 && x4 && ~x5 && x3 )
						nx_state = s72;
					else if( x62 && ~x63 && x10 && ~x44 && x11 && x36 && x34 && x4 && ~x5 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x63 && x10 && ~x44 && x11 && x36 && x34 && ~x4 && x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x10 && ~x44 && x11 && x36 && x34 && ~x4 && ~x3 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && x10 && ~x44 && x11 && x36 && ~x34 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x63 && x10 && ~x44 && x11 && ~x36 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x10 && ~x44 && ~x11 && x12 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x63 && x10 && ~x44 && ~x11 && ~x12 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && x34 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && x34 && ~x8 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && x34 && ~x8 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && ~x34 && x32 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x63 && ~x10 && x44 && x11 && ~x34 && ~x32 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && x12 && ~x20 && x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && ~x12 && x13 && x37 && x41 && x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && ~x12 && x13 && x37 && x41 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && ~x12 && x13 && x37 && ~x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && ~x12 && x13 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x63 && ~x10 && x44 && ~x11 && ~x12 && ~x13 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && x11 && x37 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && x11 && ~x37 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && x11 && ~x37 && ~x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && ~x11 && x12 && x37 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && ~x11 && x12 && ~x37 && x4 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && ~x11 && x12 && ~x37 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && ~x11 && ~x12 && x37 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && ~x11 && ~x12 && ~x37 && x34 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && ~x11 && ~x12 && ~x37 && ~x34 && x9 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x10 && ~x44 && ~x11 && ~x12 && ~x37 && ~x34 && ~x9 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && x10 && x39 && x46 && x51 && x36 )
						nx_state = s72;
					else if( ~x62 && x55 && x10 && x39 && x46 && x51 && ~x36 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && x10 && x39 && x46 && ~x51 && x36 )
						nx_state = s72;
					else if( ~x62 && x55 && x10 && x39 && x46 && ~x51 && ~x36 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && x55 && x10 && x39 && ~x46 && x36 )
						nx_state = s72;
					else if( ~x62 && x55 && x10 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x62 && x55 && x10 && ~x39 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && x55 && ~x10 && x42 && x34 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && x55 && ~x10 && x42 && x34 && ~x8 && x36 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && ~x10 && x42 && x34 && ~x8 && ~x36 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x10 && x42 && ~x34 && x32 && x7 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && x54 && x36 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && x54 && ~x36 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x62 && x55 && ~x10 && x42 && ~x34 && ~x32 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && x43 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && x43 && ~x20 && x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && x43 && ~x20 && ~x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && x3 && x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && x3 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && ~x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && ~x43 && x13 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x62 && x55 && ~x10 && ~x42 && ~x43 && ~x13 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && x41 && x11 && x1 && x33 && x34 && x35 )
						nx_state = s72;
					else if( ~x62 && ~x55 && x41 && x11 && x1 && x33 && x34 && ~x35 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && x41 && x11 && x1 && x33 && ~x34 && x4 && x5 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && x41 && x11 && x1 && x33 && ~x34 && x4 && ~x5 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x55 && x41 && x11 && x1 && x33 && ~x34 && ~x4 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && ~x55 && x41 && x11 && x1 && ~x33 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x62 && ~x55 && x41 && x11 && ~x1 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && x12 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && ~x12 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x62 && ~x55 && ~x41 && x32 && x42 )
						begin
							y53 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x62 && ~x55 && ~x41 && x32 && ~x42 && x43 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && ~x55 && ~x41 && x32 && ~x42 && ~x43 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x32 && x11 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x32 && x11 && ~x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x32 && ~x11 && x12 && x35 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x32 && ~x11 && x12 && ~x35 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && x33 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && ~x33 && x40 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && ~x33 && ~x40 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else nx_state = s72;
				s73 : if( x62 && x63 )
						begin
							y48 = 1'b1;	
							nx_state = s74;
						end
					else if( x62 && ~x63 )
						begin
							y49 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x62 && x63 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x62 && ~x63 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s73;
				s74 : if( x63 )
						begin
							y49 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x63 && x62 && x44 && x1 && x37 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && x62 && x44 && x1 && ~x37 && x9 )
						nx_state = s74;
					else if( ~x63 && x62 && x44 && x1 && ~x37 && ~x9 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && x62 && x44 && ~x1 && x9 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && x62 && x44 && ~x1 && ~x9 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x63 && x62 && ~x44 && x10 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && x37 )
						begin
							y52 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && ~x37 && x41 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && x11 && ~x37 && ~x41 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x63 && x62 && ~x44 && ~x10 && ~x11 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x63 && ~x62 )
						begin
							y49 = 1'b1;	
							nx_state = s127;
						end
					else nx_state = s74;
				s75 : if( x63 && x62 && x40 && x9 )
						begin
							y17 = 1'b1;	
							nx_state = s57;
						end
					else if( x63 && x62 && x40 && ~x9 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && x40 && ~x9 && ~x3 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && x62 && ~x40 && x29 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x63 && x62 && ~x40 && x29 && ~x50 )
						nx_state = s75;
					else if( x63 && x62 && ~x40 && ~x29 && x41 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && x62 && ~x40 && ~x29 && ~x41 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && x55 && x40 )
						begin
							y17 = 1'b1;	
							nx_state = s122;
						end
					else if( x63 && ~x62 && x55 && ~x40 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && x55 && ~x40 && ~x3 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( x63 && ~x62 && ~x55 && x29 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( x63 && ~x62 && ~x55 && x29 && ~x50 )
						nx_state = s75;
					else if( x63 && ~x62 && ~x55 && ~x29 && x58 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x63 && ~x62 && ~x55 && ~x29 && ~x58 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x62 && x17 && x18 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x5 && x6 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && x17 && x18 && ~x5 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x39 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x39 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x39 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x39 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x39 && x15 && ~x16 && ~x1 )
						nx_state = s75;
					else if( ~x63 && x62 && x17 && ~x18 && x39 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x39 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x17 && ~x18 && x39 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x17 && ~x18 && ~x39 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && x62 && ~x17 && x9 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && ~x17 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && x15 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x62 && ~x15 && x16 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && ~x62 && ~x15 && ~x16 )
						begin
							y17 = 1'b1;	
							nx_state = s35;
						end
					else nx_state = s75;
				s76 : if( x62 && x15 && x63 )
						begin
							y14 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && x15 && ~x63 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x62 && ~x15 && x14 && x13 && x63 )
						begin
							y49 = 1'b1;	
							nx_state = s127;
						end
					else if( x62 && ~x15 && x14 && x13 && ~x63 )
						begin
							y50 = 1'b1;	
							nx_state = s146;
						end
					else if( x62 && ~x15 && x14 && ~x13 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( x62 && ~x15 && ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x62 && x63 && x46 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x62 && x63 && ~x46 && x14 && x44 )
						begin
							y52 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x62 && x63 && ~x46 && x14 && ~x44 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && ~x46 && ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x62 && ~x63 )
						begin
							y20 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s76;
				s77 : if( x63 && x62 && x10 && x40 && x12 && x23 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x63 && x62 && x10 && x40 && x12 && ~x23 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x62 && x10 && x40 && x12 && ~x23 && ~x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && x10 && x40 && ~x12 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x62 && x10 && ~x40 && x39 && x46 && x51 && x36 )
						nx_state = s77;
					else if( x63 && x62 && x10 && ~x40 && x39 && x46 && x51 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && x10 && ~x40 && x39 && x46 && ~x51 && x36 )
						nx_state = s77;
					else if( x63 && x62 && x10 && ~x40 && x39 && x46 && ~x51 && ~x36 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && x10 && ~x40 && x39 && ~x46 && x36 )
						nx_state = s77;
					else if( x63 && x62 && x10 && ~x40 && x39 && ~x46 && ~x36 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && x62 && x10 && ~x40 && ~x39 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x62 && ~x10 && x40 && x1 && x22 )
						begin
							y29 = 1'b1;	
							nx_state = s26;
						end
					else if( x63 && x62 && ~x10 && x40 && x1 && ~x22 && x2 && x11 && x5 && x3 )
						nx_state = s77;
					else if( x63 && x62 && ~x10 && x40 && x1 && ~x22 && x2 && x11 && x5 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x62 && ~x10 && x40 && x1 && ~x22 && x2 && x11 && ~x5 && x3 )
						nx_state = s77;
					else if( x63 && x62 && ~x10 && x40 && x1 && ~x22 && x2 && x11 && ~x5 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && ~x10 && x40 && x1 && ~x22 && x2 && ~x11 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x10 && x40 && x1 && ~x22 && x2 && ~x11 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x62 && ~x10 && x40 && x1 && ~x22 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && x62 && ~x10 && x40 && ~x1 && x11 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x10 && x40 && ~x1 && x11 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x10 && x40 && ~x1 && ~x11 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && x34 && x8 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && x34 && ~x8 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && ~x34 && x32 && x7 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && ~x34 && x32 && ~x7 && x45 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && ~x34 && x32 && ~x7 && x45 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && ~x34 && x32 && ~x7 && ~x45 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && x62 && ~x10 && ~x40 && x11 && ~x34 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && x12 && x20 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && x12 && ~x20 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && x62 && ~x10 && ~x40 && ~x11 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x62 && x55 && x10 && x43 && x23 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( x63 && ~x62 && x55 && x10 && x43 && ~x23 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && ~x62 && x55 && x10 && x43 && ~x23 && ~x4 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && x55 && x10 && ~x43 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( x63 && ~x62 && x55 && ~x10 && x1 && x22 )
						begin
							y29 = 1'b1;	
							nx_state = s26;
						end
					else if( x63 && ~x62 && x55 && ~x10 && x1 && ~x22 && x2 && x3 && x42 )
						nx_state = s77;
					else if( x63 && ~x62 && x55 && ~x10 && x1 && ~x22 && x2 && x3 && ~x42 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 && x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && ~x11 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && ~x62 && x55 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && ~x62 && x55 && ~x10 && ~x1 && x42 && x35 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && x55 && ~x10 && ~x1 && x42 && ~x35 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && x55 && ~x10 && ~x1 && ~x42 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && x41 && x39 && x46 && x51 && x36 )
						nx_state = s77;
					else if( x63 && ~x62 && ~x55 && x41 && x39 && x46 && x51 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && x41 && x39 && x46 && ~x51 && x36 )
						nx_state = s77;
					else if( x63 && ~x62 && ~x55 && x41 && x39 && x46 && ~x51 && ~x36 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && ~x55 && x41 && x39 && ~x46 && x36 )
						nx_state = s77;
					else if( x63 && ~x62 && ~x55 && x41 && x39 && ~x46 && ~x36 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && ~x62 && ~x55 && x41 && ~x39 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && x34 && x8 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && x34 && ~x8 && x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && x34 && ~x8 && ~x36 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && ~x34 && x32 && x38 )
						begin
							y39 = 1'b1;	
							nx_state = s33;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && x54 && x36 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && x54 && ~x36 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && ~x54 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && x11 && ~x34 && ~x32 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && x12 && x51 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && x12 && ~x51 && x33 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && x12 && ~x51 && ~x33 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && x34 && x37 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && x34 && ~x37 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && ~x34 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && ~x32 )
						begin
							y31 = 1'b1;	
							nx_state = s30;
						end
					else if( x63 && ~x62 && ~x55 && ~x41 && ~x11 && ~x12 && ~x44 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && x62 && x18 && x17 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x5 && x6 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && x18 && x17 && ~x5 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x1 && x16 && x15 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x1 && x16 && x15 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x1 && x16 && x15 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x1 && x16 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x1 && ~x16 && x15 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x1 && ~x16 && ~x15 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x18 && ~x17 && x1 && ~x16 && ~x15 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x18 && ~x17 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x62 && ~x18 && x17 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x62 && ~x18 && x17 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x15 && x16 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x15 && x16 && ~x5 && x6 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x15 && x16 && ~x5 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x15 && ~x16 && x1 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && x15 && ~x16 && ~x1 )
						nx_state = s77;
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x15 && x16 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x15 && ~x16 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && ~x18 && ~x17 && ~x15 && ~x16 && ~x37 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x62 && x10 && x6 && x7 && x2 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && x10 && x6 && x7 && x2 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && x10 && x6 && x7 && x2 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && x10 && x6 && x7 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x10 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && x10 && x6 && ~x7 && ~x8 && x2 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x10 && ~x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && x10 && ~x6 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && ~x5 && x6 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x10 && ~x11 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s77;
				s78 : if( x62 && x63 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x62 && x63 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && x63 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x62 && ~x63 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x62 && ~x63 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && ~x63 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && x63 && x32 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x62 && x63 && ~x32 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && ~x32 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && ~x63 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x62 && ~x63 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x62 && ~x63 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s78;
				s79 : if( x62 && x63 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x62 && x63 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && x63 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( x62 && ~x63 && x1 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( x62 && ~x63 && ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && ~x63 && ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && x63 && x32 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x62 && x63 && ~x32 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && ~x32 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x62 && ~x63 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && ~x2 )
						begin
							y7 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s79;
				s80 : if( x63 && x8 && x62 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x8 && ~x62 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x63 && ~x8 )
						begin
							y13 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x63 && x62 && x44 && x9 )
						begin
							y17 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x63 && x62 && x44 && ~x9 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x62 && x44 && ~x9 && ~x3 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x62 && ~x44 && x29 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && x62 && ~x44 && x29 && ~x50 )
						nx_state = s80;
					else if( ~x63 && x62 && ~x44 && ~x29 && x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x62 && ~x44 && ~x29 && ~x45 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && ~x62 && x61 && x37 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && x61 && x37 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && x61 && ~x37 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && ~x62 && ~x61 && x2 && x10 && x1 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && ~x61 && x2 && x10 && x1 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && ~x61 && x2 && x10 && x1 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && ~x61 && x2 && x10 && ~x1 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x63 && ~x62 && ~x61 && x2 && x10 && ~x1 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && ~x61 && x2 && ~x10 )
						nx_state = s80;
					else if( ~x63 && ~x62 && ~x61 && ~x2 && x10 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x2 && x10 && ~x1 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x2 && ~x10 )
						nx_state = s80;
					else nx_state = s80;
				s81 : if( x62 && x26 && x28 && x6 && x63 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x62 && x26 && x28 && x6 && ~x63 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x62 && x26 && x28 && ~x6 && x4 && x63 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && x26 && x28 && ~x6 && x4 && ~x63 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x62 && x26 && x28 && ~x6 && ~x4 )
						nx_state = s1;
					else if( x62 && x26 && ~x28 )
						nx_state = s1;
					else if( x62 && ~x26 && x27 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && ~x26 && ~x27 && x28 )
						begin
							y42 = 1'b1;	
							nx_state = s118;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && x55 && x24 && x26 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x62 && x63 && x55 && x24 && x26 && ~x7 )
						begin
							y28 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x62 && x63 && x55 && x24 && ~x26 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && x63 && x55 && ~x24 && x28 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x62 && x63 && x55 && ~x24 && ~x28 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x63 && ~x55 && x31 && x50 && x10 )
						begin
							y38 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && x63 && ~x55 && x31 && x50 && ~x10 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && x63 && ~x55 && x31 && ~x50 )
						nx_state = s81;
					else if( ~x62 && x63 && ~x55 && ~x31 )
						begin
							y37 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x62 && ~x63 && x61 && x50 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && ~x63 && x61 && x50 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x63 && x61 && x50 && ~x19 )
						nx_state = s81;
					else if( ~x62 && ~x63 && x61 && ~x50 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x62 && ~x63 && ~x61 && x11 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && ~x63 && ~x61 && x11 && ~x10 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x62 && ~x63 && ~x61 && x11 && ~x10 && ~x7 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && ~x10 && x12 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && ~x10 && ~x12 && x1 )
						begin
							y20 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && ~x10 && ~x12 && ~x1 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && ~x10 && ~x12 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s81;
				s82 : if( x62 && x10 && x6 && x7 && x2 && x63 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x10 && x6 && x7 && x2 && x63 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x10 && x6 && x7 && x2 && x63 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x10 && x6 && x7 && x2 && ~x63 && x41 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && x10 && x6 && x7 && x2 && ~x63 && ~x41 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x10 && x6 && x7 && x2 && ~x63 && ~x41 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x10 && x6 && x7 && ~x2 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x10 && x6 && ~x7 && x8 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x10 && x6 && ~x7 && ~x8 && x2 && x63 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x10 && x6 && ~x7 && ~x8 && x2 && x63 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x10 && x6 && ~x7 && ~x8 && x2 && x63 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x10 && x6 && ~x7 && ~x8 && x2 && ~x63 && x41 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && x10 && x6 && ~x7 && ~x8 && x2 && ~x63 && ~x41 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x10 && x6 && ~x7 && ~x8 && x2 && ~x63 && ~x41 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x10 && ~x6 && x63 && x2 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x10 && ~x6 && x63 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x10 && ~x6 && ~x63 && x34 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x10 && ~x6 && ~x63 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x10 && x11 && x5 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && ~x10 && x11 && ~x5 && x6 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x10 && ~x11 && x63 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && ~x10 && ~x11 && ~x63 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && x10 && x6 && x7 && x33 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && x10 && x6 && x7 && x33 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && x10 && x6 && x7 && x33 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && x10 && x6 && x7 && ~x33 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x10 && x6 && ~x7 && x39 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x10 && x6 && ~x7 && ~x39 && x33 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && x10 && x6 && ~x7 && ~x39 && x33 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && x10 && x6 && ~x7 && ~x39 && x33 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && x10 && x6 && ~x7 && ~x39 && ~x33 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x10 && ~x6 && x2 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x10 && ~x6 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x10 && x11 && x5 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && ~x10 && x11 && ~x5 && x37 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x10 && x11 && ~x5 && ~x37 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x10 && ~x11 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s82;
				s83 : if( x62 && x63 && x8 && x1 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x62 && x63 && x8 && ~x1 && x4 )
						begin
							y22 = 1'b1;	
							nx_state = s148;
						end
					else if( x62 && x63 && x8 && ~x1 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x8 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && ~x63 && x7 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x62 && ~x63 && ~x7 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 )
						begin
							y52 = 1'b1;	
							nx_state = s147;
						end
					else nx_state = s83;
				s84 : if( x62 && x63 && x40 && x50 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && x40 && x50 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && x40 && x50 && ~x19 )
						nx_state = s84;
					else if( x62 && x63 && x40 && ~x50 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && ~x40 && x11 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && x7 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x7 )
						begin
							y44 = 1'b1;	
							nx_state = s149;
						end
					else if( x62 && x63 && ~x40 && ~x11 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && x12 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && ~x12 && x1 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && ~x12 && ~x1 && x4 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && ~x12 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && ~x63 && x44 && x50 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && x44 && x50 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && x44 && x50 && ~x19 )
						nx_state = s84;
					else if( x62 && ~x63 && x44 && ~x50 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x11 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && x7 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x7 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x12 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x12 && x37 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x12 && ~x37 && x4 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x12 && ~x37 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && x55 && x50 && x41 && x19 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && x55 && x50 && x41 && ~x19 )
						nx_state = s84;
					else if( ~x62 && x55 && x50 && ~x41 && x19 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && x55 && x50 && ~x41 && ~x19 )
						nx_state = s84;
					else if( ~x62 && x55 && ~x50 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && x10 && x11 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && x10 && ~x11 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && x38 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x38 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && x12 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && ~x12 && x1 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && ~x12 && ~x1 && x35 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && ~x12 && ~x1 && ~x35 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s84;
				s85 : if( x62 && x63 && x40 && x17 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && x40 && x17 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && x40 && x17 && ~x19 )
						nx_state = s85;
					else if( x62 && x63 && x40 && ~x17 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x63 && x40 && ~x17 && ~x20 && x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && ~x17 && ~x20 && ~x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x63 && ~x40 && x11 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x62 && x63 && ~x40 && ~x11 && x10 && x12 && x4 && x1 )
						nx_state = s85;
					else if( x62 && x63 && ~x40 && ~x11 && x10 && x12 && x4 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && ~x40 && ~x11 && x10 && x12 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && ~x11 && x10 && ~x12 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && x44 && x17 && x19 && x10 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && x44 && x17 && x19 && ~x10 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && x44 && x17 && ~x19 )
						nx_state = s85;
					else if( x62 && ~x63 && x44 && ~x17 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x63 && x44 && ~x17 && ~x20 && x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && ~x17 && ~x20 && ~x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && ~x44 && x11 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && x11 && ~x10 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && ~x63 && ~x44 && ~x11 && x10 && x12 && x4 && x1 )
						nx_state = s85;
					else if( x62 && ~x63 && ~x44 && ~x11 && x10 && x12 && x4 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && ~x44 && ~x11 && x10 && x12 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x44 && ~x11 && x10 && ~x12 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && ~x11 && ~x10 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && x55 && x17 && x41 && x19 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && x55 && x17 && x41 && ~x19 )
						nx_state = s85;
					else if( ~x62 && x55 && x17 && ~x41 && x19 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && x55 && x17 && ~x41 && ~x19 )
						nx_state = s85;
					else if( ~x62 && x55 && ~x17 && x20 )
						begin
							y1 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x62 && x55 && ~x17 && ~x20 && x2 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && ~x17 && ~x20 && ~x2 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && ~x55 && x10 && x11 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && x10 && ~x11 && x43 && x4 && x32 )
						nx_state = s85;
					else if( ~x62 && ~x55 && x10 && ~x11 && x43 && x4 && ~x32 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && x10 && ~x11 && x43 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && x10 && ~x11 && ~x43 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s85;
				s86 : if( x62 && x8 && x37 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x62 && x8 && ~x37 && x4 )
						begin
							y22 = 1'b1;	
							nx_state = s148;
						end
					else if( x62 && x8 && ~x37 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x8 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s86;
				s87 : if( x62 && x63 && x28 && x43 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && x28 && ~x43 )
						nx_state = s87;
					else if( x62 && x63 && ~x28 && x27 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && ~x28 && x27 && ~x8 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x63 && ~x28 && ~x27 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( x62 && ~x63 && ~x15 && x13 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && ~x63 && ~x15 && x13 && ~x11 && x6 && x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( x62 && ~x63 && ~x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x62 && ~x63 && ~x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && ~x63 && ~x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else if( x62 && ~x63 && ~x15 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && ~x63 && ~x15 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && ~x63 && ~x15 && ~x13 && ~x14 && ~x9 && x6 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && ~x63 && ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x33 )
						nx_state = s87;
					else if( x62 && ~x63 && ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && ~x63 && ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s87;
					else if( ~x62 && x28 && x57 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && x28 && ~x57 )
						nx_state = s87;
					else if( ~x62 && ~x28 && x27 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x28 && x27 && ~x8 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && ~x28 && ~x27 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else nx_state = s87;
				s88 : if( x63 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x63 && x28 && x49 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && x28 && ~x49 )
						nx_state = s88;
					else if( ~x63 && ~x28 && x27 && x8 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && ~x28 && x27 && ~x8 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x63 && ~x28 && ~x27 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else nx_state = s88;
				s89 : if( x62 && x15 && x3 && x11 && x2 )
						begin
							y20 = 1'b1;	
							nx_state = s103;
						end
					else if( x62 && x15 && x3 && x11 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && x3 && ~x11 && x4 && x12 && x13 && x2 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && x15 && x3 && ~x11 && x4 && x12 && x13 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s89;
					else if( x62 && x15 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s89;
					else if( x62 && x15 && x3 && ~x11 && ~x4 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && x11 && x63 && x2 )
						begin
							y48 = 1'b1;	
							nx_state = s151;
						end
					else if( x62 && x15 && ~x3 && x4 && x11 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && x11 && ~x63 && x33 )
						begin
							y49 = 1'b1;	
							nx_state = s152;
						end
					else if( x62 && x15 && ~x3 && x4 && x11 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x63 && x2 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x63 && x33 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x63 && x2 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x63 && x33 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && x63 && x2 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x63 && x33 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && ~x12 && x63 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && ~x12 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && x4 && ~x11 && ~x12 && ~x63 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && x15 && ~x3 && x4 && ~x11 && ~x12 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && x6 && x63 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && x6 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && x6 && ~x63 && x33 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && x6 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x63 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x63 && x33 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x63 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x63 && x33 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x63 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x63 && x33 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x63 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x63 && x33 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x63 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x63 && x33 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x63 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x63 && x33 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x63 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x63 && x33 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x63 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x63 && x33 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x63 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x63 && x33 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x63 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x63 && x33 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x63 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x63 && x33 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x63 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x63 && ~x2 )
						nx_state = s89;
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x63 && x33 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x63 && ~x33 )
						nx_state = s89;
					else if( x62 && ~x15 && x7 && x63 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && ~x15 && x7 && ~x63 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x62 && ~x15 && ~x7 && x9 && x63 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && ~x15 && ~x7 && x9 && ~x63 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x62 && ~x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( x62 && ~x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( x62 && ~x15 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && ~x15 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && x42 && x2 )
						begin
							y20 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x62 && x46 && x34 && x42 && ~x2 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && x3 && x35 && x43 && x44 && x2 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x62 && x46 && x34 && ~x42 && x3 && x35 && x43 && x44 && ~x2 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && x3 && x35 && x43 && ~x44 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && x3 && x35 && ~x43 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && x3 && ~x35 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && ~x3 && x35 && x43 && x44 && x2 )
						begin
							y47 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x62 && x46 && x34 && ~x42 && ~x3 && x35 && x43 && x44 && ~x2 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && ~x3 && x35 && x43 && ~x44 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && ~x3 && x35 && ~x43 )
						nx_state = s89;
					else if( ~x62 && x46 && x34 && ~x42 && ~x3 && ~x35 )
						nx_state = s89;
					else if( ~x62 && x46 && ~x34 && x33 && x4 && x11 )
						begin
							y51 = 1'b1;	
							nx_state = s153;
						end
					else if( ~x62 && x46 && ~x34 && x33 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y47 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x62 && x46 && ~x34 && x33 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && x46 && ~x34 && x33 && x4 && ~x11 && x12 && ~x13 )
						begin
							y12 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && x46 && ~x34 && x33 && x4 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && x5 && x37 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && x7 && x39 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && x7 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && ~x7 && x8 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && ~x7 && ~x8 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && x38 && x40 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && x38 && ~x40 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && ~x38 && x9 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && ~x38 && ~x9 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && ~x7 && x41 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x62 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && ~x7 && ~x41 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x46 && ~x34 && ~x33 )
						nx_state = s89;
					else if( ~x62 && ~x46 && x38 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x62 && ~x46 && ~x38 && x40 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x62 && ~x46 && ~x38 && ~x40 && x10 && x37 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x62 && ~x46 && ~x38 && ~x40 && x10 && ~x37 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x62 && ~x46 && ~x38 && ~x40 && ~x10 && x42 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && ~x46 && ~x38 && ~x40 && ~x10 && ~x42 )
						nx_state = s89;
					else nx_state = s89;
				s90 : if( x15 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x15 && x62 && x8 && x63 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x15 && x62 && x8 && ~x63 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x15 && x62 && ~x8 && x9 && x63 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x15 && x62 && ~x8 && x9 && ~x63 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x15 && x62 && ~x8 && ~x9 && x10 && x6 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x15 && x62 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x15 && x62 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x15 && x62 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s90;
					else if( ~x15 && ~x62 && x39 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x15 && ~x62 && ~x39 && x40 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x15 && ~x62 && ~x39 && ~x40 && x10 && x37 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x15 && ~x62 && ~x39 && ~x40 && x10 && ~x37 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x15 && ~x62 && ~x39 && ~x40 && ~x10 && x42 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x15 && ~x62 && ~x39 && ~x40 && ~x10 && ~x42 )
						nx_state = s90;
					else nx_state = s90;
				s91 : if( x15 && x63 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x15 && ~x63 )
						begin
							y41 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x15 && x63 && x12 )
						begin
							y41 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x15 && x63 && ~x12 )
						nx_state = s91;
					else if( ~x15 && ~x63 && x12 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x15 && ~x63 && ~x12 )
						nx_state = s91;
					else nx_state = s91;
				s92 : if( x62 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x62 && x15 && x13 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x62 && x15 && ~x13 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x62 && ~x15 && x12 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x62 && ~x15 && ~x12 )
						nx_state = s92;
					else nx_state = s92;
				s93 : if( x63 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( x63 && ~x15 && x13 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && ~x15 && x13 && ~x11 && x6 && x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( x63 && ~x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && ~x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x63 && ~x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else if( x63 && ~x15 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x15 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x15 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s93;
					else if( x63 && ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s44;
						end
					else if( x63 && ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s93;
					else if( ~x63 )
						begin
							y47 = 1'b1;	
							nx_state = s155;
						end
					else nx_state = s93;
				s94 : if( x63 && x62 && x26 && x28 && x23 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x63 && x62 && x26 && x28 && ~x23 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x62 && x26 && x28 && ~x23 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x62 && x26 && ~x28 && x3 && x25 )
						nx_state = s94;
					else if( x63 && x62 && x26 && ~x28 && x3 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x62 && x26 && ~x28 && ~x3 && x4 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && x62 && x26 && ~x28 && ~x3 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && x62 && x26 && ~x28 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && x62 && ~x26 && x27 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && x62 && ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( x63 && x62 && ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( x63 && x62 && ~x26 && ~x27 && x28 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( x63 && x62 && ~x26 && ~x27 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x62 && x46 && x47 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && x46 && ~x47 && x34 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( x63 && ~x62 && x46 && ~x47 && x34 && ~x2 )
						nx_state = s94;
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && x4 && x2 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && x4 && ~x2 )
						nx_state = s94;
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && x32 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && x32 && ~x2 )
						nx_state = s94;
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( x63 && ~x62 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && ~x2 )
						nx_state = s94;
					else if( x63 && ~x62 && ~x46 && x16 && x4 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && ~x46 && x16 && x4 && ~x5 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && ~x46 && x16 && x4 && ~x5 && ~x1 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && ~x62 && ~x46 && x16 && ~x4 && x32 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( x63 && ~x62 && ~x46 && x16 && ~x4 && ~x32 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( x63 && ~x62 && ~x46 && ~x16 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && x62 && x15 && x16 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && x62 && x15 && ~x16 && x31 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && x62 && x15 && ~x16 && x31 && ~x2 )
						nx_state = s94;
					else if( ~x63 && x62 && x15 && ~x16 && ~x31 && x4 && x2 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x31 && x4 && ~x2 )
						nx_state = s94;
					else if( ~x63 && x62 && x15 && ~x16 && ~x31 && ~x4 && x37 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x31 && ~x4 && x37 && ~x2 )
						nx_state = s94;
					else if( ~x63 && x62 && x15 && ~x16 && ~x31 && ~x4 && ~x37 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && x62 && x15 && ~x16 && ~x31 && ~x4 && ~x37 && ~x2 )
						nx_state = s94;
					else if( ~x63 && x62 && ~x15 && x16 && x4 && x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && x62 && ~x15 && x16 && x4 && ~x5 && x36 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && x62 && ~x15 && x16 && x4 && ~x5 && ~x36 )
						begin
							y37 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x63 && x62 && ~x15 && x16 && ~x4 && x37 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && x62 && ~x15 && x16 && ~x4 && ~x37 )
						begin
							y39 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x63 && x62 && ~x15 && ~x16 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && x51 && x24 && x5 && x36 )
						nx_state = s94;
					else if( ~x63 && ~x62 && x61 && x51 && x24 && x5 && ~x36 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x61 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && x51 && ~x24 && x31 && x29 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x61 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && x51 && ~x24 && ~x31 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && x11 && x35 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && x11 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && x11 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && ~x11 && x52 && x35 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && ~x11 && x52 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && ~x11 && x52 && ~x35 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && x61 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 && x4 && x5 && x3 )
						nx_state = s94;
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 && x4 && x5 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 && x4 && ~x5 && x3 )
						nx_state = s94;
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 && x4 && ~x5 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 && ~x4 && x3 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x10 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && ~x6 && x8 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x10 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x10 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 && x12 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 && x12 && ~x9 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 && ~x12 && x6 )
						begin
							y22 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 && ~x12 && ~x6 && x9 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x10 && ~x12 && ~x6 && ~x9 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s94;
				s95 : if( x63 && x28 && x26 && x62 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && x28 && x26 && x62 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x28 && x26 && x62 && ~x1 && ~x2 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x28 && x26 && x62 && ~x1 && ~x2 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x28 && x26 && ~x62 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x63 && x28 && x26 && ~x62 && ~x32 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x63 && x28 && x26 && ~x62 && ~x32 && ~x2 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x63 && x28 && x26 && ~x62 && ~x32 && ~x2 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x63 && x28 && ~x26 && x27 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( x63 && x28 && ~x26 && ~x27 && x62 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && x28 && ~x26 && ~x27 && x62 && ~x1 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x28 && ~x26 && ~x27 && x62 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && x28 && ~x26 && ~x27 && ~x62 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x63 && x28 && ~x26 && ~x27 && ~x62 && ~x1 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x63 && x28 && ~x26 && ~x27 && ~x62 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x63 && ~x28 && x26 && x62 && x1 && x2 && x3 && x25 )
						nx_state = s95;
					else if( x63 && ~x28 && x26 && x62 && x1 && x2 && x3 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x63 && ~x28 && x26 && x62 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x63 && ~x28 && x26 && x62 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x28 && x26 && x62 && x1 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && ~x28 && x26 && x62 && x1 && ~x2 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( x63 && ~x28 && x26 && x62 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && ~x28 && x26 && ~x62 && x32 && x33 && x34 && x25 )
						nx_state = s95;
					else if( x63 && ~x28 && x26 && ~x62 && x32 && x33 && x34 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x63 && ~x28 && x26 && ~x62 && x32 && x33 && ~x34 && x35 && x36 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x28 && x26 && ~x62 && x32 && x33 && ~x34 && x35 && ~x36 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x63 && ~x28 && x26 && ~x62 && x32 && x33 && ~x34 && ~x35 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x63 && ~x28 && x26 && ~x62 && x32 && ~x33 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( x63 && ~x28 && x26 && ~x62 && ~x32 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x63 && ~x28 && ~x26 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x63 && x62 && x26 && x37 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x63 && x62 && x26 && x37 && ~x28 && x32 && x3 && x25 )
						nx_state = s95;
					else if( ~x63 && x62 && x26 && x37 && ~x28 && x32 && x3 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x63 && x62 && x26 && x37 && ~x28 && x32 && ~x3 && x4 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && x62 && x26 && x37 && ~x28 && x32 && ~x3 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x63 && x62 && x26 && x37 && ~x28 && x32 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x63 && x62 && x26 && x37 && ~x28 && ~x32 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x63 && x62 && x26 && ~x37 && x28 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x63 && x62 && x26 && ~x37 && x28 && ~x2 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x63 && x62 && x26 && ~x37 && x28 && ~x2 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x63 && x62 && x26 && ~x37 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x63 && x62 && ~x26 && x27 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x63 && x62 && ~x26 && ~x27 && x28 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x63 && x62 && ~x26 && ~x27 && x28 && ~x1 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x63 && x62 && ~x26 && ~x27 && x28 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x63 && x62 && ~x26 && ~x27 && ~x28 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x63 && ~x62 )
						begin
							y1 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s95;
				s96 : if( x62 && x63 && x40 && x51 && x24 && x5 && x36 )
						nx_state = s96;
					else if( x62 && x63 && x40 && x51 && x24 && x5 && ~x36 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && x51 && x24 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && x51 && ~x24 && x31 && x29 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && x51 && ~x24 && x31 && ~x29 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && x51 && ~x24 && ~x31 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && ~x51 && x11 && x35 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && x40 && ~x51 && x11 && x35 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x51 && x11 && ~x35 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x51 && x11 && ~x35 && ~x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x51 && ~x11 && x49 && x35 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x62 && x63 && x40 && ~x51 && ~x11 && x49 && ~x35 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x51 && ~x11 && x49 && ~x35 && ~x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x51 && ~x11 && ~x49 && x3 && x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && x63 && x40 && ~x51 && ~x11 && ~x49 && x3 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && x40 && ~x51 && ~x11 && ~x49 && ~x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && x11 && x10 && x4 && x5 && x3 )
						nx_state = s96;
					else if( x62 && x63 && ~x40 && x11 && x10 && x4 && x5 && ~x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && x11 && x10 && x4 && ~x5 && x3 )
						nx_state = s96;
					else if( x62 && x63 && ~x40 && x11 && x10 && x4 && ~x5 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && x63 && ~x40 && x11 && x10 && ~x4 && x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && x11 && x10 && ~x4 && ~x3 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && x6 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x6 && x8 && x4 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && ~x40 && x11 && ~x10 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && ~x11 && x10 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && ~x11 && x10 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && x12 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && x12 && ~x9 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && ~x12 && x6 )
						begin
							y23 = 1'b1;	
							nx_state = s126;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && ~x12 && ~x6 && x9 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x11 && ~x10 && ~x12 && ~x6 && ~x9 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && x51 && x24 && x5 && x36 )
						nx_state = s96;
					else if( x62 && ~x63 && x44 && x51 && x24 && x5 && ~x36 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x44 && x51 && x24 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && x51 && ~x24 && x31 && x29 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x44 && x51 && ~x24 && x31 && ~x29 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && x51 && ~x24 && ~x31 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x44 && ~x51 && x11 && x35 && x5 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && x44 && ~x51 && x11 && x35 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x51 && x11 && ~x35 && x45 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x51 && x11 && ~x35 && ~x45 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x51 && ~x11 && x52 && x35 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && ~x63 && x44 && ~x51 && ~x11 && x52 && ~x35 && x45 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x51 && ~x11 && x52 && ~x35 && ~x45 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x51 && ~x11 && ~x52 && x41 && x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && ~x63 && x44 && ~x51 && ~x11 && ~x52 && x41 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && ~x51 && ~x11 && ~x52 && ~x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x11 && x4 && x5 && x3 )
						nx_state = s96;
					else if( x62 && ~x63 && ~x44 && x10 && x11 && x4 && x5 && ~x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x11 && x4 && ~x5 && x3 )
						nx_state = s96;
					else if( x62 && ~x63 && ~x44 && x10 && x11 && x4 && ~x5 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x11 && ~x4 && x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x11 && ~x4 && ~x3 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && x34 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && x6 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x6 && x8 && x4 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && x41 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && ~x41 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x12 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x12 && ~x9 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x12 && x6 )
						begin
							y23 = 1'b1;	
							nx_state = s126;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x12 && ~x6 && x9 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x12 && ~x6 && ~x9 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && x51 && x24 && x36 )
						nx_state = s96;
					else if( ~x62 && x55 && x51 && x24 && ~x36 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && x51 && ~x24 && x31 && x29 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && x51 && ~x24 && x31 && ~x29 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && x51 && ~x24 && ~x31 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && ~x51 && x42 && x35 && x36 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && x55 && ~x51 && x42 && x35 && ~x36 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x51 && x42 && ~x35 && x58 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x51 && x42 && ~x35 && ~x58 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x51 && ~x42 && x52 && x35 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x62 && x55 && ~x51 && ~x42 && x52 && ~x35 && x58 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x51 && ~x42 && x52 && ~x35 && ~x58 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x51 && ~x42 && ~x52 && x3 && x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x62 && x55 && ~x51 && ~x42 && ~x52 && x3 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && ~x51 && ~x42 && ~x52 && ~x3 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && x10 && x11 && x34 && x35 )
						nx_state = s96;
					else if( ~x62 && ~x55 && x10 && x11 && x34 && ~x35 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && x10 && x11 && ~x34 && x4 && x5 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && x10 && x11 && ~x34 && x4 && ~x5 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x55 && x10 && x11 && ~x34 && ~x4 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && ~x55 && x10 && ~x11 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && x10 && ~x11 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && x37 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x37 && x8 && x4 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && x1 && x34 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && x1 && ~x34 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && ~x1 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x37 && ~x8 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && x12 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && x12 && ~x9 )
						begin
							y46 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && ~x12 && x6 )
						begin
							y23 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && ~x12 && ~x6 && x40 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 && ~x12 && ~x6 && ~x40 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else nx_state = s96;
				s97 : if( x15 && x62 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( x15 && ~x62 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s97;
				s98 : if( x15 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x15 && x62 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x15 && x62 && ~x5 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x15 && ~x62 && x36 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x15 && ~x62 && ~x36 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else nx_state = s98;
				s99 : if( x62 && x15 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( x62 && ~x15 && x3 && x2 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && ~x15 && x3 && ~x2 )
						nx_state = s99;
					else if( x62 && ~x15 && ~x3 && x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( x62 && ~x15 && ~x3 && x4 && ~x2 )
						nx_state = s99;
					else if( x62 && ~x15 && ~x3 && ~x4 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x62 && ~x15 && ~x3 && ~x4 && ~x2 )
						nx_state = s99;
					else if( ~x62 && x46 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x62 && ~x46 && x34 && x2 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && ~x46 && x34 && ~x2 )
						nx_state = s99;
					else if( ~x62 && ~x46 && ~x34 && x35 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x46 && ~x34 && x35 && ~x2 )
						nx_state = s99;
					else if( ~x62 && ~x46 && ~x34 && ~x35 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x62 && ~x46 && ~x34 && ~x35 && ~x2 )
						nx_state = s99;
					else nx_state = s99;
				s100 : if( x62 && x63 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( x62 && x63 && ~x15 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && x63 && ~x15 && ~x11 && x10 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && x63 && ~x15 && ~x11 && ~x10 )
						nx_state = s100;
					else if( x62 && ~x63 && x44 && x1 && x28 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x63 && x44 && x1 && ~x28 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && ~x1 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x37 && x2 && x41 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x37 && x2 && ~x41 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x37 && x2 && ~x41 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && ~x44 && x10 && x37 && ~x2 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x37 && x2 && x9 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x37 && x2 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x37 && ~x2 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 )
						nx_state = s100;
					else if( ~x62 && x46 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x62 && ~x46 && x44 && x35 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x46 && x44 && ~x35 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x62 && ~x46 && ~x44 && x14 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && x40 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && ~x40 && x38 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && ~x40 && ~x38 && x39 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && ~x46 && ~x44 && ~x14 && ~x40 && ~x38 && ~x39 )
						nx_state = s100;
					else nx_state = s100;
				s101 : if( x62 && x63 && x40 && x37 && x28 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x63 && x40 && x37 && ~x28 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && ~x37 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && ~x40 && x2 && x10 && x1 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x63 && ~x40 && x2 && x10 && x1 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && ~x40 && x2 && x10 && x1 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && ~x40 && x2 && x10 && ~x1 && x9 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( x62 && x63 && ~x40 && x2 && x10 && ~x1 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && ~x40 && x2 && ~x10 )
						nx_state = s101;
					else if( x62 && x63 && ~x40 && ~x2 && x10 && x1 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && ~x2 && x10 && ~x1 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && ~x40 && ~x2 && ~x10 )
						nx_state = s101;
					else if( x62 && ~x63 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( x62 && ~x63 && ~x15 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( x62 && ~x63 && ~x15 && ~x11 && x10 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && ~x63 && ~x15 && ~x11 && ~x10 )
						nx_state = s101;
					else if( ~x62 && x55 && x48 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && x55 && ~x48 && x57 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && x55 && ~x48 && ~x57 )
						nx_state = s101;
					else if( ~x62 && ~x55 && x37 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x55 && ~x37 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else nx_state = s101;
				s102 : if( x62 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( x62 && ~x15 && x13 && x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( x62 && ~x15 && x13 && ~x4 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x62 && ~x15 && ~x13 && x14 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && ~x15 && ~x13 && ~x14 && x9 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && ~x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s102;
					else if( ~x62 && x55 && x35 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x35 && x13 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x62 && x55 && ~x35 && ~x13 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x55 && x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && ~x41 && x42 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x42 && x38 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x42 && ~x38 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else nx_state = s102;
				s103 : if( x63 && x62 )
						begin
							y48 = 1'b1;	
							nx_state = s151;
						end
					else if( x63 && ~x62 )
						begin
							y51 = 1'b1;	
							nx_state = s153;
						end
					else if( ~x63 && x62 )
						begin
							y49 = 1'b1;	
							nx_state = s152;
						end
					else if( ~x63 && ~x62 && x61 && x29 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && ~x62 && x61 && x29 && ~x50 )
						nx_state = s103;
					else if( ~x63 && ~x62 && x61 && ~x29 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x63 && ~x62 && x61 && ~x29 && ~x60 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x6 && x9 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && x6 && ~x9 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x63 && ~x62 && ~x61 && x11 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x8 )
						begin
							y4 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x8 )
						begin
							y13 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s103;
				s104 : if( x63 && x62 && x40 && x29 && x50 )
						begin
							y44 = 1'b1;	
							nx_state = s149;
						end
					else if( x63 && x62 && x40 && x29 && ~x50 )
						nx_state = s104;
					else if( x63 && x62 && x40 && ~x29 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x63 && x62 && x40 && ~x29 && ~x41 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x63 && x62 && ~x40 && x11 && x6 && x9 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x63 && x62 && ~x40 && x11 && x6 && ~x9 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( x63 && x62 && ~x40 && x11 && ~x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x63 && x62 && ~x40 && ~x11 && x8 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x63 && x62 && ~x40 && ~x11 && ~x8 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x63 && ~x62 && x55 && x29 && x50 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x63 && ~x62 && x55 && x29 && ~x50 )
						nx_state = s104;
					else if( x63 && ~x62 && x55 && ~x29 && x58 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x63 && ~x62 && x55 && ~x29 && ~x58 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x63 && ~x62 && ~x55 && x11 && x6 && x40 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x63 && ~x62 && ~x55 && x11 && x6 && ~x40 )
						begin
							y54 = 1'b1;	
							nx_state = s141;
						end
					else if( x63 && ~x62 && ~x55 && x11 && ~x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x63 && ~x62 && ~x55 && ~x11 && x39 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x63 && ~x62 && ~x55 && ~x11 && ~x39 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x63 && x62 && x44 && x29 && x50 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x63 && x62 && x44 && x29 && ~x50 )
						nx_state = s104;
					else if( ~x63 && x62 && x44 && ~x29 && x45 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x63 && x62 && x44 && ~x29 && ~x45 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && x62 && ~x44 && x11 && x6 && x9 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x63 && x62 && ~x44 && x11 && x6 && ~x9 )
						begin
							y52 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x63 && x62 && ~x44 && x11 && ~x6 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x63 && x62 && ~x44 && ~x11 && x8 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && x62 && ~x44 && ~x11 && ~x8 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x63 && ~x62 && x61 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x63 && ~x62 && x61 && ~x50 )
						nx_state = s104;
					else if( ~x63 && ~x62 && ~x61 && x11 )
						begin
							y16 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x63 && ~x62 && ~x61 && ~x11 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s104;
				s105 : if( x26 )
						begin
							y31 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x26 && x28 && x62 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x26 && x28 && x62 && ~x5 )
						begin
							y15 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x26 && x28 && ~x62 && x36 )
						begin
							y14 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x26 && x28 && ~x62 && ~x36 )
						begin
							y15 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x26 && ~x28 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else nx_state = s105;
				s106 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 && x62 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x26 && ~x21 && ~x62 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && x27 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x62 && x3 && x63 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x26 && ~x27 && x28 && x62 && x3 && ~x63 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && ~x27 && x28 && x62 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x26 && ~x27 && x28 && ~x62 && x34 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && ~x27 && x28 && ~x62 && ~x34 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 && x62 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 && ~x62 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s106;
				s107 : if( x26 && x62 && x8 && x63 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x26 && x62 && x8 && x63 && ~x1 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x26 && x62 && x8 && x63 && ~x1 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x26 && x62 && x8 && ~x63 && x37 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x26 && x62 && x8 && ~x63 && ~x37 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x26 && x62 && x8 && ~x63 && ~x37 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x26 && x62 && ~x8 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( x26 && ~x62 && x39 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x26 && ~x62 && x39 && ~x32 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x26 && ~x62 && x39 && ~x32 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x26 && ~x62 && ~x39 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x62 && x7 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x26 && ~x28 && x6 && x62 && x7 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x28 && x6 && x62 && x7 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x28 && x6 && x62 && x7 && ~x5 && x63 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x26 && ~x28 && x6 && x62 && x7 && ~x5 && ~x63 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x26 && ~x28 && x6 && x62 && ~x7 && x8 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x26 && ~x28 && x6 && x62 && ~x7 && ~x8 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x26 && ~x28 && x6 && x62 && ~x7 && ~x8 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x28 && x6 && x62 && ~x7 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x28 && x6 && x62 && ~x7 && ~x8 && ~x5 && x63 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x26 && ~x28 && x6 && x62 && ~x7 && ~x8 && ~x5 && ~x63 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && x38 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && x38 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && x38 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && x38 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && ~x38 && x8 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && ~x38 && ~x8 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && ~x38 && ~x8 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && ~x38 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x28 && x6 && ~x62 && ~x38 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 && x62 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 && ~x62 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s107;
				s108 : if( x1 )
						begin
							y24 = 1'b1;	
							nx_state = s108;
						end
					else if( ~x1 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x1 && ~x35 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s108;
				s109 : if( x62 && x63 && x40 && x22 && x2 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && x63 && x40 && x22 && x2 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && x40 && x22 && x2 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && x63 && x40 && x22 && ~x2 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && x40 && ~x22 && x31 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && x40 && ~x22 && ~x31 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x63 && ~x40 && x46 && x3 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && x63 && ~x40 && x46 && x3 && ~x23 )
						nx_state = s109;
					else if( x62 && x63 && ~x40 && x46 && ~x3 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && x63 && ~x40 && ~x46 && x2 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && x63 && ~x40 && ~x46 && x2 && ~x23 )
						nx_state = s109;
					else if( x62 && x63 && ~x40 && ~x46 && ~x2 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && x44 && x22 && x2 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s109;
						end
					else if( x62 && ~x63 && x44 && x22 && x2 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && x44 && x22 && x2 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x62 && ~x63 && x44 && x22 && ~x2 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && x44 && ~x22 && x31 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && x44 && ~x22 && ~x31 )
						begin
							y3 = 1'b1;	
							nx_state = s14;
						end
					else if( x62 && ~x63 && ~x44 && x46 && x3 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && ~x63 && ~x44 && x46 && x3 && ~x23 )
						nx_state = s109;
					else if( x62 && ~x63 && ~x44 && x46 && ~x3 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x62 && ~x63 && ~x44 && ~x46 && x33 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( x62 && ~x63 && ~x44 && ~x46 && x33 && ~x23 )
						nx_state = s109;
					else if( x62 && ~x63 && ~x44 && ~x46 && ~x33 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x25 )
						nx_state = s1;
					else if( ~x62 && ~x25 && x28 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && ~x25 && ~x28 )
						nx_state = s1;
					else nx_state = s109;
				s110 : if( x62 && x63 )
						begin
							y6 = 1'b1;	
							nx_state = s9;
						end
					else if( x62 && ~x63 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else nx_state = s110;
				s111 : if( x62 && x25 )
						nx_state = s1;
					else if( x62 && ~x25 && x28 && x63 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && ~x25 && x28 && ~x63 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x62 && ~x25 && ~x28 )
						nx_state = s1;
					else if( ~x62 && x55 && x22 && x2 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x62 && x55 && x22 && x2 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x55 && x22 && x2 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x55 && x22 && ~x2 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x55 && ~x22 && x31 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && x55 && ~x22 && ~x31 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x55 && x46 && x3 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && ~x55 && x46 && x3 && ~x23 )
						nx_state = s111;
					else if( ~x62 && ~x55 && x46 && ~x3 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x62 && ~x55 && ~x46 && x33 && x23 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && ~x55 && ~x46 && x33 && ~x23 )
						nx_state = s111;
					else if( ~x62 && ~x55 && ~x46 && ~x33 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else nx_state = s111;
				s112 : if( x15 )
						begin
							y17 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x15 && x12 )
						begin
							y11 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x15 && ~x12 )
						nx_state = s112;
					else nx_state = s112;
				s113 : if( x15 )
						begin
							y20 = 1'b1;	
							nx_state = s158;
						end
					else if( ~x15 && x13 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x15 && x13 && ~x11 && x6 && x4 )
						begin
							y7 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s113;
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s113;
					else nx_state = s113;
				s114 : if( x62 && x26 && x28 && x3 && x5 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( x62 && x26 && x28 && x3 && ~x5 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && x26 && x28 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x62 && x26 && ~x28 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x62 && ~x26 && x27 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x62 && ~x26 && ~x27 && x28 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x62 && ~x26 && ~x27 && x28 && ~x5 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && x63 && x26 && x28 && x3 && x5 )
						begin
							y39 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x62 && x63 && x26 && x28 && x3 && ~x5 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && x26 && x28 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && x26 && ~x28 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && x63 && ~x26 && x27 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && x36 && x28 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && x36 && ~x28 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && x36 && ~x28 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && x36 && ~x28 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && ~x36 && x28 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && ~x36 && ~x28 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && ~x63 && x15 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && ~x63 && ~x15 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x5 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else nx_state = s114;
				s115 : if( x62 && x26 && x28 && x23 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( x62 && x26 && x28 && ~x23 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x62 && x26 && x28 && ~x23 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x62 && x26 && ~x28 && x3 && x25 )
						nx_state = s115;
					else if( x62 && x26 && ~x28 && x3 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x62 && x26 && ~x28 && ~x3 && x4 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x62 && x26 && ~x28 && ~x3 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x62 && x26 && ~x28 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x62 && ~x26 && x27 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( x62 && ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( x62 && ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( x62 && ~x26 && ~x27 && x28 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s8;
						end
					else if( x62 && ~x26 && ~x27 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && x26 && x28 && x23 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && x63 && x26 && x28 && ~x23 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && x63 && x26 && x28 && ~x23 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x26 && ~x28 && x34 && x25 )
						nx_state = s115;
					else if( ~x62 && x63 && x26 && ~x28 && x34 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x26 && ~x28 && ~x34 && x35 && x36 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && x26 && ~x28 && ~x34 && x35 && ~x36 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && x63 && x26 && ~x28 && ~x34 && ~x35 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x62 && x63 && ~x26 && x27 && x35 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x26 && x27 && ~x35 )
						nx_state = s1;
					else if( ~x62 && x63 && ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( ~x62 && x63 && ~x26 && ~x27 && x28 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && ~x63 && x15 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && ~x63 && ~x15 && x3 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x62 && ~x63 && ~x15 && x3 && ~x2 )
						nx_state = s115;
					else if( ~x62 && ~x63 && ~x15 && ~x3 && x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x3 && x4 && ~x2 )
						nx_state = s115;
					else if( ~x62 && ~x63 && ~x15 && ~x3 && ~x4 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x3 && ~x4 && ~x2 )
						nx_state = s115;
					else nx_state = s115;
				s116 : if( x26 && x28 && x3 && x5 )
						begin
							y9 = 1'b1;	
							nx_state = s162;
						end
					else if( x26 && x28 && x3 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( x26 && x28 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x28 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else if( ~x26 && x27 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x26 && ~x27 && x28 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x26 && ~x27 && x28 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && ~x27 && ~x28 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s164;
						end
					else if( ~x26 && ~x27 && ~x28 && x5 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x26 && ~x27 && ~x28 && x5 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else nx_state = s116;
				s117 : if( x26 && x28 && x23 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else if( x26 && x28 && ~x23 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( x26 && x28 && ~x23 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( x26 && ~x28 && x3 && x25 )
						nx_state = s117;
					else if( x26 && ~x28 && x3 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( x26 && ~x28 && ~x3 && x4 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x28 && ~x3 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else if( x26 && ~x28 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && x27 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && ~x11 )
						begin
							y16 = 1'b1;	
							nx_state = s166;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s117;
				s118 : if( x62 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s60;
						end
					else if( x62 && ~x6 )
						begin
							y15 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x62 && x37 )
						begin
							y13 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x62 && ~x37 )
						begin
							y15 = 1'b1;	
							nx_state = s157;
						end
					else nx_state = s118;
				s119 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && x27 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && ~x27 && x28 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s164;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 )
						begin
							y10 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y9 = 1'b1;	
							nx_state = s162;
						end
					else nx_state = s119;
				s120 : if( x6 )
						begin
							y13 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x6 )
						begin
							y15 = 1'b1;	
							nx_state = s157;
						end
					else nx_state = s120;
				s121 : if( x61 && x11 && x25 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x61 && x11 && x25 && ~x3 && x5 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x61 && x11 && x25 && ~x3 && ~x5 )
						nx_state = s121;
					else if( x61 && x11 && ~x25 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x61 && ~x11 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x61 && x53 && x47 )
						nx_state = s121;
					else if( ~x61 && x53 && ~x47 && x59 && x51 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x61 && x53 && ~x47 && x59 && ~x51 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x61 && x53 && ~x47 && ~x59 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x61 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x61 && ~x53 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s121;
				s122 : if( x55 && x33 )
						begin
							y40 = 1'b1;	
							nx_state = s111;
						end
					else if( x55 && ~x33 && x13 )
						begin
							y3 = 1'b1;	
							nx_state = s15;
						end
					else if( x55 && ~x33 && ~x13 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x55 && x50 )
						begin
							y15 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x55 && ~x50 )
						nx_state = s122;
					else nx_state = s122;
				s123 : if( x15 )
						begin
							y20 = 1'b1;	
							nx_state = s158;
						end
					else if( ~x15 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x15 && ~x11 && x10 )
						begin
							y9 = 1'b1;	
							nx_state = s168;
						end
					else if( ~x15 && ~x11 && ~x10 )
						nx_state = s123;
					else nx_state = s123;
				s124 : if( x15 )
						begin
							y20 = 1'b1;	
							nx_state = s158;
						end
					else if( ~x15 && x13 && x4 )
						begin
							y7 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x15 && x13 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s124;
					else nx_state = s124;
				s125 : if( x62 && x44 && x53 && x47 )
						nx_state = s125;
					else if( x62 && x44 && x53 && ~x47 && x48 && x51 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x44 && x53 && ~x47 && x48 && ~x51 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x44 && x53 && ~x47 && ~x48 && x34 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x44 && x53 && ~x47 && ~x48 && ~x34 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x44 && ~x53 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x44 && x11 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x44 && ~x11 && x1 && x34 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && ~x44 && ~x11 && x1 && ~x34 && x3 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x44 && ~x11 && x1 && ~x34 && ~x3 )
						nx_state = s125;
					else if( x62 && ~x44 && ~x11 && ~x1 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && x63 && x55 && x53 && x47 )
						nx_state = s125;
					else if( ~x62 && x63 && x55 && x53 && ~x47 && x59 && x51 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x63 && x55 && x53 && ~x47 && x59 && ~x51 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x63 && x55 && x53 && ~x47 && ~x59 && x34 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x63 && x55 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x63 && x55 && ~x53 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x63 && ~x55 && x11 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x63 && ~x55 && ~x11 && x1 && x33 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x63 && ~x55 && ~x11 && x1 && ~x33 && x34 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x63 && ~x55 && ~x11 && x1 && ~x33 && ~x34 )
						nx_state = s125;
					else if( ~x62 && x63 && ~x55 && ~x11 && ~x1 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x63 && x61 && x53 && x47 )
						nx_state = s125;
					else if( ~x62 && ~x63 && x61 && x53 && ~x47 && x59 && x51 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x63 && x61 && x53 && ~x47 && x59 && ~x51 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && ~x63 && x61 && x53 && ~x47 && ~x59 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && ~x63 && x61 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x63 && x61 && ~x53 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x63 && ~x61 && x11 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && x1 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && x1 && ~x2 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && ~x63 && ~x61 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s125;
					else if( ~x62 && ~x63 && ~x61 && ~x11 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s125;
				s126 : if( x63 && x3 && x62 && x5 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x3 && x62 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x3 && ~x62 && x5 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x63 && x3 && ~x62 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( x63 && ~x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x63 && x62 && x42 && x5 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && x62 && x42 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x62 && ~x42 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x63 && ~x62 && x7 )
						begin
							y20 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x62 && ~x7 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s126;
				s127 : if( x62 && x63 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && ~x63 )
						begin
							y50 = 1'b1;	
							nx_state = s146;
						end
					else if( ~x62 && x45 && x13 )
						begin
							y52 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x62 && x45 && ~x13 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x62 && ~x45 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else nx_state = s127;
				s128 : if( x62 && x15 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( x62 && ~x15 && x6 )
						begin
							y35 = 1'b1;	
							nx_state = s89;
						end
					else if( x62 && ~x15 && ~x6 )
						begin
							y34 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x62 && x63 && x41 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x63 && x41 && ~x12 && x32 && x2 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x63 && x41 && ~x12 && x32 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x63 && x41 && ~x12 && ~x32 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && x63 && ~x41 && x42 && x32 )
						begin
							y54 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x62 && x63 && ~x41 && x42 && ~x32 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && x63 && ~x41 && x42 && ~x32 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && x63 && ~x41 && ~x42 && x43 && x34 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x63 && ~x41 && ~x42 && x43 && ~x34 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && x63 && ~x41 && ~x42 && ~x43 && x6 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x63 && ~x41 && ~x42 && ~x43 && ~x6 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x63 && x10 && x12 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && ~x63 && x10 && ~x12 && x1 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && x10 && ~x12 && x1 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && ~x63 && x10 && ~x12 && ~x1 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && ~x63 && ~x10 && x11 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x62 && ~x63 && ~x10 && x11 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && ~x63 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x11 && x12 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x11 && x12 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x11 && ~x12 && x6 )
						begin
							y10 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && ~x63 && ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else nx_state = s128;
				s129 : if( x61 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x61 && ~x3 && x2 )
						begin
							y15 = 1'b1;	
							nx_state = s53;
						end
					else if( x61 && ~x3 && ~x2 && x28 )
						begin
							y2 = 1'b1;	
							nx_state = s52;
						end
					else if( x61 && ~x3 && ~x2 && ~x28 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x61 && x10 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x61 && x10 && x5 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s51;
						end
					else if( ~x61 && x10 && x5 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x61 && x10 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x61 && ~x10 && x11 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x61 && ~x10 && ~x11 )
						nx_state = s129;
					else nx_state = s129;
				s130 : if( x61 && x9 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x61 && ~x9 && x37 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x61 && ~x9 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x61 && x10 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x61 && ~x10 && x11 && x1 )
						begin
							y24 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x61 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x61 && ~x10 && ~x11 )
						begin
							y5 = 1'b1;	
							nx_state = s38;
						end
					else nx_state = s130;
				s131 : if( x14 && x13 )
						begin
							y21 = 1'b1;	
							nx_state = s169;
						end
					else if( x14 && ~x13 )
						begin
							y11 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x14 )
						begin
							y16 = 1'b1;	
							nx_state = s123;
						end
					else nx_state = s131;
				s132 : if( x19 )
						begin
							y13 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x19 && x26 && x5 )
						begin
							y8 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x19 && x26 && ~x5 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x19 && ~x26 )
						begin
							y25 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s132;
				s133 : if( x62 && x26 && x28 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x62 && x26 && x28 && ~x7 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && x26 && ~x28 )
						nx_state = s1;
					else if( x62 && ~x26 && x27 && x25 && x9 )
						nx_state = s133;
					else if( x62 && ~x26 && x27 && x25 && ~x9 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( x62 && ~x26 && x27 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x62 && ~x26 && ~x27 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x62 && x63 && x26 && x28 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x62 && x63 && x26 && x28 && ~x7 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && x26 && ~x28 )
						nx_state = s1;
					else if( ~x62 && x63 && ~x26 && x27 && x25 && x9 )
						nx_state = s133;
					else if( ~x62 && x63 && ~x26 && x27 && x25 && ~x9 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x62 && x63 && ~x26 && x27 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && ~x26 && ~x27 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && ~x63 && x15 && x3 && x11 && x2 )
						begin
							y19 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x62 && ~x63 && x15 && x3 && x11 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && x3 && ~x11 && x4 && x12 && x13 && x2 )
						begin
							y9 = 1'b1;	
							nx_state = s168;
						end
					else if( ~x62 && ~x63 && x15 && x3 && ~x11 && x4 && x12 && x13 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && x3 && ~x11 && ~x4 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && x11 && x2 )
						begin
							y20 = 1'b1;	
							nx_state = s171;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && x11 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x2 )
						begin
							y16 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x2 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && x2 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && ~x12 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && x4 && ~x11 && ~x12 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && x6 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && x6 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x2 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x2 )
						nx_state = s133;
					else if( ~x62 && ~x63 && ~x15 && x7 )
						begin
							y16 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x7 && x9 )
						begin
							y16 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y6 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s133;
					else nx_state = s133;
				s134 : if( x15 )
						begin
							y7 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x15 )
						begin
							y20 = 1'b1;	
							nx_state = s158;
						end
					else nx_state = s134;
				s135 : if( x26 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( x26 && ~x28 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && x27 && x4 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y9 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && ~x27 && x28 && ~x2 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s164;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x18 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s135;
				s136 : if( x15 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x15 && x2 && x3 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && x2 && ~x3 && x4 )
						begin
							y7 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x15 && ~x2 )
						nx_state = s136;
					else nx_state = s136;
				s137 : if( x62 && x15 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else if( x62 && ~x15 && x3 && x2 )
						begin
							y43 = 1'b1;	
							nx_state = s22;
						end
					else if( x62 && ~x15 && x3 && ~x2 )
						nx_state = s137;
					else if( x62 && ~x15 && ~x3 && x4 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( x62 && ~x15 && ~x3 && x4 && ~x2 )
						nx_state = s137;
					else if( x62 && ~x15 && ~x3 && ~x4 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( x62 && ~x15 && ~x3 && ~x4 && ~x2 )
						nx_state = s137;
					else if( ~x62 && x46 )
						begin
							y33 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x62 && ~x46 && x34 && x2 )
						begin
							y44 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x62 && ~x46 && x34 && ~x2 )
						nx_state = s137;
					else if( ~x62 && ~x46 && ~x34 && x35 && x2 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x46 && ~x34 && x35 && ~x2 )
						nx_state = s137;
					else if( ~x62 && ~x46 && ~x34 && ~x35 && x2 )
						begin
							y32 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x62 && ~x46 && ~x34 && ~x35 && ~x2 )
						nx_state = s137;
					else nx_state = s137;
				s138 : if( x62 && x63 && x40 && x35 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x35 && x13 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && x63 && x40 && ~x35 && ~x13 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x62 && x63 && ~x40 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && x7 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && ~x7 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && ~x63 && x44 && x35 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x35 && x13 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && ~x63 && x44 && ~x35 && ~x13 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x62 && ~x63 && ~x44 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x7 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x7 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x55 && x46 && x3 && x23 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && x55 && x46 && x3 && ~x23 )
						nx_state = s138;
					else if( ~x62 && x55 && x46 && ~x3 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x46 && x2 && x23 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && x55 && ~x46 && x2 && ~x23 )
						nx_state = s138;
					else if( ~x62 && x55 && ~x46 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && ~x10 && x11 && x5 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && ~x55 && ~x10 && x11 && ~x5 && x37 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x10 && x11 && ~x5 && ~x37 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x11 && x1 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x11 && ~x1 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s138;
				s139 : if( x62 && x63 && x40 && x16 && x45 && x29 && x42 && x27 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( x62 && x63 && x40 && x16 && x45 && x29 && x42 && ~x27 )
						nx_state = s139;
					else if( x62 && x63 && x40 && x16 && x45 && x29 && ~x42 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && x16 && x45 && x29 && ~x42 && ~x27 )
						nx_state = s139;
					else if( x62 && x63 && x40 && x16 && x45 && ~x29 && x33 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && x16 && x45 && ~x29 && x33 && ~x27 )
						nx_state = s139;
					else if( x62 && x63 && x40 && x16 && x45 && ~x29 && ~x33 && x43 && x27 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && x63 && x40 && x16 && x45 && ~x29 && ~x33 && x43 && ~x27 )
						nx_state = s139;
					else if( x62 && x63 && x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && ~x27 )
						nx_state = s139;
					else if( x62 && x63 && x40 && x16 && ~x45 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x16 && x37 && x44 && x1 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && ~x16 && x37 && x44 && ~x1 )
						nx_state = s139;
					else if( x62 && x63 && x40 && ~x16 && x37 && ~x44 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x16 && ~x37 && x25 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x62 && x63 && x40 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s139;
					else if( x62 && x63 && x40 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && x40 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s139;
					else if( x62 && x63 && ~x40 && x10 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && x12 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && x12 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && ~x40 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x12 && x2 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x12 && x2 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x12 && ~x2 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x12 && x9 )
						begin
							y22 = 1'b1;	
							nx_state = s148;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( x62 && ~x63 && x44 && x16 && x54 && x29 && x48 && x27 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( x62 && ~x63 && x44 && x16 && x54 && x29 && x48 && ~x27 )
						nx_state = s139;
					else if( x62 && ~x63 && x44 && x16 && x54 && x29 && ~x48 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && x16 && x54 && x29 && ~x48 && ~x27 )
						nx_state = s139;
					else if( x62 && ~x63 && x44 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s139;
					else if( x62 && ~x63 && x44 && x16 && x54 && ~x29 && ~x33 && x49 && x27 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x63 && x44 && x16 && x54 && ~x29 && ~x33 && x49 && ~x27 )
						nx_state = s139;
					else if( x62 && ~x63 && x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && ~x27 )
						nx_state = s139;
					else if( x62 && ~x63 && x44 && x16 && ~x54 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x16 && x36 && x55 && x37 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && ~x16 && x36 && x55 && ~x37 )
						nx_state = s139;
					else if( x62 && ~x63 && x44 && ~x16 && x36 && ~x55 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x16 && ~x36 && x25 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x16 && ~x36 && ~x25 && x5 && x4 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x62 && ~x63 && x44 && ~x16 && ~x36 && ~x25 && x5 && ~x4 )
						nx_state = s139;
					else if( x62 && ~x63 && x44 && ~x16 && ~x36 && ~x25 && ~x5 && x4 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && x44 && ~x16 && ~x36 && ~x25 && ~x5 && ~x4 )
						nx_state = s139;
					else if( x62 && ~x63 && ~x44 && x10 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && x12 && x34 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && x12 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && ~x12 && x37 && x41 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && ~x12 && x37 && ~x41 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && ~x12 && x37 && ~x41 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && ~x44 && x10 && ~x11 && ~x12 && ~x37 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x12 && x2 && x4 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x12 && x2 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x12 && ~x2 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x12 && x9 )
						begin
							y22 = 1'b1;	
							nx_state = s148;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && x55 && x47 && x54 && x29 && x59 && x27 )
						begin
							y47 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x62 && x55 && x47 && x54 && x29 && x59 && ~x27 )
						nx_state = s139;
					else if( ~x62 && x55 && x47 && x54 && x29 && ~x59 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && x47 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s139;
					else if( ~x62 && x55 && x47 && x54 && ~x29 && x33 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && x47 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s139;
					else if( ~x62 && x55 && x47 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && x55 && x47 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s139;
					else if( ~x62 && x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s139;
					else if( ~x62 && x55 && x47 && ~x54 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x47 && x37 && x56 && x1 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && ~x47 && x37 && x56 && ~x1 )
						nx_state = s139;
					else if( ~x62 && x55 && ~x47 && x37 && ~x56 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x47 && ~x37 && x25 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x47 && ~x37 && ~x25 && x36 && x35 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && x55 && ~x47 && ~x37 && ~x25 && x36 && ~x35 )
						nx_state = s139;
					else if( ~x62 && x55 && ~x47 && ~x37 && ~x25 && ~x36 && x35 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && ~x47 && ~x37 && ~x25 && ~x36 && ~x35 )
						nx_state = s139;
					else if( ~x62 && ~x55 && x41 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && x12 && x2 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && x12 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && ~x12 && x32 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && ~x12 && x32 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && ~x12 && x32 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && x41 && ~x11 && ~x12 && ~x32 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x41 && x43 && x33 && x35 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x55 && ~x41 && x43 && x33 && ~x35 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && ~x41 && x43 && ~x33 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x43 && x40 )
						begin
							y22 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x43 && ~x40 && x5 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x43 && ~x40 && ~x5 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else nx_state = s139;
				s140 : if( x62 && x63 && x14 && x13 )
						begin
							y49 = 1'b1;	
							nx_state = s152;
						end
					else if( x62 && x63 && x14 && ~x13 )
						begin
							y41 = 1'b1;	
							nx_state = s93;
						end
					else if( x62 && x63 && ~x14 )
						begin
							y45 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && ~x63 )
						begin
							y41 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x62 && x55 && x37 && x28 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x55 && x37 && ~x28 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x55 && ~x37 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && ~x55 && x33 && x32 && x10 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && ~x55 && x33 && x32 && x10 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && x33 && x32 && x10 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && x33 && x32 && ~x10 )
						nx_state = s140;
					else if( ~x62 && ~x55 && x33 && ~x32 && x10 && x9 )
						begin
							y47 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x62 && ~x55 && x33 && ~x32 && x10 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && x33 && ~x32 && ~x10 )
						nx_state = s140;
					else if( ~x62 && ~x55 && ~x33 && x32 && x10 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x55 && ~x33 && x32 && ~x10 )
						nx_state = s140;
					else if( ~x62 && ~x55 && ~x33 && ~x32 && x10 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && ~x55 && ~x33 && ~x32 && ~x10 )
						nx_state = s140;
					else nx_state = s140;
				s141 : if( x39 && x1 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x39 && ~x1 && x4 )
						begin
							y22 = 1'b1;	
							nx_state = s148;
						end
					else if( x39 && ~x1 && ~x4 )
						begin
							y34 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x39 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else nx_state = s141;
				s142 : if( 1'b1 )
						begin
							y48 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s142;
				s143 : if( x62 && x63 && x40 && x8 && x48 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x63 && x40 && x8 && ~x48 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && x8 && ~x48 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x63 && x40 && ~x8 && x51 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x63 && x40 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( x62 && x63 && x40 && ~x8 && ~x51 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x63 && ~x40 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && x12 && x8 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y44 = 1'b1;	
							nx_state = s149;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 && ~x12 )
						begin
							y47 = 1'b1;	
							nx_state = s155;
						end
					else if( x62 && ~x63 && x44 && x8 && x53 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && ~x63 && x44 && x8 && ~x53 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && x8 && ~x53 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && ~x63 && x44 && ~x8 && x51 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && ~x63 && x44 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s2;
						end
					else if( x62 && ~x63 && x44 && ~x8 && ~x51 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && ~x63 && ~x44 && x10 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && x11 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x12 && x8 )
						begin
							y43 = 1'b1;	
							nx_state = s138;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( x62 && ~x63 && ~x44 && ~x10 && ~x11 && ~x12 )
						begin
							y48 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x62 && x55 && x8 && x53 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x55 && x8 && ~x53 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && x8 && ~x53 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x55 && ~x8 && x51 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x55 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && x55 && ~x8 && ~x51 && ~x37 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && ~x55 && x41 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && ~x41 && x42 )
						begin
							y42 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x42 && x43 && x39 )
						begin
							y44 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x42 && x43 && ~x39 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x42 && ~x43 )
						begin
							y50 = 1'b1;	
							nx_state = s146;
						end
					else nx_state = s143;
				s144 : if( x63 && x7 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( x63 && ~x7 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s144;
				s145 : if( x7 )
						begin
							y21 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x7 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s145;
				s146 : if( x62 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x62 && x55 && x37 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && x55 && ~x37 && x40 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x62 && x55 && ~x37 && ~x40 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && ~x55 && x10 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && x32 )
						begin
							y54 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x32 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x10 && x42 && ~x32 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x55 && ~x10 && ~x42 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else nx_state = s146;
				s147 : if( 1'b1 )
						begin
							y31 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s147;
				s148 : if( x63 && x62 && x40 && x50 )
						begin
							y44 = 1'b1;	
							nx_state = s149;
						end
					else if( x63 && x62 && x40 && ~x50 )
						nx_state = s148;
					else if( x63 && x62 && ~x40 && x11 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( x63 && x62 && ~x40 && ~x11 && x9 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( x63 && x62 && ~x40 && ~x11 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x63 && ~x62 && x55 && x50 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( x63 && ~x62 && x55 && ~x50 )
						nx_state = s148;
					else if( x63 && ~x62 && ~x55 && x42 )
						begin
							y47 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && ~x62 && ~x55 && ~x42 && x9 )
						begin
							y47 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && ~x62 && ~x55 && ~x42 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && x62 && x44 && x50 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x63 && x62 && x44 && ~x50 )
						nx_state = s148;
					else if( ~x63 && x62 && ~x44 && x11 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x63 && x62 && ~x44 && ~x11 && x9 )
						begin
							y46 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x63 && x62 && ~x44 && ~x11 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x63 && ~x62 && x3 && x5 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && ~x62 && x3 && ~x5 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x62 && ~x3 )
						begin
							y6 = 1'b1;	
							nx_state = s81;
						end
					else nx_state = s148;
				s149 : if( x40 && x17 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( x40 && ~x17 && x43 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x40 && ~x17 && ~x43 )
						nx_state = s149;
					else if( ~x40 && x6 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x40 && ~x6 )
						begin
							y44 = 1'b1;	
							nx_state = s149;
						end
					else nx_state = s149;
				s150 : if( x63 && x40 && x3 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x63 && x40 && ~x3 && x2 )
						begin
							y44 = 1'b1;	
							nx_state = s149;
						end
					else if( x63 && x40 && ~x3 && ~x2 && x28 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x40 && ~x3 && ~x2 && ~x28 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x63 && ~x40 && x10 && x5 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x63 && ~x40 && x10 && x5 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x63 && ~x40 && x10 && x5 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x40 && x10 && ~x5 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x63 && ~x40 && ~x10 && x11 && x1 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( x63 && ~x40 && ~x10 && x11 && ~x1 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x63 && ~x40 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x63 && ~x40 && ~x10 && ~x11 )
						nx_state = s150;
					else if( ~x63 && x44 && x17 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x63 && x44 && ~x17 && x49 )
						begin
							y9 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x63 && x44 && ~x17 && ~x49 )
						nx_state = s150;
					else if( ~x63 && ~x44 && x6 )
						begin
							y41 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x63 && ~x44 && ~x6 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else nx_state = s150;
				s151 : if( 1'b1 )
						begin
							y49 = 1'b1;	
							nx_state = s152;
						end
					else nx_state = s151;
				s152 : if( x63 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x63 )
						begin
							y50 = 1'b1;	
							nx_state = s144;
						end
					else nx_state = s152;
				s153 : if( 1'b1 )
						begin
							y52 = 1'b1;	
							nx_state = s86;
						end
					else nx_state = s153;
				s154 : if( x62 && x44 && x3 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x44 && ~x3 && x34 )
						begin
							y44 = 1'b1;	
							nx_state = s150;
						end
					else if( x62 && x44 && ~x3 && ~x34 && x28 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( x62 && x44 && ~x3 && ~x34 && ~x28 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( x62 && ~x44 && x10 && x5 && x41 )
						begin
							y41 = 1'b1;	
							nx_state = s88;
						end
					else if( x62 && ~x44 && x10 && x5 && ~x41 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x44 && x10 && x5 && ~x41 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s16;
						end
					else if( x62 && ~x44 && x10 && ~x5 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x44 && ~x10 && x37 && x11 )
						begin
							y52 = 1'b1;	
							nx_state = s86;
						end
					else if( x62 && ~x44 && ~x10 && x37 && ~x11 )
						nx_state = s154;
					else if( x62 && ~x44 && ~x10 && ~x37 && x41 && x11 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x44 && ~x10 && ~x37 && x41 && ~x11 )
						nx_state = s154;
					else if( x62 && ~x44 && ~x10 && ~x37 && ~x41 && x11 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x44 && ~x10 && ~x37 && ~x41 && ~x11 )
						nx_state = s154;
					else if( ~x62 && x15 )
						begin
							y21 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x62 && ~x15 && x42 )
						begin
							y36 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && ~x15 && ~x42 && x41 )
						begin
							y9 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x62 && ~x15 && ~x42 && ~x41 )
						nx_state = s154;
					else nx_state = s154;
				s155 : if( x62 && x63 && x40 && x37 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && x40 && ~x37 && x9 )
						begin
							y9 = 1'b1;	
							nx_state = s10;
						end
					else if( x62 && x63 && x40 && ~x37 && ~x9 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( x62 && x63 && ~x40 && x10 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && x1 )
						begin
							y51 = 1'b1;	
							nx_state = s83;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && ~x1 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && x63 && ~x40 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && x63 && ~x40 && ~x10 && ~x11 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( x62 && ~x63 && x14 && x13 )
						begin
							y50 = 1'b1;	
							nx_state = s144;
						end
					else if( x62 && ~x63 && x14 && ~x13 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( x62 && ~x63 && ~x14 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x62 && x55 && x34 )
						begin
							y40 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x62 && x55 && ~x34 && x2 )
						begin
							y45 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x62 && x55 && ~x34 && ~x2 && x28 )
						begin
							y32 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x62 && x55 && ~x34 && ~x2 && ~x28 )
						begin
							y33 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && x41 && x36 && x3 )
						begin
							y41 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && ~x55 && x41 && x36 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x62 && ~x55 && x41 && x36 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && ~x55 && x41 && ~x36 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x55 && ~x41 && x11 && x32 )
						begin
							y54 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x62 && ~x55 && ~x41 && x11 && ~x32 && x3 )
						begin
							y36 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && ~x55 && ~x41 && x11 && ~x32 && ~x3 )
						begin
							y35 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x62 && ~x55 && ~x41 && ~x11 )
						nx_state = s155;
					else nx_state = s155;
				s156 : if( x26 && x62 && x63 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( x26 && x62 && x63 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x26 && x62 && x63 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( x26 && x62 && x63 && ~x28 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( x26 && x62 && ~x63 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x26 && x62 && ~x63 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x26 && x62 && ~x63 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x26 && x62 && ~x63 && ~x28 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( x26 && ~x62 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( x26 && ~x62 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x26 && ~x62 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( x26 && ~x62 && ~x28 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && x27 && x62 && x63 && x1 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x26 && x27 && x62 && x63 && x1 && ~x2 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x26 && x27 && x62 && x63 && x1 && ~x2 && ~x3 )
						nx_state = s156;
					else if( ~x26 && x27 && x62 && x63 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x26 && x27 && x62 && ~x63 && x36 && x32 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && x27 && x62 && ~x63 && x36 && ~x32 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && x27 && x62 && ~x63 && x36 && ~x32 && ~x3 )
						nx_state = s156;
					else if( ~x26 && x27 && x62 && ~x63 && ~x36 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x26 && x27 && ~x62 && x1 && x33 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && x27 && ~x62 && x1 && ~x33 && x34 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && x27 && ~x62 && x1 && ~x33 && ~x34 )
						nx_state = s156;
					else if( ~x26 && x27 && ~x62 && ~x1 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x26 && ~x27 && x62 && x63 && x1 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x26 && ~x27 && x62 && x63 && x1 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x27 && x62 && x63 && x1 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x27 && x62 && x63 && x1 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x26 && ~x27 && x62 && x63 && ~x1 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x26 && ~x27 && x62 && x63 && ~x1 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x26 && ~x27 && x62 && ~x63 && x36 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x26 && ~x27 && x62 && ~x63 && x36 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x27 && x62 && ~x63 && x36 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x27 && x62 && ~x63 && x36 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x26 && ~x27 && x62 && ~x63 && ~x36 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && ~x27 && x62 && ~x63 && ~x36 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x26 && ~x27 && ~x62 && x1 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x26 && ~x27 && ~x62 && x1 && x5 && ~x3 && x4 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x26 && ~x27 && ~x62 && x1 && x5 && ~x3 && ~x4 )
						begin
							y37 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x26 && ~x27 && ~x62 && x1 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x26 && ~x27 && ~x62 && ~x1 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x26 && ~x27 && ~x62 && ~x1 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else nx_state = s156;
				s157 : if( x62 && x9 && x63 )
						begin
							y3 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && x9 && ~x63 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( x62 && ~x9 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && x63 && x40 )
						begin
							y3 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && x63 && ~x40 )
						begin
							y38 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && ~x63 && x9 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x62 && ~x63 && ~x9 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else nx_state = s157;
				s158 : if( x28 && x26 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( x28 && x26 && ~x1 && x2 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( x28 && x26 && ~x1 && ~x2 && x25 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( x28 && x26 && ~x1 && ~x2 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( x28 && ~x26 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s173;
						end
					else if( x28 && ~x26 && ~x27 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( x28 && ~x26 && ~x27 && ~x1 && x4 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( x28 && ~x26 && ~x27 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x28 && x26 && x1 && x2 && x3 && x25 )
						nx_state = s158;
					else if( ~x28 && x26 && x1 && x2 && x3 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x28 && x26 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x28 && x26 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else if( ~x28 && x26 && x1 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x28 && x26 && x1 && ~x2 )
						begin
							y1 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x28 && x26 && ~x1 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x28 && ~x26 )
						begin
							y1 = 1'b1;	
							nx_state = s173;
						end
					else nx_state = s158;
				s159 : if( x15 )
						begin
							y8 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x15 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x15 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s159;
				s160 : if( x15 )
						begin
							y20 = 1'b1;	
							nx_state = s158;
						end
					else if( ~x15 && x6 )
						begin
							y5 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x15 && ~x6 )
						begin
							y4 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s160;
				s161 : if( x15 )
						begin
							y11 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x15 && x6 )
						begin
							y13 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x15 && ~x6 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s161;
				s162 : if( x26 )
						begin
							y1 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x26 && x28 && x5 )
						begin
							y14 = 1'b1;	
							nx_state = s174;
						end
					else if( ~x26 && x28 && ~x5 )
						begin
							y15 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x26 && ~x28 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else nx_state = s162;
				s163 : if( x26 && x28 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( x26 && x28 && ~x7 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 && x25 && x9 )
						nx_state = s163;
					else if( ~x26 && x27 && x25 && ~x9 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && x27 && ~x25 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x26 && ~x27 )
						begin
							y6 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s163;
				s164 : if( x28 && x7 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else if( x28 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x28 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else nx_state = s164;
				s165 : if( x26 && x8 && x1 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( x26 && x8 && ~x1 && x14 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else if( x26 && x8 && ~x1 && ~x14 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( x26 && ~x8 )
						begin
							y9 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x7 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s164;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && ~x28 && x6 && x7 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s164;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y10 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s165;
				s166 : if( x8 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x8 )
						begin
							y13 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s166;
				s167 : if( x25 )
						nx_state = s1;
					else if( ~x25 && x28 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x25 && ~x28 )
						nx_state = s1;
					else nx_state = s167;
				s168 : if( x12 && x15 && x13 && x3 )
						begin
							y16 = 1'b1;	
							nx_state = s172;
						end
					else if( x12 && x15 && x13 && ~x3 && x14 )
						begin
							y16 = 1'b1;	
							nx_state = s172;
						end
					else if( x12 && x15 && x13 && ~x3 && ~x14 )
						begin
							y14 = 1'b1;	
							nx_state = s31;
						end
					else if( x12 && x15 && ~x13 )
						begin
							y12 = 1'b1;	
							nx_state = s25;
						end
					else if( x12 && ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else nx_state = s168;
				s169 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s158;
						end
					else nx_state = s169;
				s170 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s171;
						end
					else nx_state = s170;
				s171 : if( 1'b1 )
						begin
							y21 = 1'b1;	
							nx_state = s169;
						end
					else nx_state = s171;
				s172 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s172;
				s173 : if( x26 && x28 && x9 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( x26 && ~x28 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && x1 && x27 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && x1 && x27 && ~x2 && x3 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x26 && x1 && x27 && ~x2 && ~x3 )
						nx_state = s173;
					else if( ~x26 && x1 && ~x27 && x5 && x3 )
						begin
							y11 = 1'b1;	
							nx_state = s164;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && x4 )
						begin
							y8 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && ~x4 )
						begin
							y7 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x26 && x1 && ~x27 && ~x5 )
						begin
							y4 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x26 && ~x1 && x27 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else if( ~x26 && ~x1 && ~x27 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x26 && ~x1 && ~x27 && ~x2 )
						begin
							y3 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s173;
				s174 : if( 1'b1 )
						begin
							y5 = 1'b1;	
							nx_state = s163;
						end
					else nx_state = s174;

			default : nx_state = 0;
		endcase
	end
endmodule
