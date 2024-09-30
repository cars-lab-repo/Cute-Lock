module zoom ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61, x62, x63, x64, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61, x62, x63, x64;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37;

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
	s181=181, s182=182, s183=183, s184=184, s185=185, s186=186, s187=187, s188=188, s189=189, s190=190,
	s191=191, s192=192, s193=193, s194=194, s195=195, s196=196, s197=197, s198=198, s199=199, s200=200,
	s201=201, s202=202, s203=203, s204=204, s205=205, s206=206, s207=207, s208=208, s209=209, s210=210,
	s211=211, s212=212, s213=213, s214=214, s215=215, s216=216, s217=217, s218=218, s219=219, s220=220,
	s221=221, s222=222, s223=223, s224=224, s225=225, s226=226, s227=227, s228=228, s229=229, s230=230,
	s231=231, s232=232, s233=233, s234=234, s235=235, s236=236, s237=237, s238=238, s239=239, s240=240,
	s241=241, s242=242, s243=243, s244=244, s245=245, s246=246, s247=247, s248=248, s249=249, s250=250,
	s251=251, s252=252, s253=253, s254=254, s255=255, s256=256, s257=257, s258=258, s259=259, s260=260,
	s261=261, s262=262, s263=263, s264=264, s265=265, s266=266, s267=267, s268=268, s269=269, s270=270,
	s271=271, s272=272, s273=273, s274=274, s275=275, s276=276, s277=277, s278=278, s279=279, s280=280,
	s281=281, s282=282, s283=283, s284=284, s285=285, s286=286, s287=287, s288=288, s289=289, s290=290,
	s291=291, s292=292, s293=293, s294=294, s295=295, s296=296, s297=297, s298=298, s299=299, s300=300,
	s301=301, s302=302, s303=303, s304=304, s305=305, s306=306, s307=307, s308=308, s309=309, s310=310,
	s311=311, s312=312, s313=313, s314=314, s315=315, s316=316, s317=317, s318=318, s319=319;
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
	x61 or x62 or x63 or x64)
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
				s1 : if( x63 && x10 && x62 && x11 )
						begin
							y2 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s2;
						end
					else if( x63 && x10 && x62 && ~x11 )
						begin
							y18 = 1'b1;	
							nx_state = s3;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && x43 && x13 && x32 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && x43 && x13 && x32 && x3 && ~x6 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && x43 && x13 && x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && x43 && x13 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && x43 && ~x13 && x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && x43 && ~x13 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && ~x43 && x44 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && ~x43 && ~x44 && x14 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && ~x43 && ~x44 && x14 && ~x7 && x1 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && ~x43 && ~x44 && x14 && ~x7 && x1 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && ~x43 && ~x44 && x14 && ~x7 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x10 && ~x62 && x64 && x11 && ~x43 && ~x44 && ~x14 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && x12 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && x12 && ~x8 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && x12 && ~x8 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && x13 && x45 && x32 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && x13 && x45 && x32 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && x13 && x45 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && x13 && ~x45 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && ~x13 && x1 && x14 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && ~x13 && x1 && x14 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && ~x13 && x1 && ~x14 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && x10 && ~x62 && x64 && ~x11 && ~x12 && ~x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x10 && ~x62 && ~x64 && x15 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && x10 && ~x62 && ~x64 && x15 && x12 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x10 && ~x62 && ~x64 && x15 && x12 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x10 && ~x62 && ~x64 && x15 && ~x12 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x63 && x10 && ~x62 && ~x64 && ~x15 && x39 && x46 && x48 && x36 )
						nx_state = s1;
					else if( x63 && x10 && ~x62 && ~x64 && ~x15 && x39 && x46 && x48 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && x10 && ~x62 && ~x64 && ~x15 && x39 && x46 && ~x48 && x36 )
						nx_state = s1;
					else if( x63 && x10 && ~x62 && ~x64 && ~x15 && x39 && x46 && ~x48 && ~x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x10 && ~x62 && ~x64 && ~x15 && x39 && ~x46 && x36 )
						nx_state = s1;
					else if( x63 && x10 && ~x62 && ~x64 && ~x15 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x10 && ~x62 && ~x64 && ~x15 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x10 && x62 && x11 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	y12 = 1'b1;	
							nx_state = s21;
						end
					else if( x63 && ~x10 && x62 && ~x11 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s22;
						end
					else if( x63 && ~x10 && x62 && ~x11 && ~x1 && x2 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s23;
						end
					else if( x63 && ~x10 && x62 && ~x11 && ~x1 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && ~x10 && ~x62 && x64 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s25;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && ~x22 && x2 && x11 && x5 && x3 )
						nx_state = s1;
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && ~x22 && x2 && x11 && x5 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && ~x22 && x2 && x11 && ~x5 && x3 )
						nx_state = s1;
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && ~x22 && x2 && x11 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && ~x22 && x2 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && ~x22 && x2 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && x1 && ~x22 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && ~x1 && x11 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && ~x1 && x11 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && x15 && ~x1 && ~x11 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && x34 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && x34 && ~x8 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && x34 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && ~x34 && x32 && ~x7 && x43 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && ~x34 && x32 && ~x7 && x43 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && ~x34 && x32 && ~x7 && ~x43 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && x12 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x10 && ~x62 && ~x64 && ~x15 && ~x11 && ~x12 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x63 && x64 && x15 && x16 && x62 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x63 && x64 && x15 && x16 && x62 && ~x5 && x6 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x63 && x64 && x15 && x16 && x62 && ~x5 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x63 && x64 && x15 && x16 && ~x62 && x5 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x63 && x64 && x15 && x16 && ~x62 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x64 && x15 && x16 && ~x62 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && x64 && x15 && ~x16 && x62 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x64 && x15 && ~x16 && x62 && ~x1 )
						nx_state = s1;
					else if( ~x63 && x64 && x15 && ~x16 && ~x62 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && x64 && x15 && ~x16 && ~x62 && ~x1 )
						nx_state = s1;
					else if( ~x63 && x64 && ~x15 && x16 && x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x64 && ~x15 && x16 && ~x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && x64 && ~x15 && ~x16 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x63 && x64 && ~x15 && ~x16 && ~x1 && x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x63 && x64 && ~x15 && ~x16 && ~x1 && ~x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x64 && x62 && x14 && x10 && x39 && x44 && x41 && x36 )
						nx_state = s1;
					else if( ~x63 && ~x64 && x62 && x14 && x10 && x39 && x44 && x41 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && ~x64 && x62 && x14 && x10 && x39 && x44 && ~x41 && x36 )
						nx_state = s1;
					else if( ~x63 && ~x64 && x62 && x14 && x10 && x39 && x44 && ~x41 && ~x36 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x64 && x62 && x14 && x10 && x39 && ~x44 && x36 )
						nx_state = s1;
					else if( ~x63 && ~x64 && x62 && x14 && x10 && x39 && ~x44 && ~x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x64 && x62 && x14 && x10 && ~x39 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && x34 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && ~x34 && x32 && ~x7 && x26 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && ~x34 && x32 && ~x7 && x26 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x26 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x64 && x62 && x14 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && x1 && x2 && x4 && x5 && x3 )
						nx_state = s1;
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && x1 && x2 && x4 && x5 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && x1 && x2 && x4 && ~x5 && x3 )
						nx_state = s1;
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && x1 && x2 && x4 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && x1 && x2 && ~x4 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && x1 && x2 && ~x4 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && x10 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && x11 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && x11 && ~x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && x11 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && ~x11 && x12 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && ~x11 && x12 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && ~x11 && x12 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && ~x11 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && ~x11 && ~x12 && ~x1 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && ~x11 && ~x12 && ~x1 && ~x2 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x63 && ~x64 && x62 && ~x14 && ~x10 && ~x11 && ~x12 && ~x1 && ~x2 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && x18 && x40 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && x18 && ~x40 && x2 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && x18 && ~x40 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && x19 && x1 && x10 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && x19 && x1 && ~x10 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && x19 && ~x1 && x6 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && x19 && ~x1 && ~x6 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && x5 && x3 )
						nx_state = s1;
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && x5 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && ~x5 && x3 )
						nx_state = s1;
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && x1 && x39 && x4 && ~x5 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && x1 && x39 && ~x4 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && x1 && x39 && ~x4 && ~x3 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && x1 && ~x39 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x64 && ~x62 && x17 && ~x18 && ~x19 && ~x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && x19 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && x5 && x3 )
						nx_state = s1;
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && x5 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && ~x5 && x3 )
						nx_state = s1;
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && ~x19 && x39 && x4 && ~x5 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && ~x19 && x39 && ~x4 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && ~x19 && x39 && ~x4 && ~x3 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && x40 && ~x19 && ~x39 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && ~x40 && x19 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && ~x40 && x19 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && x18 && ~x40 && ~x19 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x64 && ~x62 && ~x17 && ~x18 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s1;
				s2 : if( 1'b1 )
						begin
							y13 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s2;
				s3 : if( x1 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y15 = 1'b1;	
							y19 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x1 )
						begin
							y20 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s3;
				s4 : if( x42 && x43 && x13 && x10 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x42 && x43 && x13 && x10 && ~x4 )
						nx_state = s4;
					else if( x42 && x43 && x13 && ~x10 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && x43 && x13 && ~x10 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x42 && x43 && x13 && ~x10 && ~x3 && ~x33 )
						nx_state = s4;
					else if( x42 && x43 && ~x13 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && x43 && ~x13 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x42 && x43 && ~x13 && ~x3 && ~x33 )
						nx_state = s4;
					else if( x42 && ~x43 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && ~x43 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x42 && ~x43 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x42 && x12 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && x12 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x42 && x12 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x42 && ~x12 && x44 && x45 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && x44 && x45 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x42 && ~x12 && x44 && x45 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x42 && ~x12 && x44 && ~x45 && x41 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x42 && ~x12 && x44 && ~x45 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && x44 && ~x45 && ~x41 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x42 && ~x12 && x44 && ~x45 && ~x41 && ~x3 && ~x33 )
						nx_state = s4;
					else if( ~x42 && ~x12 && ~x44 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x3 && x33 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x3 && ~x33 )
						nx_state = s4;
					else nx_state = s4;
				s5 : if( x42 && x43 && x10 && x34 && x44 && x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( x42 && x43 && x10 && x34 && x44 && ~x4 )
						nx_state = s5;
					else if( x42 && x43 && x10 && x34 && ~x44 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s53;
						end
					else if( x42 && x43 && x10 && x34 && ~x44 && ~x4 )
						nx_state = s5;
					else if( x42 && x43 && x10 && ~x34 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && x43 && x10 && ~x34 && ~x4 )
						nx_state = s5;
					else if( x42 && x43 && ~x10 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( x42 && ~x43 && x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( x42 && ~x43 && ~x13 && x41 && x14 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && ~x43 && ~x13 && x41 && x14 && ~x4 )
						nx_state = s5;
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s5;
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x42 && ~x43 && ~x13 && x41 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && ~x41 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x42 && x10 && x12 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && x10 && x12 && ~x4 )
						nx_state = s5;
					else if( ~x42 && x10 && ~x12 && x44 && x45 && x35 && x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x42 && x10 && ~x12 && x44 && x45 && x35 && ~x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && x10 && ~x12 && x44 && x45 && ~x35 )
						nx_state = s5;
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && x15 && ~x47 && ~x1 )
						nx_state = s5;
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && x10 && ~x12 && x44 && ~x45 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && x14 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && x14 && ~x4 )
						nx_state = s5;
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s5;
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && x10 && ~x12 && ~x44 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x10 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else nx_state = s5;
				s6 : if( x62 && x15 && x16 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x62 && x15 && ~x16 && x3 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && x15 && ~x16 && x3 && ~x2 )
						nx_state = s6;
					else if( x62 && x15 && ~x16 && ~x3 && x4 && x2 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( x62 && x15 && ~x16 && ~x3 && x4 && ~x2 )
						nx_state = s6;
					else if( x62 && x15 && ~x16 && ~x3 && ~x4 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x62 && x15 && ~x16 && ~x3 && ~x4 && ~x2 )
						nx_state = s6;
					else if( x62 && ~x15 && x16 && x4 && x5 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( x62 && ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( x62 && ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x62 && ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x62 && ~x15 && x16 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x62 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x62 && x42 && x43 && x44 && x10 && x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x42 && x43 && x44 && x10 && ~x33 )
						nx_state = s6;
					else if( ~x62 && x42 && x43 && x44 && ~x10 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x42 && x43 && ~x44 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x42 && ~x43 && x13 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x42 && ~x43 && ~x13 && x41 && x2 && x45 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x42 && ~x43 && ~x13 && x41 && x2 && ~x45 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x42 && ~x43 && ~x13 && x41 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x42 && ~x43 && ~x13 && ~x41 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x42 && x12 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x42 && ~x12 && x44 && x14 && x10 && x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x42 && ~x12 && x44 && x14 && x10 && ~x33 )
						nx_state = s6;
					else if( ~x62 && ~x42 && ~x12 && x44 && x14 && ~x10 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x42 && ~x12 && x44 && ~x14 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x42 && ~x12 && ~x44 && x41 && x2 && x45 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x42 && ~x12 && ~x44 && x41 && x2 && ~x45 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && ~x42 && ~x12 && ~x44 && x41 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x42 && ~x12 && ~x44 && ~x41 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s6;
				s7 : if( x11 && x12 && x33 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x11 && x12 && ~x33 )
						nx_state = s7;
					else if( x11 && ~x12 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x11 && ~x12 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x11 && ~x12 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x11 && ~x12 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x11 && ~x12 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( x11 && ~x12 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x11 && ~x12 && x3 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x11 && ~x12 && x3 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x11 && ~x12 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x11 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x11 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x11 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x11 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s7;
					else if( ~x11 && x3 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && x3 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x11 && x3 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x11 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else nx_state = s7;
				s8 : if( x63 && x42 && x43 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x42 && ~x43 && x44 && x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x63 && x42 && ~x43 && x44 && ~x10 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x42 && ~x43 && ~x44 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x42 && x12 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x42 && ~x12 && x13 && x14 && x41 && x37 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x42 && ~x12 && x13 && x14 && x41 && x37 && ~x2 )
						nx_state = s8;
					else if( x63 && ~x42 && ~x12 && x13 && x14 && x41 && ~x37 && x2 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x63 && ~x42 && ~x12 && x13 && x14 && x41 && ~x37 && ~x2 )
						nx_state = s8;
					else if( x63 && ~x42 && ~x12 && x13 && x14 && ~x41 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x42 && ~x12 && x13 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x42 && ~x12 && ~x13 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x63 && x17 && x18 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x63 && x17 && x18 && ~x7 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && x17 && ~x18 )
						nx_state = s8;
					else if( ~x63 && ~x17 && x18 && x19 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x63 && ~x17 && x18 && ~x19 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && ~x17 && x18 && ~x19 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && ~x17 && x18 && ~x19 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && ~x17 && x18 && ~x19 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && x18 && ~x19 && x15 && ~x16 && ~x1 )
						nx_state = s8;
					else if( ~x63 && ~x17 && x18 && ~x19 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && x18 && ~x19 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x17 && x18 && ~x19 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && ~x18 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s8;
				s9 : if( x63 && x11 && x43 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x11 && ~x43 && x13 && x7 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x11 && ~x43 && x13 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x11 && ~x43 && x13 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x11 && ~x43 && x13 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x11 && ~x43 && x13 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s9;
					else if( x63 && x11 && ~x43 && x13 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x11 && ~x43 && x13 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x11 && ~x43 && x13 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x11 && ~x43 && x13 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x11 && ~x43 && ~x13 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && ~x11 && x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && ~x11 && ~x12 && x45 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s9;
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && ~x12 && ~x45 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x63 && x17 && x8 && x11 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && x17 && x8 && ~x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && x17 && ~x8 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x17 && x18 && x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x63 && ~x17 && x18 && ~x8 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x63 && ~x17 && ~x18 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s9;
				s10 : if( x42 && x43 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && x43 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( x42 && x43 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && x43 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x42 && x43 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && x43 && ~x3 && ~x2 )
						nx_state = s10;
					else if( x42 && ~x43 && x13 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x42 && ~x43 && x13 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && x13 && ~x3 && ~x2 )
						nx_state = s10;
					else if( x42 && ~x43 && ~x13 && x45 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && x45 && ~x41 && ~x3 && ~x2 )
						nx_state = s10;
					else if( x42 && ~x43 && ~x13 && ~x45 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x43 && ~x13 && ~x45 && ~x3 && ~x2 )
						nx_state = s10;
					else if( ~x42 && x12 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x42 && x12 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x12 && ~x41 && ~x3 && ~x2 )
						nx_state = s10;
					else if( ~x42 && ~x12 && x44 && x14 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && x44 && x14 && ~x3 && ~x2 )
						nx_state = s10;
					else if( ~x42 && ~x12 && x44 && ~x14 && x10 && x5 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x10 && ~x5 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && x10 && ~x5 && ~x32 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && x44 && ~x14 && ~x10 && ~x3 && ~x2 )
						nx_state = s10;
					else if( ~x42 && ~x12 && ~x44 && x45 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && ~x44 && x45 && ~x41 && ~x3 && ~x2 )
						nx_state = s10;
					else if( ~x42 && ~x12 && ~x44 && ~x45 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && x15 && ~x47 && ~x1 )
						nx_state = s10;
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && x2 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x12 && ~x44 && ~x45 && ~x3 && ~x2 )
						nx_state = s10;
					else nx_state = s10;
				s11 : if( x62 && x64 && x61 && x17 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && x64 && x61 && x17 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && x64 && x61 && x17 && ~x19 )
						nx_state = s11;
					else if( x62 && x64 && x61 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x64 && x61 && ~x17 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && x61 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x64 && ~x61 && x11 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x62 && x64 && ~x61 && x11 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( x62 && x64 && ~x61 && ~x11 && x10 && x12 && x4 && x1 )
						nx_state = s11;
					else if( x62 && x64 && ~x61 && ~x11 && x10 && x12 && x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && x64 && ~x61 && ~x11 && x10 && x12 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && ~x61 && ~x11 && x10 && ~x12 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x64 && ~x61 && ~x11 && ~x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x64 && x14 && x17 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && ~x64 && x14 && x17 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && ~x64 && x14 && x17 && ~x19 )
						nx_state = s11;
					else if( x62 && ~x64 && x14 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && ~x64 && x14 && ~x17 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && ~x64 && x14 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x64 && ~x14 && x11 && x10 )
						nx_state = s1;
					else if( x62 && ~x64 && ~x14 && x11 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && x12 && x10 && x4 && x1 )
						nx_state = s11;
					else if( x62 && ~x64 && ~x14 && ~x11 && x12 && x10 && x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && x12 && x10 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && x12 && ~x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x11 && x43 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x11 && ~x43 && x44 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x11 && ~x43 && ~x44 && x45 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && x11 && ~x43 && ~x44 && ~x45 && x10 && x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x62 && x11 && ~x43 && ~x44 && ~x45 && x10 && ~x32 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x11 && ~x43 && ~x44 && ~x45 && x10 && ~x32 && ~x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x11 && ~x43 && ~x44 && ~x45 && ~x10 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x11 && x12 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && x37 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && x37 && ~x2 )
						nx_state = s11;
					else if( ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && ~x37 && x2 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && ~x11 && ~x12 && x13 && x14 && x41 && ~x37 && ~x2 )
						nx_state = s11;
					else if( ~x62 && ~x11 && ~x12 && x13 && x14 && ~x41 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x11 && ~x12 && x13 && ~x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x62 && ~x11 && ~x12 && ~x13 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s11;
				s12 : if( x63 && x64 && x11 && x43 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x64 && x11 && x43 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x64 && x11 && x43 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x64 && x11 && x43 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x11 && x43 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s12;
					else if( x63 && x64 && x11 && x43 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x11 && x43 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x64 && x11 && x43 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x11 && x43 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && x11 && x43 && ~x41 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && x11 && x43 && ~x41 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && x11 && x43 && ~x41 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && x11 && ~x43 && x13 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && x11 && ~x43 && x13 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && x11 && ~x43 && x13 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && x11 && ~x43 && x13 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s12;
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && ~x41 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && ~x41 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && x45 && ~x41 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && x11 && ~x43 && ~x13 && ~x45 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && ~x45 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && x11 && ~x43 && ~x13 && ~x45 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && x11 && ~x43 && ~x13 && ~x45 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && x12 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x64 && ~x11 && x12 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x64 && ~x11 && x12 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x64 && ~x11 && x12 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && x12 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && x12 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && x12 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x64 && ~x11 && x12 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && x12 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && ~x11 && x12 && ~x41 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && x12 && ~x41 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && ~x11 && x12 && ~x41 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && x15 && ~x47 && ~x1 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && ~x14 && x1 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && x10 && ~x14 && ~x1 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && ~x10 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && ~x10 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && x44 && ~x10 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && ~x11 && ~x12 && x44 && ~x10 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && x15 && ~x47 && ~x1 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && x41 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && x45 && ~x41 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && ~x45 && x4 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && ~x45 && x4 && ~x2 )
						nx_state = s12;
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && ~x45 && ~x4 && x2 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x63 && x64 && ~x11 && ~x12 && ~x44 && ~x45 && ~x4 && ~x2 )
						nx_state = s12;
					else if( x63 && ~x64 && x15 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x63 && ~x64 && x15 && ~x5 && x34 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x64 && x15 && ~x5 && ~x34 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x64 && ~x15 && x35 )
						nx_state = s1;
					else if( x63 && ~x64 && ~x15 && ~x35 && x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x63 && ~x64 && ~x15 && ~x35 && ~x13 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x63 && x40 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && x40 && ~x5 && x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x63 && x40 && ~x5 && ~x34 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x63 && ~x40 && x35 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && ~x40 && ~x35 && x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && ~x40 && ~x35 && ~x13 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s12;
				s13 : if( x63 && x11 && x43 && x41 && x13 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( x63 && x11 && x43 && x41 && x13 && x3 && ~x6 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x11 && x43 && x41 && x13 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x11 && x43 && x41 && ~x13 && x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x11 && x43 && x41 && ~x13 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x11 && x43 && ~x41 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && x11 && ~x43 && x44 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s13;
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x11 && ~x43 && ~x44 && x10 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x11 && ~x43 && ~x44 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x11 && x41 && x12 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x11 && x41 && x12 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x11 && x41 && ~x12 && x13 && x45 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x11 && x41 && ~x12 && x13 && x45 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x11 && x41 && ~x12 && x13 && ~x45 && x39 && x1 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x11 && x41 && ~x12 && x13 && ~x45 && x39 && ~x1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x11 && x41 && ~x12 && x13 && ~x45 && ~x39 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s13;
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && x41 && ~x12 && ~x13 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x11 && ~x41 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x17 && x18 && x6 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && x17 && x18 && ~x6 && x8 && x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && x17 && x18 && ~x6 && x8 && ~x4 && x40 && x31 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x63 && x17 && x18 && ~x6 && x8 && ~x4 && x40 && ~x31 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x63 && x17 && x18 && ~x6 && x8 && ~x4 && ~x40 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x63 && x17 && x18 && ~x6 && ~x8 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && x17 && x18 && ~x6 && ~x8 && x15 && x16 && ~x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x17 && x18 && ~x6 && ~x8 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x17 && x18 && ~x6 && ~x8 && x15 && ~x16 && ~x1 )
						nx_state = s13;
					else if( ~x63 && x17 && x18 && ~x6 && ~x8 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x17 && x18 && ~x6 && ~x8 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && x17 && x18 && ~x6 && ~x8 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x17 && ~x18 && x12 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else if( ~x63 && x17 && ~x18 && ~x12 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x17 && x19 && x18 && x9 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && ~x17 && x19 && x18 && x9 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && ~x17 && x19 && x18 && x9 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && ~x17 && x19 && x18 && x9 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && x19 && x18 && x9 && x15 && ~x16 && ~x1 )
						nx_state = s13;
					else if( ~x63 && ~x17 && x19 && x18 && x9 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && x19 && x18 && x9 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x17 && x19 && x18 && x9 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && x19 && x18 && ~x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && x15 && ~x16 && ~x1 )
						nx_state = s13;
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x17 && x19 && ~x18 && ~x35 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x17 && ~x19 && x18 && x4 && x5 && x3 )
						nx_state = s13;
					else if( ~x63 && ~x17 && ~x19 && x18 && x4 && x5 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x17 && ~x19 && x18 && x4 && ~x5 && x3 )
						nx_state = s13;
					else if( ~x63 && ~x17 && ~x19 && x18 && x4 && ~x5 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x17 && ~x19 && x18 && ~x4 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x17 && ~x19 && x18 && ~x4 && ~x3 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x17 && ~x19 && ~x18 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s13;
				s14 : if( x19 && x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s83;
						end
					else if( x19 && ~x62 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x19 && x62 && x26 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x19 && x62 && x26 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x19 && x62 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x19 && ~x62 && x26 && x63 && x64 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x19 && ~x62 && x26 && x63 && x64 && ~x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x19 && ~x62 && x26 && x63 && ~x64 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x19 && ~x62 && x26 && x63 && ~x64 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x19 && ~x62 && x26 && ~x63 && x5 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x19 && ~x62 && x26 && ~x63 && x5 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x19 && ~x62 && x26 && ~x63 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x19 && ~x62 && ~x26 && x64 && x63 )
						begin
							y11 = 1'b1;	y36 = 1'b1;	
							nx_state = s91;
						end
					else if( ~x19 && ~x62 && ~x26 && x64 && ~x63 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x19 && ~x62 && ~x26 && ~x64 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else nx_state = s14;
				s15 : if( x62 && x64 && x61 && x13 && x23 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x64 && x61 && x13 && x23 && ~x51 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x64 && x61 && x13 && ~x23 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x64 && x61 && ~x13 && x28 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x64 && x61 && ~x13 && x28 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && x61 && ~x13 && x28 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x62 && x64 && x61 && ~x13 && x28 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && x61 && ~x13 && ~x28 && x6 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( x62 && x64 && x61 && ~x13 && ~x28 && x6 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x62 && x64 && x61 && ~x13 && ~x28 && x6 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && x61 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && x61 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && x64 && ~x61 && x11 && x10 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && x64 && ~x61 && x11 && ~x10 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( x62 && x64 && ~x61 && x11 && ~x10 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x64 && ~x61 && x11 && ~x10 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && x64 && ~x61 && ~x11 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && ~x61 && ~x11 && ~x10 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && ~x61 && ~x11 && ~x10 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && ~x64 && x14 && x13 && x23 && x41 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x64 && x14 && x13 && x23 && ~x41 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x64 && x14 && x13 && ~x23 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x64 && x14 && ~x13 && x28 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && ~x64 && x14 && ~x13 && x28 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && ~x64 && x14 && ~x13 && x28 && ~x35 && x15 )
						nx_state = s1;
					else if( x62 && ~x64 && x14 && ~x13 && x28 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && ~x64 && x14 && ~x13 && ~x28 && x6 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( x62 && ~x64 && x14 && ~x13 && ~x28 && x6 && ~x35 && x15 )
						nx_state = s1;
					else if( x62 && ~x64 && x14 && ~x13 && ~x28 && x6 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && ~x64 && x14 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && ~x64 && x14 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x62 && ~x64 && ~x14 && x11 && x10 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && ~x64 && ~x14 && x11 && ~x10 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( x62 && ~x64 && ~x14 && x11 && ~x10 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && ~x64 && ~x14 && x11 && ~x10 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && ~x10 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && ~x10 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && x34 && x44 && x10 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && x34 && x44 && x10 && ~x6 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && x34 && x44 && ~x10 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && x34 && ~x44 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && ~x34 && x13 && x41 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && ~x34 && x13 && ~x41 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && ~x34 && x13 && ~x41 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && ~x34 && x13 && ~x41 && ~x1 && ~x38 )
						nx_state = s15;
					else if( ~x62 && x63 && x64 && x42 && x43 && ~x34 && ~x13 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && ~x34 && ~x13 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && x63 && x64 && x42 && x43 && ~x34 && ~x13 && ~x1 && ~x38 )
						nx_state = s15;
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && x44 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s15;
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && x10 && ~x44 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && ~x10 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && ~x10 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && ~x10 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && x63 && x64 && x42 && ~x43 && ~x10 && ~x34 && ~x1 && ~x38 )
						nx_state = s15;
					else if( ~x62 && x63 && x64 && ~x42 && x12 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && x64 && ~x42 && x12 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x64 && ~x42 && x12 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && x63 && x64 && ~x42 && x12 && ~x34 && ~x1 && ~x38 )
						nx_state = s15;
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && x13 && x14 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && x13 && x14 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && x13 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && x45 && x5 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s10;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && x45 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && x32 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s7;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && x15 && ~x47 && ~x1 )
						nx_state = s15;
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && x3 && ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && x41 && ~x13 && ~x45 && ~x32 && ~x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && ~x41 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && ~x41 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && ~x41 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && x63 && x64 && ~x42 && ~x12 && ~x41 && ~x34 && ~x1 && ~x38 )
						nx_state = s15;
					else if( ~x62 && x63 && ~x64 && x15 && x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x19 && x28 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x19 && x28 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x19 && ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x64 && x15 && ~x19 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x13 && x23 && x48 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x13 && x23 && ~x48 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x13 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && x28 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && x28 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && x28 && ~x35 && x21 )
						nx_state = s1;
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && x28 && ~x35 && ~x21 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && ~x28 && x6 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && ~x28 && x6 && ~x35 && x21 )
						nx_state = s1;
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && ~x28 && x6 && ~x35 && ~x21 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x62 && ~x63 && x40 && x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x62 && ~x63 && x40 && x19 && x28 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && ~x63 && x40 && x19 && x28 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && ~x63 && x40 && x19 && ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && x40 && ~x19 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && ~x63 && ~x40 && x13 && x23 && x51 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && ~x63 && ~x40 && x13 && x23 && ~x51 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && ~x63 && ~x40 && x13 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && x28 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && x28 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && x28 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && x28 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && ~x28 && x6 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && ~x28 && x6 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && ~x28 && x6 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s15;
				s16 : if( x64 && x63 && x55 && x30 && x16 && x37 )
						begin
							y6 = 1'b1;	y13 = 1'b1;	y34 = 1'b1;	
							nx_state = s95;
						end
					else if( x64 && x63 && x55 && x30 && x16 && ~x37 && x39 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x64 && x63 && x55 && x30 && x16 && ~x37 && x39 && ~x19 && x26 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x64 && x63 && x55 && x30 && x16 && ~x37 && x39 && ~x19 && x26 && ~x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x64 && x63 && x55 && x30 && x16 && ~x37 && x39 && ~x19 && ~x26 )
						begin
							y11 = 1'b1;	y36 = 1'b1;	
							nx_state = s91;
						end
					else if( x64 && x63 && x55 && x30 && x16 && ~x37 && ~x39 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x64 && x63 && x55 && x30 && ~x16 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && x63 && x55 && x30 && ~x16 && ~x41 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x64 && x63 && x55 && ~x30 && x36 && x9 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x64 && x63 && x55 && ~x30 && x36 && ~x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( x64 && x63 && x55 && ~x30 && ~x36 && x3 && x42 )
						nx_state = s16;
					else if( x64 && x63 && x55 && ~x30 && ~x36 && x3 && ~x42 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && x55 && ~x30 && ~x36 && ~x3 && x11 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x64 && x63 && x55 && ~x30 && ~x36 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x64 && x63 && ~x55 && x51 && x24 && x5 && x36 )
						nx_state = s16;
					else if( x64 && x63 && ~x55 && x51 && x24 && x5 && ~x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x64 && x63 && ~x55 && x51 && x24 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && ~x55 && x51 && ~x24 && x31 && x29 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x64 && x63 && ~x55 && x51 && ~x24 && x31 && ~x29 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && ~x55 && x51 && ~x24 && ~x31 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x64 && x63 && ~x55 && ~x51 && x42 && x35 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x64 && x63 && ~x55 && ~x51 && x42 && x35 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && ~x55 && ~x51 && x42 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x64 && x63 && ~x55 && ~x51 && x42 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && ~x55 && ~x51 && ~x42 && x52 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( x64 && x63 && ~x55 && ~x51 && ~x42 && x52 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x64 && x63 && ~x55 && ~x51 && ~x42 && x52 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && ~x55 && ~x51 && ~x42 && ~x52 && x34 && x37 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x64 && x63 && ~x55 && ~x51 && ~x42 && ~x52 && x34 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && ~x55 && ~x51 && ~x42 && ~x52 && ~x34 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && ~x63 && x40 && x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( x64 && ~x63 && x40 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x64 && ~x63 && x40 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( x64 && ~x63 && x40 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( x64 && ~x63 && x40 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x64 && ~x63 && x40 && x30 && x16 && ~x6 && ~x8 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x63 && x40 && x30 && ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && ~x63 && x40 && x30 && ~x16 && ~x10 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x63 && x40 && ~x30 && x5 && x9 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x63 && x40 && ~x30 && x5 && ~x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( x64 && ~x63 && x40 && ~x30 && ~x5 && x11 && x3 )
						nx_state = s16;
					else if( x64 && ~x63 && x40 && ~x30 && ~x5 && x11 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x64 && ~x63 && x40 && ~x30 && ~x5 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && x40 && ~x30 && ~x5 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && ~x63 && ~x40 && x51 && x24 && x5 && x36 )
						nx_state = s16;
					else if( x64 && ~x63 && ~x40 && x51 && x24 && x5 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x64 && ~x63 && ~x40 && x51 && x24 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && ~x40 && x51 && ~x24 && x31 && x29 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x64 && ~x63 && ~x40 && x51 && ~x24 && x31 && ~x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && ~x40 && x51 && ~x24 && ~x31 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && x11 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && x11 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && x11 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && x11 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && ~x11 && x49 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && ~x11 && x49 && ~x35 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && ~x11 && x49 && ~x35 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && ~x11 && ~x49 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && ~x11 && ~x49 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && ~x40 && ~x51 && ~x11 && ~x49 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && x63 && x15 && x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x64 && x63 && x15 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x64 && x63 && x15 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x64 && x63 && x15 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x64 && x63 && x15 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x64 && x63 && x15 && x30 && x16 && ~x6 && ~x8 )
						nx_state = s1;
					else if( ~x64 && x63 && x15 && x30 && ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && x63 && x15 && x30 && ~x16 && ~x10 )
						nx_state = s1;
					else if( ~x64 && x63 && x15 && ~x30 && x5 && x9 )
						nx_state = s1;
					else if( ~x64 && x63 && x15 && ~x30 && x5 && ~x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x64 && x63 && x15 && ~x30 && ~x5 && x11 && x3 )
						nx_state = s16;
					else if( ~x64 && x63 && x15 && ~x30 && ~x5 && x11 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x64 && x63 && x15 && ~x30 && ~x5 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && x15 && ~x30 && ~x5 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x64 && x63 && ~x15 && x48 && x24 && x5 && x36 )
						nx_state = s16;
					else if( ~x64 && x63 && ~x15 && x48 && x24 && x5 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && x63 && ~x15 && x48 && x24 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && ~x15 && x48 && ~x24 && x31 && x29 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && x63 && ~x15 && x48 && ~x24 && x31 && ~x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && ~x15 && x48 && ~x24 && ~x31 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && x11 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && x11 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && x11 && ~x35 && x21 )
						nx_state = s1;
					else if( ~x64 && x63 && ~x15 && ~x48 && x11 && ~x35 && ~x21 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && ~x11 && x45 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && ~x11 && x45 && ~x35 && x21 )
						nx_state = s1;
					else if( ~x64 && x63 && ~x15 && ~x48 && ~x11 && x45 && ~x35 && ~x21 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && ~x11 && ~x45 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && ~x11 && ~x45 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && ~x15 && ~x48 && ~x11 && ~x45 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && ~x63 && x44 && x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x64 && ~x63 && x44 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x64 && ~x63 && x44 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x64 && ~x63 && x44 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x64 && ~x63 && x44 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x64 && ~x63 && x44 && x30 && x16 && ~x6 && ~x8 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x63 && x44 && x30 && ~x16 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && ~x63 && x44 && x30 && ~x16 && ~x10 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x63 && x44 && ~x30 && x5 && x9 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x63 && x44 && ~x30 && x5 && ~x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x64 && ~x63 && x44 && ~x30 && ~x5 && x43 && x11 )
						nx_state = s16;
					else if( ~x64 && ~x63 && x44 && ~x30 && ~x5 && x43 && ~x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && x44 && ~x30 && ~x5 && ~x43 && x11 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x64 && ~x63 && x44 && ~x30 && ~x5 && ~x43 && ~x11 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x64 && ~x63 && ~x44 && x51 && x24 && x5 && x36 )
						nx_state = s16;
					else if( ~x64 && ~x63 && ~x44 && x51 && x24 && x5 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && ~x63 && ~x44 && x51 && x24 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && ~x44 && x51 && ~x24 && x31 && x29 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && ~x63 && ~x44 && x51 && ~x24 && x31 && ~x29 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && ~x44 && x51 && ~x24 && ~x31 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && x11 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && x11 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && x11 && ~x35 && x45 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && x11 && ~x35 && ~x45 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && ~x11 && x52 && x35 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && ~x11 && x52 && ~x35 && x45 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && ~x11 && x52 && ~x35 && ~x45 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s16;
				s17 : if( x63 && x64 && x55 && x43 && x27 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( x63 && x64 && x55 && x43 && x27 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x64 && x55 && x43 && x27 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x64 && x55 && x43 && ~x27 && x29 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x64 && x55 && x43 && ~x27 && x29 && ~x1 )
						nx_state = s17;
					else if( x63 && x64 && x55 && x43 && ~x27 && ~x29 )
						nx_state = s17;
					else if( x63 && x64 && x55 && ~x43 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x63 && x64 && x55 && ~x43 && ~x29 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( x63 && x64 && ~x55 && x48 )
						begin
							y13 = 1'b1;	y36 = 1'b1;	
							nx_state = s108;
						end
					else if( x63 && x64 && ~x55 && ~x48 && x57 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x63 && x64 && ~x55 && ~x48 && ~x57 )
						nx_state = s17;
					else if( x63 && ~x64 && x15 && x12 && x27 && x33 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x64 && x15 && x12 && x27 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x64 && x15 && x12 && x27 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && ~x64 && x15 && x12 && ~x27 && x29 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x64 && x15 && x12 && ~x27 && x29 && ~x1 )
						nx_state = s17;
					else if( x63 && ~x64 && x15 && x12 && ~x27 && ~x29 )
						nx_state = s17;
					else if( x63 && ~x64 && x15 && ~x12 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x63 && ~x64 && x15 && ~x12 && ~x29 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && ~x64 && ~x15 && x17 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s110;
						end
					else if( x63 && ~x64 && ~x15 && ~x17 && x41 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x64 && ~x15 && ~x17 && ~x41 )
						nx_state = s17;
					else if( ~x63 && x40 && x12 && x27 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x63 && x40 && x12 && x27 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x40 && x12 && x27 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x63 && x40 && x12 && ~x27 && x29 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && x40 && x12 && ~x27 && x29 && ~x1 )
						nx_state = s17;
					else if( ~x63 && x40 && x12 && ~x27 && ~x29 )
						nx_state = s17;
					else if( ~x63 && x40 && ~x12 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x63 && x40 && ~x12 && ~x29 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x63 && ~x40 && x17 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s110;
						end
					else if( ~x63 && ~x40 && ~x17 && x43 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x63 && ~x40 && ~x17 && ~x43 )
						nx_state = s17;
					else nx_state = s17;
				s18 : if( x63 && x15 && x7 && x35 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( x63 && x15 && x7 && x35 && ~x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x15 && x7 && ~x35 && x1 )
						nx_state = s18;
					else if( x63 && x15 && x7 && ~x35 && ~x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x15 && ~x7 )
						nx_state = s18;
					else if( x63 && ~x15 && x3 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x15 && ~x3 && x2 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && ~x15 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x15 && ~x3 && ~x2 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x64 && x40 && x7 && x35 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x63 && x64 && x40 && x7 && x35 && ~x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x63 && x64 && x40 && x7 && ~x35 && x1 )
						nx_state = s18;
					else if( ~x63 && x64 && x40 && x7 && ~x35 && ~x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x64 && x40 && ~x7 )
						nx_state = s18;
					else if( ~x63 && x64 && ~x40 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x63 && x64 && ~x40 && ~x3 && x2 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x63 && x64 && ~x40 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x64 && ~x40 && ~x3 && ~x2 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x64 && x44 && x35 && x36 && x7 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x63 && ~x64 && x44 && x35 && x36 && ~x7 )
						nx_state = s18;
					else if( ~x63 && ~x64 && x44 && x35 && ~x36 && x7 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x63 && ~x64 && x44 && x35 && ~x36 && ~x7 )
						nx_state = s18;
					else if( ~x63 && ~x64 && x44 && ~x35 && x37 )
						nx_state = s18;
					else if( ~x63 && ~x64 && x44 && ~x35 && ~x37 && x7 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x64 && x44 && ~x35 && ~x37 && ~x7 )
						nx_state = s18;
					else if( ~x63 && ~x64 && ~x44 && x43 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x43 && x2 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x43 && ~x2 && x28 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x43 && ~x2 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s18;
				s19 : if( x64 && x63 && x55 && x24 && x26 && x7 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x64 && x63 && x55 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s111;
						end
					else if( x64 && x63 && x55 && x24 && ~x26 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( x64 && x63 && x55 && ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x64 && x63 && x55 && ~x24 && ~x28 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x64 && x63 && ~x55 && x31 && x50 && x10 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x64 && x63 && ~x55 && x31 && x50 && ~x10 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( x64 && x63 && ~x55 && x31 && ~x50 )
						nx_state = s19;
					else if( x64 && x63 && ~x55 && ~x31 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( x64 && ~x63 && x40 && x24 && x26 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x64 && ~x63 && x40 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s111;
						end
					else if( x64 && ~x63 && x40 && x24 && ~x26 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x64 && ~x63 && x40 && ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x64 && ~x63 && x40 && ~x24 && ~x28 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x63 && ~x40 && x31 && x19 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( x64 && ~x63 && ~x40 && x31 && x19 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x64 && ~x63 && ~x40 && x31 && ~x19 )
						nx_state = s19;
					else if( x64 && ~x63 && ~x40 && ~x31 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x64 && x63 && x15 && x24 && x26 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && x63 && x15 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x64 && x63 && x15 && x24 && ~x26 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x64 && x63 && x15 && ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x64 && x63 && x15 && ~x24 && ~x28 )
						nx_state = s1;
					else if( ~x64 && x63 && ~x15 && x31 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x64 && x63 && ~x15 && x31 && x19 && ~x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x64 && x63 && ~x15 && x31 && ~x19 )
						nx_state = s19;
					else if( ~x64 && x63 && ~x15 && ~x31 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x64 && ~x63 && x44 && x24 && x26 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && ~x63 && x44 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y30 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x64 && ~x63 && x44 && x24 && ~x26 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x64 && ~x63 && x44 && ~x24 && x28 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x64 && ~x63 && x44 && ~x24 && ~x28 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x63 && ~x44 && x31 && x19 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x64 && ~x63 && ~x44 && x31 && x19 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x64 && ~x63 && ~x44 && x31 && ~x19 )
						nx_state = s19;
					else if( ~x64 && ~x63 && ~x44 && ~x31 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else nx_state = s19;
				s20 : if( x62 && x64 && x10 && x61 && x39 && x46 && x51 && x36 )
						nx_state = s20;
					else if( x62 && x64 && x10 && x61 && x39 && x46 && x51 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x64 && x10 && x61 && x39 && x46 && ~x51 && x36 )
						nx_state = s20;
					else if( x62 && x64 && x10 && x61 && x39 && x46 && ~x51 && ~x36 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x64 && x10 && x61 && x39 && ~x46 && x36 )
						nx_state = s20;
					else if( x62 && x64 && x10 && x61 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x64 && x10 && x61 && ~x39 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x62 && x64 && x10 && ~x61 && x11 && x1 && x2 && x4 && x5 && x3 )
						nx_state = s20;
					else if( x62 && x64 && x10 && ~x61 && x11 && x1 && x2 && x4 && x5 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x64 && x10 && ~x61 && x11 && x1 && x2 && x4 && ~x5 && x3 )
						nx_state = s20;
					else if( x62 && x64 && x10 && ~x61 && x11 && x1 && x2 && x4 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && x64 && x10 && ~x61 && x11 && x1 && x2 && ~x4 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && x10 && ~x61 && x11 && x1 && x2 && ~x4 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x64 && x10 && ~x61 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x64 && x10 && ~x61 && x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && x10 && ~x61 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x64 && x10 && ~x61 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && x34 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && x34 && ~x8 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && x34 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && ~x34 && x32 && x7 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x64 && ~x10 && x11 && x61 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x62 && x64 && ~x10 && x11 && ~x61 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s43;
						end
					else if( x62 && x64 && ~x10 && x11 && ~x61 && ~x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x64 && ~x10 && x11 && ~x61 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && ~x10 && ~x11 && x12 && x61 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x64 && ~x10 && ~x11 && x12 && x61 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && ~x10 && ~x11 && x12 && x61 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x64 && ~x10 && ~x11 && x12 && ~x61 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x64 && ~x10 && ~x11 && x12 && ~x61 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && ~x10 && ~x11 && x12 && ~x61 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && x61 && x13 && x1 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && x61 && x13 && x1 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && x61 && x13 && x1 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && x61 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && x61 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && ~x61 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s44;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && ~x61 && ~x1 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && ~x61 && ~x1 && ~x2 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x64 && ~x10 && ~x11 && ~x12 && ~x61 && ~x1 && ~x2 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x62 && ~x64 && x14 && x30 && x43 )
						nx_state = s20;
					else if( x62 && ~x64 && x14 && x30 && ~x43 && x18 && x41 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x64 && x14 && x30 && ~x43 && x18 && ~x41 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && ~x64 && x14 && x30 && ~x43 && ~x18 && x34 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && ~x64 && x14 && x30 && ~x43 && ~x18 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x64 && x14 && ~x30 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x64 && ~x14 && x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && x1 && ~x2 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && ~x64 && ~x14 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s20;
					else if( x62 && ~x64 && ~x14 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x62 && x63 && x64 && x46 && x47 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && x63 && x64 && x46 && x47 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && x46 && ~x47 && x34 && x2 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && x63 && x64 && x46 && ~x47 && x34 && ~x2 )
						nx_state = s20;
					else if( ~x62 && x63 && x64 && x46 && ~x47 && ~x34 && x4 && x2 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x64 && x46 && ~x47 && ~x34 && x4 && ~x2 )
						nx_state = s20;
					else if( ~x62 && x63 && x64 && x46 && ~x47 && ~x34 && ~x4 && x32 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && x63 && x64 && x46 && ~x47 && ~x34 && ~x4 && x32 && ~x2 )
						nx_state = s20;
					else if( ~x62 && x63 && x64 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && ~x2 )
						nx_state = s20;
					else if( ~x62 && x63 && x64 && ~x46 && x16 && x35 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x62 && x63 && x64 && ~x46 && x16 && x35 && x5 && ~x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x63 && x64 && ~x46 && x16 && x35 && ~x5 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x62 && x63 && x64 && ~x46 && x16 && x35 && ~x5 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && x63 && x64 && ~x46 && x16 && ~x35 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && x63 && x64 && ~x46 && x16 && ~x35 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && ~x46 && ~x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x11 && x25 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x11 && x25 && ~x3 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x11 && x25 && ~x3 && ~x5 )
						nx_state = s20;
					else if( ~x62 && x63 && ~x64 && x15 && x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x62 && x63 && ~x64 && x15 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x44 && x40 && x48 && x47 )
						nx_state = s20;
					else if( ~x62 && x63 && ~x64 && ~x15 && x44 && x40 && x48 && ~x47 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x44 && x40 && ~x48 && x47 )
						nx_state = s20;
					else if( ~x62 && x63 && ~x64 && ~x15 && x44 && x40 && ~x48 && ~x47 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x44 && ~x40 && x47 )
						nx_state = s20;
					else if( ~x62 && x63 && ~x64 && ~x15 && x44 && ~x40 && ~x47 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x44 && ~x40 && ~x47 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x44 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x16 && x15 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && ~x63 && x16 && x15 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && ~x5 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && x4 && ~x5 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && ~x63 && x16 && ~x15 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x2 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x2 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x2 && ~x3 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && x2 && ~x3 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x63 && ~x16 && x15 && ~x2 )
						nx_state = s20;
					else if( ~x62 && ~x63 && ~x16 && ~x15 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s20;
				s21 : if( x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x1 && x2 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x1 && ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s21;
				s22 : if( x2 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s23;
						end
					else if( ~x2 )
						begin
							y4 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s22;
				s23 : if( x10 && x8 && x1 )
						begin
							y21 = 1'b1;	
							nx_state = s119;
						end
					else if( x10 && x8 && ~x1 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x8 )
						begin
							y21 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s120;
						end
					else if( ~x10 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x10 && ~x1 && ~x3 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s23;
				s24 : if( x10 && x11 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s121;
						end
					else if( x10 && ~x11 )
						begin
							y21 = 1'b1;	
							nx_state = s119;
						end
					else if( ~x10 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							nx_state = s120;
						end
					else if( ~x10 && ~x1 && x3 )
						nx_state = s1;
					else if( ~x10 && ~x1 && ~x3 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s24;
				s25 : if( x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x2 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s25;
				s26 : if( x62 && x16 && x15 && x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && x16 && x15 && ~x1 && x5 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( x62 && x16 && x15 && ~x1 && ~x5 && x6 && x2 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && x16 && x15 && ~x1 && ~x5 && x6 && x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && x16 && x15 && ~x1 && ~x5 && x6 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x62 && x16 && x15 && ~x1 && ~x5 && ~x6 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( x62 && x16 && ~x15 && x4 && x5 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x62 && x16 && ~x15 && x4 && x5 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x62 && x16 && ~x15 && x4 && ~x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && x16 && ~x15 && ~x4 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && x15 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( x62 && ~x16 && x15 && ~x7 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( x62 && ~x16 && x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x62 && ~x16 && x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( x62 && ~x16 && x15 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && x15 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && x3 && x11 && x2 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s126;
						end
					else if( x62 && ~x16 && ~x15 && x3 && x11 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && x13 && x2 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && x13 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && x3 && ~x11 && ~x4 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && x11 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && x11 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && x2 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && ~x12 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && x4 && ~x11 && ~x12 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && x6 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && x6 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x2 )
						nx_state = s26;
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && ~x16 && ~x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x2 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && x15 && x16 && x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && x15 && x16 && ~x32 && x36 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x63 && x64 && x15 && x16 && ~x32 && ~x36 && x6 && x2 && x3 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x62 && x63 && x64 && x15 && x16 && ~x32 && ~x36 && x6 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x62 && x63 && x64 && x15 && x16 && ~x32 && ~x36 && x6 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x62 && x63 && x64 && x15 && x16 && ~x32 && ~x36 && ~x6 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && x63 && x64 && x15 && ~x16 && x7 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && x63 && x64 && x15 && ~x16 && ~x7 && x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && x63 && x64 && x15 && ~x16 && ~x7 && ~x9 && x41 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x62 && x63 && x64 && x15 && ~x16 && ~x7 && ~x9 && x41 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x62 && x63 && x64 && x15 && ~x16 && ~x7 && ~x9 && ~x41 && x42 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && x15 && ~x16 && ~x7 && ~x9 && ~x41 && ~x42 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && x47 && x35 && x5 && x33 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && ~x15 && x47 && x35 && x5 && ~x33 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && x63 && x64 && ~x15 && x47 && x35 && x5 && ~x33 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && x64 && ~x15 && x47 && x35 && ~x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && x47 && ~x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && x42 && x2 )
						begin
							y2 = 1'b1;	y8 = 1'b1;	y12 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s135;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && x42 && ~x2 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && x12 && x13 && x2 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && x12 && x13 && ~x2 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && x12 && ~x13 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && x3 && x4 && ~x12 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && x3 && ~x4 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && x12 && x13 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && x12 && x13 && ~x2 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && x12 && ~x13 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && x4 && ~x12 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && x34 && ~x42 && ~x3 && ~x4 )
						nx_state = s26;
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && x35 && x11 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s137;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && x44 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && x44 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && x43 && ~x44 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && x35 && ~x11 && ~x43 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && x38 && x39 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && x38 && ~x39 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && ~x38 && x8 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && x36 && ~x37 && ~x38 && ~x8 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && x7 && x9 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && x7 && ~x9 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && ~x7 && x40 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && x6 && ~x7 && ~x40 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && x38 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && x38 && ~x41 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && ~x38 && x10 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && x33 && ~x35 && ~x36 && ~x6 && ~x38 && ~x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && x63 && x64 && ~x15 && ~x47 && ~x34 && ~x33 )
						nx_state = s26;
					else if( ~x62 && x63 && ~x64 && x15 && x19 && x13 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s26;
					else if( ~x62 && x63 && ~x64 && x15 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x19 && ~x13 && x32 && ~x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x62 && x63 && ~x64 && x15 && x19 && ~x13 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x63 && ~x64 && x15 && ~x19 )
						nx_state = s1;
					else if( ~x62 && x63 && ~x64 && ~x15 && x17 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x17 && x19 && ~x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && x17 && ~x19 )
						nx_state = s26;
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x17 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x63 && ~x64 && ~x15 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x62 && ~x63 && x15 && x16 && x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && x15 && x16 && ~x1 && x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && ~x63 && x15 && x16 && ~x1 && ~x5 && x6 && x2 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x63 && x15 && x16 && ~x1 && ~x5 && x6 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x62 && ~x63 && x15 && x16 && ~x1 && ~x5 && x6 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x62 && ~x63 && x15 && x16 && ~x1 && ~x5 && ~x6 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && x7 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && ~x7 && x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && ~x7 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && x15 && ~x16 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && x5 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && x5 && ~x2 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && x5 && ~x2 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && x4 && ~x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && x16 && ~x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && x3 && x11 && x2 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && x3 && x11 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && x3 && ~x11 && ~x4 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && x11 && x2 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && x11 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x2 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && ~x13 && x2 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && ~x12 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && x4 && ~x11 && ~x12 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && x6 && x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && x6 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x2 )
						nx_state = s26;
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x62 && ~x63 && ~x15 && ~x16 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x2 )
						nx_state = s26;
					else nx_state = s26;
				s27 : if( x63 && x15 && x14 && x8 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x15 && x14 && x8 && ~x10 )
						nx_state = s1;
					else if( x63 && x15 && x14 && ~x8 && x30 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && x15 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x15 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x63 && x15 && x14 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x15 && ~x14 && x32 && x3 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && x15 && ~x14 && x32 && ~x3 )
						nx_state = s27;
					else if( x63 && x15 && ~x14 && ~x32 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x15 && ~x14 && ~x32 && ~x3 )
						nx_state = s27;
					else if( x63 && ~x15 && x16 && x43 && x29 && x40 && x27 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( x63 && ~x15 && x16 && x43 && x29 && x40 && ~x27 )
						nx_state = s27;
					else if( x63 && ~x15 && x16 && x43 && x29 && ~x40 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x15 && x16 && x43 && x29 && ~x40 && ~x27 )
						nx_state = s27;
					else if( x63 && ~x15 && x16 && x43 && ~x29 && x33 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x15 && x16 && x43 && ~x29 && x33 && ~x27 )
						nx_state = s27;
					else if( x63 && ~x15 && x16 && x43 && ~x29 && ~x33 && x41 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x63 && ~x15 && x16 && x43 && ~x29 && ~x33 && x41 && ~x27 )
						nx_state = s27;
					else if( x63 && ~x15 && x16 && x43 && ~x29 && ~x33 && ~x41 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x15 && x16 && x43 && ~x29 && ~x33 && ~x41 && ~x27 )
						nx_state = s27;
					else if( x63 && ~x15 && x16 && ~x43 )
						nx_state = s1;
					else if( x63 && ~x15 && ~x16 && x37 && x42 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x15 && ~x16 && x37 && x42 && ~x1 )
						nx_state = s27;
					else if( x63 && ~x15 && ~x16 && x37 && ~x42 )
						nx_state = s1;
					else if( x63 && ~x15 && ~x16 && ~x37 && x25 )
						nx_state = s1;
					else if( x63 && ~x15 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x63 && ~x15 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s27;
					else if( x63 && ~x15 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x15 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s27;
					else if( ~x63 && x26 && x28 && x9 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x63 && x26 && x28 && x9 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x63 && x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && x26 && x28 && ~x9 && ~x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x26 && ~x28 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x63 && ~x26 && x27 && x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x63 && ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x63 && ~x26 && ~x27 && x28 && x64 && x2 && x24 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s146;
						end
					else if( ~x63 && ~x26 && ~x27 && x28 && x64 && x2 && ~x24 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x63 && ~x26 && ~x27 && x28 && x64 && ~x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x63 && ~x26 && ~x27 && x28 && ~x64 && x32 && x24 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s146;
						end
					else if( ~x63 && ~x26 && ~x27 && x28 && ~x64 && x32 && ~x24 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x63 && ~x26 && ~x27 && x28 && ~x64 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x28 && x18 && x3 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x28 && x18 && x3 && ~x64 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x28 && x18 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x28 && ~x18 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else nx_state = s27;
				s28 : if( x15 && x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x15 && ~x10 && x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x15 && ~x10 && ~x25 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x15 && x8 && x44 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && x8 && ~x44 && x37 )
						nx_state = s1;
					else if( ~x15 && x8 && ~x44 && ~x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && ~x8 && x48 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x15 && ~x8 && ~x48 && x37 )
						nx_state = s1;
					else if( ~x15 && ~x8 && ~x48 && ~x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s28;
				s29 : if( x15 && x16 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s152;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s153;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s152;
						end
					else if( ~x15 && ~x16 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s29;
				s30 : if( x16 && x15 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x16 && x15 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x16 && x15 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x16 && ~x15 && x4 && x5 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x16 && ~x15 && x4 && ~x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x16 && ~x15 && ~x4 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x16 && x15 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x16 && ~x15 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else nx_state = s30;
				s31 : if( x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s152;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s31;
					else if( ~x15 && x16 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s153;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s152;
						end
					else if( ~x15 && ~x16 && x14 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s152;
						end
					else if( ~x15 && ~x16 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else nx_state = s31;
				s32 : if( x63 && x46 && x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( x63 && x46 && ~x16 && x37 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && x46 && ~x16 && ~x37 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && ~x46 && x47 && x4 && x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( x63 && ~x46 && x47 && x4 && ~x36 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( x63 && ~x46 && x47 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && ~x46 && ~x47 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x63 && x15 && x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x63 && x15 && ~x16 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x63 && x15 && ~x16 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x63 && ~x15 && x16 && x4 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x63 && ~x15 && ~x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else nx_state = s32;
				s33 : if( x16 && x5 && x15 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( x16 && x5 && x15 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( x16 && x5 && ~x15 && x4 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x16 && x5 && ~x15 && x4 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s158;
						end
					else if( x16 && x5 && ~x15 && ~x4 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( x16 && ~x5 && x15 && x64 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && ~x5 && x15 && x64 && ~x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( x16 && ~x5 && x15 && ~x64 && x6 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x16 && ~x5 && x15 && ~x64 && ~x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( x16 && ~x5 && ~x15 && x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x16 && ~x5 && ~x15 && ~x4 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x16 && x15 && x6 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && x6 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s158;
						end
					else if( ~x16 && x15 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x16 && ~x15 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x16 && ~x15 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else nx_state = s33;
				s34 : if( x63 && x46 && x16 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && x46 && ~x16 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( x63 && x46 && ~x16 && ~x12 )
						nx_state = s34;
					else if( x63 && ~x46 && x47 && x4 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( x63 && ~x46 && x47 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && ~x46 && ~x47 && x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && ~x46 && ~x47 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x63 && x15 && x16 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x63 && x15 && ~x16 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x63 && x15 && ~x16 && ~x12 )
						nx_state = s34;
					else if( ~x63 && ~x15 && x16 && x4 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x63 && ~x15 && ~x16 && x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x63 && ~x15 && ~x16 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else nx_state = s34;
				s35 : if( x15 && x62 && x16 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( x15 && x62 && ~x16 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x15 && x62 && ~x16 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( x15 && ~x62 && x63 && x47 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x15 && ~x62 && x63 && ~x47 && x36 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x15 && ~x62 && x63 && ~x47 && ~x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x15 && ~x62 && ~x63 && x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x15 && ~x62 && ~x63 && ~x16 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( x15 && ~x62 && ~x63 && ~x16 && ~x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x15 && x16 && x62 && x4 && x5 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x15 && x16 && x62 && x4 && x5 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && x16 && x62 && x4 && ~x5 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x15 && x16 && x62 && x4 && ~x5 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x15 && x16 && x62 && ~x4 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x15 && x16 && x62 && ~x4 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x15 && x16 && ~x62 && x63 && x35 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x15 && x16 && ~x62 && x63 && x35 && x5 && ~x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x15 && x16 && ~x62 && x63 && x35 && ~x5 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x15 && x16 && ~x62 && x63 && x35 && ~x5 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && x16 && ~x62 && x63 && ~x35 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x15 && x16 && ~x62 && x63 && ~x35 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && x16 && ~x62 && ~x63 && x4 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x15 && x16 && ~x62 && ~x63 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x15 && x16 && ~x62 && ~x63 && x4 && ~x5 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x15 && x16 && ~x62 && ~x63 && x4 && ~x5 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && x16 && ~x62 && ~x63 && ~x4 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x15 && x16 && ~x62 && ~x63 && ~x4 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && ~x16 && x62 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x15 && ~x16 && ~x62 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s35;
				s36 : if( x64 && x61 && x35 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x35 && x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x64 && x61 && ~x35 && ~x13 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( x64 && ~x61 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && ~x61 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && x14 && x35 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x35 && x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x64 && x14 && ~x35 && ~x13 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x64 && ~x14 && x10 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else nx_state = s36;
				s37 : if( x64 && x61 && x50 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && x61 && x50 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && x61 && x50 && ~x19 )
						nx_state = s37;
					else if( x64 && x61 && ~x50 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && ~x61 && x11 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && x11 && ~x10 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x64 && ~x61 && x11 && ~x10 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( x64 && ~x61 && ~x11 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s44;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && ~x12 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && ~x12 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x64 && x14 && x42 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && x14 && x42 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && x14 && x42 && ~x19 )
						nx_state = s37;
					else if( ~x64 && x14 && ~x42 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && ~x14 && x11 && x10 )
						nx_state = s1;
					else if( ~x64 && ~x14 && x11 && ~x10 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x64 && ~x14 && x11 && ~x10 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x64 && ~x14 && ~x11 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x10 && x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x10 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x10 && ~x12 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x10 && ~x12 && ~x1 && ~x4 )
						nx_state = s1;
					else nx_state = s37;
				s38 : if( x28 && x64 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x28 && x64 && ~x57 )
						nx_state = s38;
					else if( x28 && ~x64 && x21 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x28 && ~x64 && ~x21 )
						nx_state = s38;
					else if( ~x28 && x27 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x28 && x27 && ~x8 && x37 && x64 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x28 && x27 && ~x8 && x37 && ~x64 )
						nx_state = s1;
					else if( ~x28 && x27 && ~x8 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x28 && ~x27 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s38;
				s39 : if( x64 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && ~x50 )
						nx_state = s39;
					else if( ~x64 && x42 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x64 && ~x42 )
						nx_state = s39;
					else nx_state = s39;
				s40 : if( x64 && x61 && x16 && x54 && x29 && x59 && x27 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( x64 && x61 && x16 && x54 && x29 && x59 && ~x27 )
						nx_state = s40;
					else if( x64 && x61 && x16 && x54 && x29 && ~x59 && x27 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && x61 && x16 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s40;
					else if( x64 && x61 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && x61 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s40;
					else if( x64 && x61 && x16 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x64 && x61 && x16 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s40;
					else if( x64 && x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s40;
					else if( x64 && x61 && x16 && ~x54 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x16 && x37 && x56 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && x61 && ~x16 && x37 && x56 && ~x1 )
						nx_state = s40;
					else if( x64 && x61 && ~x16 && x37 && ~x56 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x16 && ~x37 && x25 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( x64 && x61 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s40;
					else if( x64 && x61 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && x61 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s40;
					else if( x64 && ~x61 && x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && x10 && ~x11 && x12 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && x10 && ~x11 && x12 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x64 && ~x61 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && ~x61 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && ~x61 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && ~x10 && x12 && x2 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x64 && ~x61 && ~x10 && x12 && x2 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && ~x61 && ~x10 && x12 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s164;
						end
					else if( x64 && ~x61 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && ~x61 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && x16 && x26 && x29 && x27 && x18 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( ~x64 && x14 && x16 && x26 && x29 && x27 && ~x18 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && x14 && x16 && x26 && x29 && ~x27 )
						nx_state = s40;
					else if( ~x64 && x14 && x16 && x26 && ~x29 && x27 && x33 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && x14 && x16 && x26 && ~x29 && x27 && ~x33 && x21 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x64 && x14 && x16 && x26 && ~x29 && x27 && ~x33 && ~x21 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && x14 && x16 && x26 && ~x29 && ~x27 )
						nx_state = s40;
					else if( ~x64 && x14 && x16 && ~x26 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x16 && x37 && x22 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && x14 && ~x16 && x37 && x22 && ~x1 )
						nx_state = s40;
					else if( ~x64 && x14 && ~x16 && x37 && ~x22 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x16 && ~x37 && x25 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x64 && x14 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s40;
					else if( ~x64 && x14 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && x14 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s40;
					else if( ~x64 && ~x14 && x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && x10 && ~x11 && x12 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && x10 && ~x11 && x12 && ~x2 )
						nx_state = s1;
					else if( ~x64 && ~x14 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x64 && ~x14 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && ~x14 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && ~x14 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && ~x10 && x12 && x2 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x64 && ~x14 && ~x10 && x12 && x2 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && ~x14 && ~x10 && x12 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s164;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s40;
				s41 : if( x64 && x61 && x51 && x24 && x5 && x36 )
						nx_state = s41;
					else if( x64 && x61 && x51 && x24 && x5 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x64 && x61 && x51 && x24 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && x61 && x51 && ~x24 && x31 && x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x64 && x61 && x51 && ~x24 && x31 && ~x29 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && x61 && x51 && ~x24 && ~x31 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x64 && x61 && ~x51 && x11 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x64 && x61 && ~x51 && x11 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && x61 && ~x51 && x11 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x51 && x11 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && x61 && ~x51 && ~x11 && x52 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( x64 && x61 && ~x51 && ~x11 && x52 && ~x35 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x51 && ~x11 && x52 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && x61 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x64 && x61 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && x61 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && ~x61 && x11 && x10 && x4 && x5 && x3 )
						nx_state = s41;
					else if( x64 && ~x61 && x11 && x10 && x4 && x5 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && x11 && x10 && x4 && ~x5 && x3 )
						nx_state = s41;
					else if( x64 && ~x61 && x11 && x10 && x4 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x64 && ~x61 && x11 && x10 && ~x4 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && ~x61 && x11 && x10 && ~x4 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && ~x61 && x11 && ~x10 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x64 && ~x61 && x11 && ~x10 && ~x6 && x8 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( x64 && ~x61 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && ~x61 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x64 && ~x61 && x11 && ~x10 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && ~x61 && x11 && ~x10 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && ~x11 && x10 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && ~x11 && x10 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && x12 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && x12 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s165;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && ~x12 && ~x6 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && ~x61 && ~x11 && ~x10 && ~x12 && ~x6 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && x41 && x24 && x5 && x36 )
						nx_state = s41;
					else if( ~x64 && x14 && x41 && x24 && x5 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x64 && x14 && x41 && x24 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && x41 && ~x24 && x31 && x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x64 && x14 && x41 && ~x24 && x31 && ~x29 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && x41 && ~x24 && ~x31 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x64 && x14 && ~x41 && x11 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x64 && x14 && ~x41 && x11 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && ~x41 && x11 && ~x35 && x15 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x41 && x11 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && ~x41 && ~x11 && x40 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x64 && x14 && ~x41 && ~x11 && x40 && ~x35 && x15 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x41 && ~x11 && x40 && ~x35 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && ~x41 && ~x11 && ~x40 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x64 && x14 && ~x41 && ~x11 && ~x40 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && x14 && ~x41 && ~x11 && ~x40 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && ~x14 && x11 && x10 && x4 && x5 && x3 )
						nx_state = s41;
					else if( ~x64 && ~x14 && x11 && x10 && x4 && x5 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && x11 && x10 && x4 && ~x5 && x3 )
						nx_state = s41;
					else if( ~x64 && ~x14 && x11 && x10 && x4 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x64 && ~x14 && x11 && x10 && ~x4 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && ~x14 && x11 && x10 && ~x4 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x64 && ~x14 && x11 && ~x10 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x64 && ~x14 && x11 && ~x10 && ~x6 && x8 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x64 && ~x14 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && ~x14 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x64 && ~x14 && x11 && ~x10 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && ~x14 && x11 && ~x10 && ~x6 && ~x8 )
						nx_state = s1;
					else if( ~x64 && ~x14 && ~x11 && x10 && x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && ~x11 && x10 && ~x2 )
						nx_state = s1;
					else if( ~x64 && ~x14 && ~x11 && ~x10 && x12 && x9 )
						nx_state = s1;
					else if( ~x64 && ~x14 && ~x11 && ~x10 && x12 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x10 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x10 && ~x12 && ~x6 && x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x10 && ~x12 && ~x6 && ~x9 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else nx_state = s41;
				s42 : if( x64 && x61 && x8 && x53 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x64 && x61 && x8 && ~x53 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && x8 && ~x53 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x64 && x61 && ~x8 && x51 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x64 && x61 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x8 && ~x51 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x64 && ~x61 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && ~x61 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 && x12 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s166;
						end
					else if( ~x64 && x14 && x8 && x30 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && x14 && x8 && ~x30 && x37 )
						nx_state = s1;
					else if( ~x64 && x14 && x8 && ~x30 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && x14 && ~x8 && x41 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && x14 && ~x8 && ~x41 && x37 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x8 && ~x41 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && ~x14 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 && x12 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 && ~x12 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s166;
						end
					else nx_state = s42;
				s43 : if( x7 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x7 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s43;
				s44 : if( x64 && x61 && x29 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( x64 && x61 && x29 && ~x50 )
						nx_state = s44;
					else if( x64 && x61 && ~x29 && x60 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x29 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && ~x61 && x11 && x6 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x64 && ~x61 && x11 && x6 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( x64 && ~x61 && x11 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( x64 && ~x61 && ~x11 && x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && ~x61 && ~x11 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x64 && x14 && x29 && x42 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x64 && x14 && x29 && ~x42 )
						nx_state = s44;
					else if( ~x64 && x14 && ~x29 && x15 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x29 && ~x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && ~x14 && x11 && x6 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x64 && ~x14 && x11 && x6 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x64 && ~x14 && x11 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x64 && ~x14 && ~x11 && x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else nx_state = s44;
				s45 : if( x17 && x18 && x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( x17 && x18 && ~x4 && x40 && x31 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x17 && x18 && ~x4 && x40 && ~x31 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x17 && x18 && ~x4 && ~x40 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( x17 && ~x18 && x11 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else if( x17 && ~x18 && ~x11 && x16 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( x17 && ~x18 && ~x11 && ~x16 && x15 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x17 && ~x18 && ~x11 && ~x16 && x15 && ~x1 )
						nx_state = s45;
					else if( x17 && ~x18 && ~x11 && ~x16 && ~x15 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x17 && ~x18 && ~x11 && ~x16 && ~x15 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && x18 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x17 && ~x18 && x19 && x1 && x39 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x17 && ~x18 && x19 && x1 && ~x39 && x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x17 && ~x18 && x19 && x1 && ~x39 && ~x31 )
						nx_state = s45;
					else if( ~x17 && ~x18 && x19 && ~x1 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x17 && ~x18 && ~x19 && x1 && x39 && x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x17 && ~x18 && ~x19 && x1 && x39 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x17 && ~x18 && ~x19 && x1 && x39 && ~x3 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x17 && ~x18 && ~x19 && x1 && ~x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x17 && ~x18 && ~x19 && ~x1 && x2 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x17 && ~x18 && ~x19 && ~x1 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else nx_state = s45;
				s46 : if( x17 && x18 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( x17 && x18 && ~x1 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x17 && x18 && ~x1 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( x17 && ~x18 && x7 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s63;
						end
					else if( x17 && ~x18 && ~x7 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x17 && x18 && x19 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x17 && x18 && x19 && ~x5 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x17 && x18 && ~x19 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x17 && ~x18 && x19 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x17 && ~x18 && ~x19 && x5 && x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x17 && ~x18 && ~x19 && x5 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x17 && ~x18 && ~x19 && x5 && ~x3 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x17 && ~x18 && ~x19 && ~x5 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s46;
				s47 : if( x18 && x17 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( x18 && x17 && ~x1 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x18 && x17 && ~x1 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( x18 && ~x17 && x19 && x39 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x18 && ~x17 && x19 && x39 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( x18 && ~x17 && x19 && ~x39 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x18 && ~x17 && ~x19 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x18 && x17 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x18 && ~x17 && x19 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x18 && ~x17 && x19 && ~x35 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x18 && ~x17 && x19 && ~x35 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x18 && ~x17 && x19 && ~x35 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x18 && ~x17 && x19 && ~x35 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x18 && ~x17 && x19 && ~x35 && x15 && ~x16 && ~x1 )
						nx_state = s47;
					else if( ~x18 && ~x17 && x19 && ~x35 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x18 && ~x17 && x19 && ~x35 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x18 && ~x17 && x19 && ~x35 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x18 && ~x17 && ~x19 && x40 && x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x18 && ~x17 && ~x19 && x40 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x18 && ~x17 && ~x19 && x40 && ~x3 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x18 && ~x17 && ~x19 && ~x40 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else nx_state = s47;
				s48 : if( x17 && x18 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s82;
						end
					else if( x17 && ~x18 && x14 && x5 )
						nx_state = s48;
					else if( x17 && ~x18 && x14 && ~x5 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( x17 && ~x18 && ~x14 && x5 )
						nx_state = s48;
					else if( x17 && ~x18 && ~x14 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x17 && x18 && x19 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x17 && x18 && ~x19 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x17 && x18 && ~x19 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x17 && x18 && ~x19 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x17 && x18 && ~x19 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && x18 && ~x19 && x15 && ~x16 && ~x1 )
						nx_state = s48;
					else if( ~x17 && x18 && ~x19 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && x18 && ~x19 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x17 && x18 && ~x19 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && ~x18 && x4 && x19 && x1 )
						nx_state = s48;
					else if( ~x17 && ~x18 && x4 && x19 && ~x1 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x17 && ~x18 && x4 && ~x19 )
						nx_state = s48;
					else if( ~x17 && ~x18 && ~x4 && x19 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x17 && ~x18 && ~x4 && ~x19 )
						nx_state = s48;
					else nx_state = s48;
				s49 : if( x63 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s24;
						end
					else if( x63 && ~x4 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s121;
						end
					else if( ~x63 && x8 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x63 && ~x8 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s168;
						end
					else nx_state = s49;
				s50 : if( 1'b1 )
						begin
							y20 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s50;
				s51 : if( x1 )
						begin
							y4 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s51;
				s52 : if( x63 && x11 && x43 && x13 && x10 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x11 && x43 && x13 && ~x10 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && x11 && x43 && x13 && ~x10 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && x11 && x43 && x13 && ~x10 && ~x34 && ~x37 )
						nx_state = s52;
					else if( x63 && x11 && x43 && ~x13 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && x11 && x43 && ~x13 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && x11 && x43 && ~x13 && ~x34 && ~x37 )
						nx_state = s52;
					else if( x63 && x11 && ~x43 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && x11 && ~x43 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && x11 && ~x43 && ~x34 && ~x37 )
						nx_state = s52;
					else if( x63 && ~x11 && x12 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x11 && x12 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x11 && x12 && ~x34 && ~x37 )
						nx_state = s52;
					else if( x63 && ~x11 && ~x12 && x44 && x14 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x11 && ~x12 && x44 && x14 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x11 && ~x12 && x44 && x14 && ~x34 && ~x37 )
						nx_state = s52;
					else if( x63 && ~x11 && ~x12 && x44 && ~x14 && x41 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x14 && x41 && ~x32 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x14 && ~x41 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x14 && ~x41 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x14 && ~x41 && ~x34 && ~x37 )
						nx_state = s52;
					else if( x63 && ~x11 && ~x12 && ~x44 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x63 && ~x11 && ~x12 && ~x44 && ~x34 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x63 && ~x11 && ~x12 && ~x44 && ~x34 && ~x37 )
						nx_state = s52;
					else if( ~x63 && x64 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && ~x64 && x17 && x18 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x64 && x17 && x18 && ~x1 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && ~x64 && x17 && x18 && ~x1 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x64 && x17 && ~x18 && x35 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x63 && ~x64 && x17 && ~x18 && ~x35 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s61;
						end
					else if( ~x63 && ~x64 && ~x17 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s52;
				s53 : if( x62 && x61 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s169;
						end
					else if( x62 && x61 && ~x9 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x62 && x61 && ~x9 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x61 && x29 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s171;
						end
					else if( x62 && ~x61 && x29 && ~x50 )
						nx_state = s53;
					else if( x62 && ~x61 && ~x29 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x62 && ~x61 && ~x29 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x62 && x33 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x62 && ~x33 )
						nx_state = s53;
					else nx_state = s53;
				s54 : if( x15 && x16 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x15 && x16 && ~x5 && x37 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && x16 && ~x5 && ~x37 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x15 && ~x16 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x15 && ~x16 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x15 && x47 && x35 && x36 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x15 && x47 && x35 && ~x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && x47 && ~x35 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x15 && ~x47 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else nx_state = s54;
				s55 : if( x15 && x16 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s152;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s154;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s154;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s55;
					else if( ~x15 && x16 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x15 && ~x16 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && ~x16 && ~x13 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s154;
						end
					else nx_state = s55;
				s56 : if( x15 && x16 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s153;
						end
					else if( x15 && ~x16 && x13 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s56;
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s56;
					else if( ~x15 && x16 && x4 && x5 && x2 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x2 && ~x1 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s56;
				s57 : if( x15 && x16 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( x15 && ~x16 && x3 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x15 && ~x16 && x3 && ~x2 )
						nx_state = s57;
					else if( x15 && ~x16 && ~x3 && x4 && x2 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( x15 && ~x16 && ~x3 && x4 && ~x2 )
						nx_state = s57;
					else if( x15 && ~x16 && ~x3 && ~x4 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 && ~x3 && ~x4 && ~x2 )
						nx_state = s57;
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x1 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && x16 && ~x4 && x1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x15 && x16 && ~x4 && ~x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x15 && ~x16 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else nx_state = s57;
				s58 : if( x63 && x11 && x43 && x13 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x11 && x43 && x13 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x11 && x43 && x13 && ~x8 && ~x1 )
						nx_state = s58;
					else if( x63 && x11 && x43 && ~x13 && x10 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x11 && x43 && ~x13 && ~x10 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x11 && x43 && ~x13 && ~x10 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x11 && x43 && ~x13 && ~x10 && ~x8 && ~x1 )
						nx_state = s58;
					else if( x63 && x11 && ~x43 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x11 && ~x43 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x11 && ~x43 && ~x8 && ~x1 )
						nx_state = s58;
					else if( x63 && ~x11 && x12 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && x12 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && x12 && ~x8 && ~x1 )
						nx_state = s58;
					else if( x63 && ~x11 && ~x12 && x44 && x45 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && ~x12 && x44 && x45 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && ~x12 && x44 && x45 && ~x8 && ~x1 )
						nx_state = s58;
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && x40 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s58;
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && x41 && ~x40 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && ~x41 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && ~x41 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && ~x12 && x44 && ~x45 && ~x41 && ~x8 && ~x1 )
						nx_state = s58;
					else if( x63 && ~x11 && ~x12 && ~x44 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && ~x12 && ~x44 && ~x8 && x1 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x11 && ~x12 && ~x44 && ~x8 && ~x1 )
						nx_state = s58;
					else if( ~x63 && x9 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else nx_state = s58;
				s59 : if( x64 && x11 && x43 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && x11 && x43 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x64 && x11 && x43 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x64 && x11 && x43 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x64 && x11 && x43 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s59;
					else if( x64 && x11 && ~x43 && x44 && x10 && x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && x11 && ~x43 && x44 && x10 && ~x35 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && x11 && ~x43 && x44 && ~x10 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && x11 && ~x43 && x44 && ~x10 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x64 && x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x64 && x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x64 && x11 && ~x43 && x44 && ~x10 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s59;
					else if( x64 && x11 && ~x43 && ~x44 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && x11 && ~x43 && ~x44 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x64 && x11 && ~x43 && ~x44 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x64 && x11 && ~x43 && ~x44 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x64 && x11 && ~x43 && ~x44 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s59;
					else if( x64 && ~x11 && x12 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && ~x11 && x12 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x64 && ~x11 && x12 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x64 && ~x11 && x12 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x64 && ~x11 && x12 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s59;
					else if( x64 && ~x11 && ~x12 && x13 && x45 && x41 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x64 && ~x11 && ~x12 && x13 && x45 && ~x41 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x64 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x64 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x64 && ~x11 && ~x12 && x13 && x45 && ~x41 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s59;
					else if( x64 && ~x11 && ~x12 && x13 && ~x45 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x64 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x64 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x64 && ~x11 && ~x12 && x13 && ~x45 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s59;
					else if( x64 && ~x11 && ~x12 && ~x13 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x64 && ~x11 && ~x12 && ~x13 && ~x9 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x64 && ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( x64 && ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && ~x1 && x38 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( x64 && ~x11 && ~x12 && ~x13 && ~x9 && ~x34 && ~x1 && ~x38 )
						nx_state = s59;
					else if( ~x64 && x15 && x25 && x22 )
						nx_state = s1;
					else if( ~x64 && x15 && x25 && ~x22 && x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x64 && x15 && x25 && ~x22 && x6 && ~x8 )
						nx_state = s1;
					else if( ~x64 && x15 && x25 && ~x22 && ~x6 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x64 && x15 && ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s25;
						end
					else if( ~x64 && x15 && ~x25 && ~x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x64 && ~x15 && x38 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x64 && ~x15 && ~x38 && x49 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x64 && ~x15 && ~x38 && ~x49 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s59;
				s60 : if( x63 && x64 && x42 && x43 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && x6 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && x47 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && x15 && ~x47 && ~x1 )
						nx_state = s60;
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && x7 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && x36 && ~x6 && ~x7 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s69;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && ~x36 && x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && x10 && ~x36 && ~x35 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && x64 && x42 && ~x43 && x44 && ~x10 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x64 && x42 && ~x43 && ~x44 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x64 && ~x42 && x12 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x64 && ~x42 && ~x12 && x13 && x14 && x41 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x63 && x64 && ~x42 && ~x12 && x13 && x14 && x41 && ~x4 )
						nx_state = s60;
					else if( x63 && x64 && ~x42 && ~x12 && x13 && x14 && ~x41 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x64 && ~x42 && ~x12 && x13 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && x64 && ~x42 && ~x12 && ~x13 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s5;
						end
					else if( x63 && ~x64 && x15 && x16 && x19 && x33 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x64 && x15 && x16 && x19 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x64 && x15 && x16 && x19 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && ~x64 && x15 && x16 && ~x19 && x30 && x26 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x64 && x15 && x16 && ~x19 && x30 && x26 && ~x1 )
						nx_state = s60;
					else if( x63 && ~x64 && x15 && x16 && ~x19 && x30 && ~x26 && x3 )
						nx_state = s60;
					else if( x63 && ~x64 && x15 && x16 && ~x19 && x30 && ~x26 && ~x3 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x64 && x15 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 )
						nx_state = s60;
					else if( x63 && ~x64 && x15 && x16 && ~x19 && ~x30 )
						nx_state = s60;
					else if( x63 && ~x64 && x15 && ~x16 )
						nx_state = s1;
					else if( x63 && ~x64 && ~x15 && x28 && x41 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x64 && ~x15 && x28 && ~x41 )
						nx_state = s60;
					else if( x63 && ~x64 && ~x15 && ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( x63 && ~x64 && ~x15 && ~x28 && x27 && ~x8 && x37 )
						nx_state = s1;
					else if( x63 && ~x64 && ~x15 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x64 && ~x15 && ~x28 && ~x27 && x49 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x63 && ~x64 && ~x15 && ~x28 && ~x27 && ~x49 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x63 && x18 && x17 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( ~x63 && x18 && x17 && ~x5 && x6 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && x18 && x17 && ~x5 && ~x6 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x63 && x18 && ~x17 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && x18 && ~x17 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x18 && ~x17 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && x18 && ~x17 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x18 && ~x17 && x15 && ~x16 && ~x1 )
						nx_state = s60;
					else if( ~x63 && x18 && ~x17 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x18 && ~x17 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && x18 && ~x17 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x18 && x17 && x9 && x10 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x18 && x17 && x9 && ~x10 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x18 && x17 && ~x9 && x6 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( ~x63 && ~x18 && x17 && ~x9 && ~x6 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && x7 && x39 && x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && x7 && x39 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && x7 && x39 && ~x3 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && x7 && ~x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && ~x7 && x8 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && x39 && x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && x39 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && x39 && ~x3 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s68;
						end
					else if( ~x63 && ~x18 && ~x17 && x6 && ~x7 && ~x8 && ~x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x18 && ~x17 && ~x6 && x32 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( ~x63 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && x16 && ~x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x63 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x18 && ~x17 && ~x6 && ~x32 && x15 && ~x16 && ~x1 )
						nx_state = s60;
					else if( ~x63 && ~x18 && ~x17 && ~x6 && ~x32 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && ~x18 && ~x17 && ~x6 && ~x32 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && ~x18 && ~x17 && ~x6 && ~x32 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s60;
				s61 : if( x17 && x18 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( x17 && x18 && ~x1 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x17 && x18 && ~x1 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( x17 && ~x18 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( x17 && ~x18 && ~x6 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x17 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s61;
				s62 : if( x63 && x40 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x63 && ~x40 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( ~x63 && x64 && x9 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && x64 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x63 && ~x64 && x17 && x18 && x6 && x9 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x63 && ~x64 && x17 && x18 && x6 && ~x9 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x64 && x17 && x18 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x63 && ~x64 && x17 && ~x18 && x10 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x63 && ~x64 && x17 && ~x18 && ~x10 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s82;
						end
					else if( ~x63 && ~x64 && ~x17 && x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( ~x63 && ~x64 && ~x17 && ~x8 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s62;
				s63 : if( x17 && x18 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( x17 && x18 && ~x5 && x6 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x17 && x18 && ~x5 && ~x6 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x17 && ~x18 && x14 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s45;
						end
					else if( x17 && ~x18 && ~x14 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x17 && ~x18 && ~x14 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x17 && ~x18 && ~x14 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( x17 && ~x18 && ~x14 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x17 && ~x18 && ~x14 && x15 && ~x16 && ~x1 )
						nx_state = s63;
					else if( x17 && ~x18 && ~x14 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x17 && ~x18 && ~x14 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x17 && ~x18 && ~x14 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( ~x17 && ~x6 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s63;
				s64 : if( x15 && x16 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x15 && ~x16 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else nx_state = s64;
				s65 : if( x15 && x16 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s65;
					else if( ~x15 && x16 && x4 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x15 && ~x16 && x14 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x15 && ~x16 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else nx_state = s65;
				s66 : if( x15 && x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x15 && x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x15 && ~x16 && x31 && x2 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x15 && ~x16 && x31 && ~x2 )
						nx_state = s66;
					else if( x15 && ~x16 && ~x31 && x4 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x15 && ~x16 && ~x31 && x4 && ~x2 )
						nx_state = s66;
					else if( x15 && ~x16 && ~x31 && ~x4 && x37 && x2 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x15 && ~x16 && ~x31 && ~x4 && x37 && ~x2 )
						nx_state = s66;
					else if( x15 && ~x16 && ~x31 && ~x4 && ~x37 && x2 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x15 && ~x16 && ~x31 && ~x4 && ~x37 && ~x2 )
						nx_state = s66;
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x37 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x37 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x15 && x16 && ~x4 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x15 && x16 && ~x4 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x15 && ~x16 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s66;
				s67 : if( x16 && x15 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x16 && ~x15 && x4 && x5 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x16 && ~x15 && x4 && x5 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x16 && ~x15 && x4 && ~x5 && x37 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( x16 && ~x15 && x4 && ~x5 && ~x37 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x16 && ~x15 && ~x4 && x37 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( x16 && ~x15 && ~x4 && ~x37 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x16 && x15 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x16 && x15 && ~x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x16 && ~x15 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s67;
				s68 : if( x17 && x18 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s47;
						end
					else if( x17 && x18 && ~x1 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x17 && x18 && ~x1 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( x17 && ~x18 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else if( x17 && ~x18 && ~x7 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( ~x17 && x18 && x31 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x17 && x18 && ~x31 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s81;
						end
					else if( ~x17 && ~x18 && x19 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x17 && ~x18 && x19 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x17 && ~x18 && x19 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x17 && ~x18 && x19 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && ~x18 && x19 && x15 && ~x16 && ~x1 )
						nx_state = s68;
					else if( ~x17 && ~x18 && x19 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && ~x18 && x19 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x17 && ~x18 && x19 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && x32 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && x15 && ~x16 && ~x1 )
						nx_state = s68;
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x17 && ~x18 && ~x19 && x40 && ~x32 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x17 && ~x18 && ~x19 && ~x40 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s68;
				s69 : if( x42 && x13 && x43 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x42 && x13 && x43 && ~x35 )
						nx_state = s69;
					else if( x42 && x13 && ~x43 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x42 && x13 && ~x43 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x42 && x13 && ~x43 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( x42 && x13 && ~x43 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && x13 && ~x43 && x15 && ~x47 && ~x1 )
						nx_state = s69;
					else if( x42 && x13 && ~x43 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && x13 && ~x43 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x42 && x13 && ~x43 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x42 && ~x13 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x42 && ~x13 && ~x35 )
						nx_state = s69;
					else if( ~x42 && x44 && x12 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x42 && x44 && x12 && ~x35 )
						nx_state = s69;
					else if( ~x42 && x44 && ~x12 && x14 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x42 && x44 && ~x12 && x14 && ~x35 )
						nx_state = s69;
					else if( ~x42 && x44 && ~x12 && ~x14 && x15 && x47 && x36 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x42 && x44 && ~x12 && ~x14 && x15 && x47 && ~x36 && x6 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x42 && x44 && ~x12 && ~x14 && x15 && x47 && ~x36 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x42 && x44 && ~x12 && ~x14 && x15 && ~x47 && x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x44 && ~x12 && ~x14 && x15 && ~x47 && ~x1 )
						nx_state = s69;
					else if( ~x42 && x44 && ~x12 && ~x14 && ~x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && x44 && ~x12 && ~x14 && ~x15 && ~x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x42 && x44 && ~x12 && ~x14 && ~x15 && ~x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x42 && ~x44 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x42 && ~x44 && ~x35 )
						nx_state = s69;
					else nx_state = s69;
				s70 : if( x38 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x38 )
						nx_state = s70;
					else nx_state = s70;
				s71 : if( x10 && x12 && x64 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x10 && x12 && ~x64 )
						nx_state = s1;
					else if( x10 && ~x12 && x1 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x10 && ~x12 && x1 && ~x2 && x64 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x10 && ~x12 && x1 && ~x2 && ~x64 )
						nx_state = s1;
					else if( x10 && ~x12 && ~x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && ~x11 && x12 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && ~x11 && x12 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 && x64 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 && ~x64 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else nx_state = s71;
				s72 : if( x62 && x61 && x53 && x47 )
						nx_state = s72;
					else if( x62 && x61 && x53 && ~x47 && x59 && x51 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x61 && x53 && ~x47 && x59 && ~x51 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x61 && x53 && ~x47 && ~x59 && x34 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && x61 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && x61 && ~x53 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x61 && x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x61 && ~x11 && x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x62 && ~x61 && ~x11 && x1 && ~x2 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x62 && ~x61 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s72;
					else if( x62 && ~x61 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x62 && x63 && x55 && x53 && x47 )
						nx_state = s72;
					else if( ~x62 && x63 && x55 && x53 && ~x47 && x59 && x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( ~x62 && x63 && x55 && x53 && ~x47 && x59 && ~x51 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x62 && x63 && x55 && x53 && ~x47 && ~x59 && x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x62 && x63 && x55 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( ~x62 && x63 && x55 && ~x53 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( ~x62 && x63 && ~x55 && x11 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( ~x62 && x63 && ~x55 && ~x11 && x1 && x33 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( ~x62 && x63 && ~x55 && ~x11 && x1 && ~x33 && x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x62 && x63 && ~x55 && ~x11 && x1 && ~x33 && ~x34 )
						nx_state = s72;
					else if( ~x62 && x63 && ~x55 && ~x11 && ~x1 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x62 && ~x63 && x40 && x48 && x42 && x51 && x47 )
						nx_state = s72;
					else if( ~x62 && ~x63 && x40 && x48 && x42 && x51 && ~x47 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x62 && ~x63 && x40 && x48 && x42 && ~x51 && x47 )
						nx_state = s72;
					else if( ~x62 && ~x63 && x40 && x48 && x42 && ~x51 && ~x47 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x62 && ~x63 && x40 && x48 && ~x42 && x47 )
						nx_state = s72;
					else if( ~x62 && ~x63 && x40 && x48 && ~x42 && ~x47 && x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x62 && ~x63 && x40 && x48 && ~x42 && ~x47 && ~x34 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x62 && ~x63 && x40 && ~x48 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x62 && ~x63 && ~x40 && x11 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x11 && x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x11 && x1 && ~x2 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x11 && x1 && ~x2 && ~x3 )
						nx_state = s72;
					else if( ~x62 && ~x63 && ~x40 && ~x11 && ~x1 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else nx_state = s72;
				s73 : if( x61 && x10 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s14;
						end
					else if( x61 && x10 && x12 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x61 && x10 && x12 && ~x23 && ~x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x61 && x10 && ~x12 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s182;
						end
					else if( x61 && ~x10 && x1 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s183;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && x11 && x5 && x3 )
						nx_state = s73;
					else if( x61 && ~x10 && x1 && ~x22 && x2 && x11 && x5 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && x11 && ~x5 && x3 )
						nx_state = s73;
					else if( x61 && ~x10 && x1 && ~x22 && x2 && x11 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && ~x11 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x61 && ~x10 && x1 && ~x22 && x2 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x61 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s185;
						end
					else if( x61 && ~x10 && ~x1 && x11 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x61 && ~x10 && ~x1 && x11 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x61 && ~x10 && ~x1 && ~x11 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && x10 && x39 && x46 && x51 && x36 )
						nx_state = s73;
					else if( ~x61 && x10 && x39 && x46 && x51 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( ~x61 && x10 && x39 && x46 && ~x51 && x36 )
						nx_state = s73;
					else if( ~x61 && x10 && x39 && x46 && ~x51 && ~x36 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( ~x61 && x10 && x39 && ~x46 && x36 )
						nx_state = s73;
					else if( ~x61 && x10 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s185;
						end
					else if( ~x61 && x10 && ~x39 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( ~x61 && ~x10 && x11 && x34 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x61 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( ~x61 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s185;
						end
					else if( ~x61 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s185;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s182;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s185;
						end
					else if( ~x61 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else nx_state = s73;
				s74 : if( x64 && x61 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && x61 && x37 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && x61 && ~x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x64 && ~x61 && x2 && x10 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x64 && ~x61 && x2 && x10 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && ~x61 && x2 && x10 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && ~x61 && x2 && x10 && ~x1 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( x64 && ~x61 && x2 && x10 && ~x1 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && ~x61 && x2 && ~x10 )
						nx_state = s74;
					else if( x64 && ~x61 && ~x2 && x10 && x1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x64 && ~x61 && ~x2 && x10 && ~x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( x64 && ~x61 && ~x2 && ~x10 )
						nx_state = s74;
					else if( ~x64 && x14 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x64 && x14 && x37 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && x14 && ~x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x64 && ~x14 && x2 && x10 && x1 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x64 && ~x14 && x2 && x10 && x1 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && ~x14 && x2 && x10 && x1 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && ~x14 && x2 && x10 && ~x1 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( ~x64 && ~x14 && x2 && x10 && ~x1 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && ~x14 && x2 && ~x10 )
						nx_state = s74;
					else if( ~x64 && ~x14 && ~x2 && x10 && x1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x64 && ~x14 && ~x2 && x10 && ~x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s36;
						end
					else if( ~x64 && ~x14 && ~x2 && ~x10 )
						nx_state = s74;
					else nx_state = s74;
				s75 : if( x63 && x64 && x55 && x10 && x43 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s14;
						end
					else if( x63 && x64 && x55 && x10 && x43 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && x64 && x55 && x10 && x43 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x64 && x55 && x10 && ~x43 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x63 && x64 && x55 && ~x10 && x1 && x22 )
						begin
							y10 = 1'b1;	y26 = 1'b1;	y37 = 1'b1;	
							nx_state = s188;
						end
					else if( x63 && x64 && x55 && ~x10 && x1 && ~x22 && x2 && x3 && x42 )
						nx_state = s75;
					else if( x63 && x64 && x55 && ~x10 && x1 && ~x22 && x2 && x3 && ~x42 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && x64 && x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x64 && x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && x11 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x64 && x55 && ~x10 && x1 && ~x22 && x2 && ~x3 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && x64 && x55 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( x63 && x64 && x55 && ~x10 && ~x1 && x42 && x35 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x64 && x55 && ~x10 && ~x1 && x42 && ~x35 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && x64 && x55 && ~x10 && ~x1 && ~x42 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x64 && ~x55 && x41 && x39 && x46 && x51 && x36 )
						nx_state = s75;
					else if( x63 && x64 && ~x55 && x41 && x39 && x46 && x51 && ~x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x63 && x64 && ~x55 && x41 && x39 && x46 && ~x51 && x36 )
						nx_state = s75;
					else if( x63 && x64 && ~x55 && x41 && x39 && x46 && ~x51 && ~x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && x64 && ~x55 && x41 && x39 && ~x46 && x36 )
						nx_state = s75;
					else if( x63 && x64 && ~x55 && x41 && x39 && ~x46 && ~x36 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( x63 && x64 && ~x55 && x41 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && x34 && x8 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && x34 && ~x8 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && x34 && ~x8 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && ~x34 && x32 && x38 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && x54 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && x54 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && ~x34 && x32 && ~x38 && ~x54 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( x63 && x64 && ~x55 && ~x41 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && x12 && x51 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && x12 && ~x51 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && x12 && ~x51 && ~x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && x34 && x37 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && x34 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && x32 && ~x34 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && ~x12 && x44 && ~x32 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( x63 && x64 && ~x55 && ~x41 && ~x11 && ~x12 && ~x44 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && ~x64 && x15 && x22 && x2 && x33 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x64 && x15 && x22 && x2 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x64 && x15 && x22 && x2 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x63 && ~x64 && x15 && x22 && ~x2 )
						nx_state = s1;
					else if( x63 && ~x64 && x15 && ~x22 && x31 )
						nx_state = s1;
					else if( x63 && ~x64 && x15 && ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x64 && ~x15 && x46 && x3 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x64 && ~x15 && x46 && x3 && ~x23 )
						nx_state = s75;
					else if( x63 && ~x64 && ~x15 && x46 && ~x3 )
						nx_state = s1;
					else if( x63 && ~x64 && ~x15 && ~x46 && x2 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x63 && ~x64 && ~x15 && ~x46 && x2 && ~x23 )
						nx_state = s75;
					else if( x63 && ~x64 && ~x15 && ~x46 && ~x2 )
						nx_state = s1;
					else if( ~x63 && x40 && x10 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x63 && x40 && x10 && x12 && ~x23 && x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x40 && x10 && x12 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x40 && x10 && ~x12 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && x40 && ~x10 && x1 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s183;
						end
					else if( ~x63 && x40 && ~x10 && x1 && ~x22 && x2 && x11 && x5 && x3 )
						nx_state = s75;
					else if( ~x63 && x40 && ~x10 && x1 && ~x22 && x2 && x11 && x5 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x63 && x40 && ~x10 && x1 && ~x22 && x2 && x11 && ~x5 && x3 )
						nx_state = s75;
					else if( ~x63 && x40 && ~x10 && x1 && ~x22 && x2 && x11 && ~x5 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x40 && ~x10 && x1 && ~x22 && x2 && ~x11 && x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && x40 && ~x10 && x1 && ~x22 && x2 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x40 && ~x10 && x1 && ~x22 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x63 && x40 && ~x10 && ~x1 && x11 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x40 && ~x10 && ~x1 && x11 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && x40 && ~x10 && ~x1 && ~x11 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x40 && x10 && x39 && x46 && x51 && x36 )
						nx_state = s75;
					else if( ~x63 && ~x40 && x10 && x39 && x46 && x51 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x40 && x10 && x39 && x46 && ~x51 && x36 )
						nx_state = s75;
					else if( ~x63 && ~x40 && x10 && x39 && x46 && ~x51 && ~x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x63 && ~x40 && x10 && x39 && ~x46 && x36 )
						nx_state = s75;
					else if( ~x63 && ~x40 && x10 && x39 && ~x46 && ~x36 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x63 && ~x40 && x10 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && x34 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x45 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && x12 && x20 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s75;
				s76 : if( x64 && x63 && x55 && x33 && x32 && x8 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s91;
						end
					else if( x64 && x63 && x55 && x33 && x32 && ~x8 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( x64 && x63 && x55 && x33 && ~x32 && x8 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && x63 && x55 && x33 && ~x32 && x8 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x64 && x63 && x55 && x33 && ~x32 && ~x8 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x64 && x63 && x55 && ~x33 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x64 && x63 && ~x55 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x64 && x63 && ~x55 && x37 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && x63 && ~x55 && ~x37 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x64 && ~x63 && x40 && x2 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( x64 && ~x63 && x40 && x2 && x8 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && ~x63 && x40 && x2 && x8 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x64 && ~x63 && x40 && x2 && ~x8 && x32 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x64 && ~x63 && x40 && x2 && ~x8 && x32 && ~x1 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( x64 && ~x63 && x40 && x2 && ~x8 && x32 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x64 && ~x63 && x40 && x2 && ~x8 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x64 && ~x63 && x40 && ~x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x64 && ~x63 && ~x40 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && ~x63 && ~x40 && x37 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && ~x63 && ~x40 && ~x37 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x64 && x63 && x15 && x2 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x64 && x63 && x15 && x2 && x8 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && x63 && x15 && x2 && x8 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x64 && x63 && x15 && x2 && ~x8 && x32 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x64 && x63 && x15 && x2 && ~x8 && x32 && ~x1 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x64 && x63 && x15 && x2 && ~x8 && x32 && ~x1 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x64 && x63 && x15 && x2 && ~x8 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x64 && x63 && x15 && ~x2 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x64 && x63 && ~x15 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x64 && x63 && ~x15 && x37 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && x63 && ~x15 && ~x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x64 && ~x63 && x44 && x33 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x64 && ~x63 && x44 && x33 && x8 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && ~x63 && x44 && x33 && x8 && ~x1 && ~x35 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x64 && ~x63 && x44 && x33 && ~x8 && x32 && x37 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( ~x64 && ~x63 && x44 && x33 && ~x8 && x32 && ~x37 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x64 && ~x63 && x44 && x33 && ~x8 && x32 && ~x37 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x64 && ~x63 && x44 && x33 && ~x8 && ~x32 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x64 && ~x63 && x44 && ~x33 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x64 && ~x63 && ~x44 && x1 && x28 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x64 && ~x63 && ~x44 && x1 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && ~x63 && ~x44 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else nx_state = s76;
				s77 : if( x64 && x40 && x14 && x8 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && x40 && x14 && x8 && ~x10 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && x40 && x14 && ~x8 && x30 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x64 && x40 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( x64 && x40 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x64 && x40 && x14 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && x40 && ~x14 && x32 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( x64 && x40 && ~x14 && x32 && ~x3 )
						nx_state = s77;
					else if( x64 && x40 && ~x14 && ~x32 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && x40 && ~x14 && ~x32 && ~x3 )
						nx_state = s77;
					else if( x64 && ~x40 && x16 && x45 && x29 && x42 && x27 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( x64 && ~x40 && x16 && x45 && x29 && x42 && ~x27 )
						nx_state = s77;
					else if( x64 && ~x40 && x16 && x45 && x29 && ~x42 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && ~x40 && x16 && x45 && x29 && ~x42 && ~x27 )
						nx_state = s77;
					else if( x64 && ~x40 && x16 && x45 && ~x29 && x33 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && ~x40 && x16 && x45 && ~x29 && x33 && ~x27 )
						nx_state = s77;
					else if( x64 && ~x40 && x16 && x45 && ~x29 && ~x33 && x43 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x64 && ~x40 && x16 && x45 && ~x29 && ~x33 && x43 && ~x27 )
						nx_state = s77;
					else if( x64 && ~x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && ~x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && ~x27 )
						nx_state = s77;
					else if( x64 && ~x40 && x16 && ~x45 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x40 && ~x16 && x37 && x44 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && ~x40 && ~x16 && x37 && x44 && ~x1 )
						nx_state = s77;
					else if( x64 && ~x40 && ~x16 && x37 && ~x44 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x40 && ~x16 && ~x37 && x25 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x40 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x64 && ~x40 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s77;
					else if( x64 && ~x40 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && ~x40 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s77;
					else if( ~x64 && x44 && x14 && x8 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && x44 && x14 && x8 && ~x10 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && x44 && x14 && ~x8 && x30 && x37 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( ~x64 && x44 && x14 && ~x8 && x30 && ~x37 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x64 && x44 && x14 && ~x8 && x30 && ~x37 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x64 && x44 && x14 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && x44 && ~x14 && x32 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x64 && x44 && ~x14 && x32 && ~x3 )
						nx_state = s77;
					else if( ~x64 && x44 && ~x14 && ~x32 && x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && x44 && ~x14 && ~x32 && ~x3 )
						nx_state = s77;
					else if( ~x64 && ~x44 && x16 && x54 && x29 && x48 && x27 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x64 && ~x44 && x16 && x54 && x29 && x48 && ~x27 )
						nx_state = s77;
					else if( ~x64 && ~x44 && x16 && x54 && x29 && ~x48 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && ~x44 && x16 && x54 && x29 && ~x48 && ~x27 )
						nx_state = s77;
					else if( ~x64 && ~x44 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && ~x44 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s77;
					else if( ~x64 && ~x44 && x16 && x54 && ~x29 && ~x33 && x49 && x27 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x64 && ~x44 && x16 && x54 && ~x29 && ~x33 && x49 && ~x27 )
						nx_state = s77;
					else if( ~x64 && ~x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && ~x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && ~x27 )
						nx_state = s77;
					else if( ~x64 && ~x44 && x16 && ~x54 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x44 && ~x16 && x37 && x55 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && ~x44 && ~x16 && x37 && x55 && ~x1 )
						nx_state = s77;
					else if( ~x64 && ~x44 && ~x16 && x37 && ~x55 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x44 && ~x16 && ~x37 && x25 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x44 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x64 && ~x44 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s77;
					else if( ~x64 && ~x44 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && ~x44 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s77;
					else nx_state = s77;
				s78 : if( x40 && x16 && x19 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x40 && x16 && x19 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x40 && x16 && x19 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x40 && x16 && ~x19 && x30 && x26 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x40 && x16 && ~x19 && x30 && x26 && ~x1 )
						nx_state = s78;
					else if( x40 && x16 && ~x19 && x30 && ~x26 && x3 )
						nx_state = s78;
					else if( x40 && x16 && ~x19 && x30 && ~x26 && ~x3 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x40 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 )
						nx_state = s78;
					else if( x40 && x16 && ~x19 && ~x30 )
						nx_state = s78;
					else if( x40 && ~x16 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x40 && x28 && x43 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x40 && x28 && ~x43 )
						nx_state = s78;
					else if( ~x40 && ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x40 && ~x28 && x27 && ~x8 && x37 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x40 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x40 && ~x28 && ~x27 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x40 && ~x28 && ~x27 && ~x50 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s78;
				s79 : if( x64 && x40 && x22 && x2 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x64 && x40 && x22 && x2 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && x40 && x22 && x2 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x64 && x40 && x22 && ~x2 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && x40 && ~x22 && x31 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && x40 && ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x64 && ~x40 && x46 && x3 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x64 && ~x40 && x46 && x3 && ~x23 )
						nx_state = s79;
					else if( x64 && ~x40 && x46 && ~x3 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x40 && ~x46 && x2 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x64 && ~x40 && ~x46 && x2 && ~x23 )
						nx_state = s79;
					else if( x64 && ~x40 && ~x46 && ~x2 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && x44 && x22 && x2 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x64 && x44 && x22 && x2 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && x44 && x22 && x2 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x64 && x44 && x22 && ~x2 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && x44 && ~x22 && x31 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && x44 && ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x64 && ~x44 && x46 && x3 && x23 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( ~x64 && ~x44 && x46 && x3 && ~x23 )
						nx_state = s79;
					else if( ~x64 && ~x44 && x46 && ~x3 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x44 && ~x46 && x33 && x23 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( ~x64 && ~x44 && ~x46 && x33 && ~x23 )
						nx_state = s79;
					else if( ~x64 && ~x44 && ~x46 && ~x33 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else nx_state = s79;
				s80 : if( x15 && x64 && x1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s191;
						end
					else if( x15 && x64 && ~x1 )
						begin
							y11 = 1'b1;	
							nx_state = s192;
						end
					else if( x15 && ~x64 && x37 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s191;
						end
					else if( x15 && ~x64 && ~x37 )
						begin
							y11 = 1'b1;	
							nx_state = s192;
						end
					else if( ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s192;
						end
					else nx_state = s80;
				s81 : if( x17 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x17 && ~x13 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x17 && x7 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x17 && ~x7 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else nx_state = s81;
				s82 : if( x17 && x18 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( x17 && x18 && ~x5 && x6 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x17 && x18 && ~x5 && ~x6 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x17 && ~x18 && x39 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x17 && ~x18 && x39 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x17 && ~x18 && x39 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( x17 && ~x18 && x39 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x17 && ~x18 && x39 && x15 && ~x16 && ~x1 )
						nx_state = s82;
					else if( x17 && ~x18 && x39 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x17 && ~x18 && x39 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x17 && ~x18 && x39 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x17 && ~x18 && ~x39 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x17 && x9 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x17 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else nx_state = s82;
				s83 : if( x61 && x2 && x8 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( x61 && x2 && x8 && ~x1 && x35 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && x2 && x8 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x61 && x2 && ~x8 && x32 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( x61 && x2 && ~x8 && x32 && ~x1 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x61 && x2 && ~x8 && x32 && ~x1 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x61 && x2 && ~x8 && ~x32 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x61 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && x37 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && x37 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && ~x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else nx_state = s83;
				s84 : if( x61 && x16 && x19 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( x61 && x16 && x19 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x61 && x16 && x19 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && x16 && ~x19 && x30 && x26 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( x61 && x16 && ~x19 && x30 && x26 && ~x1 && x9 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x61 && x16 && ~x19 && x30 && x26 && ~x1 && x9 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x61 && x16 && ~x19 && x30 && x26 && ~x1 && ~x9 )
						nx_state = s84;
					else if( x61 && x16 && ~x19 && x30 && ~x26 && x3 )
						nx_state = s84;
					else if( x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 && x9 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 && x9 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x61 && x16 && ~x19 && x30 && ~x26 && ~x3 && ~x1 && ~x9 )
						nx_state = s84;
					else if( x61 && x16 && ~x19 && ~x30 )
						nx_state = s84;
					else if( x61 && ~x16 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && x28 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x61 && x28 && ~x57 )
						nx_state = s84;
					else if( ~x61 && ~x28 && x27 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x61 && ~x28 && x27 && ~x8 && x37 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( ~x61 && ~x28 && ~x27 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && ~x28 && ~x27 && ~x50 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s84;
				s85 : if( x61 && x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x61 && ~x10 && x25 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( x61 && ~x10 && ~x25 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s171;
						end
					else if( ~x61 && x8 && x53 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( ~x61 && x8 && ~x53 && x37 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && x8 && ~x53 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( ~x61 && ~x8 && x51 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( ~x61 && ~x8 && ~x51 && x37 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x8 && ~x51 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else nx_state = s85;
				s86 : if( x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x1 && x62 && x35 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( ~x1 && x62 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x1 && ~x62 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x1 && ~x62 && ~x35 && x63 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x1 && ~x62 && ~x35 && ~x63 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x1 && ~x62 && ~x35 && ~x63 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else nx_state = s86;
				s87 : if( x55 && x16 && x50 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( x55 && x16 && x50 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x55 && x16 && x50 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x55 && x16 && ~x50 && x32 && x30 && x26 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( x55 && x16 && ~x50 && x32 && x30 && ~x26 && x34 )
						nx_state = s87;
					else if( x55 && x16 && ~x50 && x32 && x30 && ~x26 && ~x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( x55 && x16 && ~x50 && x32 && ~x30 )
						nx_state = s87;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && x26 && x4 && x1 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && x26 && x4 && ~x1 )
						nx_state = s87;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && x26 && ~x4 && x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && x26 && ~x4 && ~x1 )
						nx_state = s87;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && x3 )
						nx_state = s87;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && x4 && x1 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && x4 && ~x1 )
						nx_state = s87;
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && ~x4 && x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( x55 && x16 && ~x50 && ~x32 && x30 && ~x26 && ~x3 && ~x4 && ~x1 )
						nx_state = s87;
					else if( x55 && x16 && ~x50 && ~x32 && ~x30 )
						nx_state = s87;
					else if( x55 && ~x16 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && x28 && x57 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x55 && x28 && ~x57 )
						nx_state = s87;
					else if( ~x55 && ~x28 && x27 && x8 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x55 && ~x28 && x27 && ~x8 && x37 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x55 && ~x28 && ~x27 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x55 && ~x28 && ~x27 && ~x50 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s87;
				s88 : if( x55 && x41 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( x55 && ~x41 && x25 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( x55 && ~x41 && ~x25 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x55 && x39 && x53 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x55 && x39 && ~x53 && x37 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && x39 && ~x53 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x55 && ~x39 && x51 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x55 && ~x39 && ~x51 && x37 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && ~x39 && ~x51 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s88;
				s89 : if( x44 && x16 && x19 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x44 && x16 && x19 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x44 && x16 && x19 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x44 && x16 && ~x19 && x30 && x26 && x1 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( x44 && x16 && ~x19 && x30 && x26 && ~x1 && x37 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( x44 && x16 && ~x19 && x30 && x26 && ~x1 && x37 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x44 && x16 && ~x19 && x30 && x26 && ~x1 && ~x37 )
						nx_state = s89;
					else if( x44 && x16 && ~x19 && x30 && ~x26 && x1 && x3 )
						nx_state = s89;
					else if( x44 && x16 && ~x19 && x30 && ~x26 && x1 && ~x3 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && x37 && x43 )
						nx_state = s89;
					else if( x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && x37 && ~x43 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && x37 && ~x43 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x44 && x16 && ~x19 && x30 && ~x26 && ~x1 && ~x37 )
						nx_state = s89;
					else if( x44 && x16 && ~x19 && ~x30 )
						nx_state = s89;
					else if( x44 && ~x16 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x44 && x28 && x49 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x44 && x28 && ~x49 )
						nx_state = s89;
					else if( ~x44 && ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x44 && ~x28 && x27 && ~x8 && x36 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x44 && ~x28 && x27 && ~x8 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x44 && ~x28 && ~x27 && x50 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x44 && ~x28 && ~x27 && ~x50 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else nx_state = s89;
				s90 : if( x64 && x40 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x64 && x40 && ~x10 && x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x64 && x40 && ~x10 && ~x25 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( x64 && ~x40 && x8 && x48 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x64 && ~x40 && x8 && ~x48 && x37 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x40 && x8 && ~x48 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x64 && ~x40 && ~x8 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x64 && ~x40 && ~x8 && ~x51 && x37 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && ~x40 && ~x8 && ~x51 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x64 && x44 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x64 && x44 && ~x10 && x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x64 && x44 && ~x10 && ~x25 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x64 && ~x44 && x8 && x53 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x64 && ~x44 && x8 && ~x53 && x36 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x44 && x8 && ~x53 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x64 && ~x44 && ~x8 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x64 && ~x44 && ~x8 && ~x51 && x36 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && ~x44 && ~x8 && ~x51 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s90;
				s91 : if( x32 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s91;
						end
					else if( ~x32 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x32 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s91;
				s92 : if( x8 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s44;
						end
					else if( x8 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s164;
						end
					else if( x8 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s92;
				s93 : if( x63 && x64 && x55 && x40 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( x63 && x64 && x55 && ~x40 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x64 && x55 && ~x40 && ~x3 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x63 && x64 && ~x55 && x29 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( x63 && x64 && ~x55 && x29 && ~x50 )
						nx_state = s93;
					else if( x63 && x64 && ~x55 && ~x29 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x63 && x64 && ~x55 && ~x29 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x63 && ~x64 && x15 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( x63 && ~x64 && x15 && ~x9 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x64 && x15 && ~x9 && ~x3 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x63 && ~x64 && ~x15 && x29 && x49 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s109;
						end
					else if( x63 && ~x64 && ~x15 && x29 && ~x49 )
						nx_state = s93;
					else if( x63 && ~x64 && ~x15 && ~x29 && x21 )
						nx_state = s1;
					else if( x63 && ~x64 && ~x15 && ~x29 && ~x21 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x40 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x63 && x40 && ~x9 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x40 && ~x9 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x63 && ~x40 && x29 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x63 && ~x40 && x29 && ~x50 )
						nx_state = s93;
					else if( ~x63 && ~x40 && ~x29 && x41 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && ~x40 && ~x29 && ~x41 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s93;
				s94 : if( x62 && x61 && x19 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s53;
						end
					else if( x62 && x61 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s94;
					else if( x62 && x61 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x62 && x61 && x19 && ~x13 && x32 && ~x18 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x62 && x61 && x19 && ~x13 && ~x32 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x62 && x61 && ~x19 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x62 && ~x61 && x17 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x62 && ~x61 && x17 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x62 && ~x61 && x17 && ~x19 )
						nx_state = s94;
					else if( x62 && ~x61 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s185;
						end
					else if( x62 && ~x61 && ~x17 && ~x20 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x62 && ~x61 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x62 && x63 && x55 && x19 && x44 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x62 && x63 && x55 && x19 && ~x44 && x32 && x18 && x12 )
						nx_state = s94;
					else if( ~x62 && x63 && x55 && x19 && ~x44 && x32 && x18 && ~x12 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x62 && x63 && x55 && x19 && ~x44 && x32 && ~x18 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x63 && x55 && x19 && ~x44 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x63 && x55 && ~x19 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && x63 && ~x55 && x17 && x50 && x10 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x62 && x63 && ~x55 && x17 && x50 && ~x10 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x62 && x63 && ~x55 && x17 && ~x50 )
						nx_state = s94;
					else if( ~x62 && x63 && ~x55 && ~x17 && x51 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x62 && x63 && ~x55 && ~x17 && ~x51 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x63 && ~x55 && ~x17 && ~x51 && ~x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x62 && ~x63 && x40 && x19 && x13 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x62 && ~x63 && x40 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s94;
					else if( ~x62 && ~x63 && x40 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x62 && ~x63 && x40 && x19 && ~x13 && x32 && ~x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x62 && ~x63 && x40 && x19 && ~x13 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && ~x63 && x40 && ~x19 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x62 && ~x63 && ~x40 && x17 && x19 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x62 && ~x63 && ~x40 && x17 && x19 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x62 && ~x63 && ~x40 && x17 && ~x19 )
						nx_state = s94;
					else if( ~x62 && ~x63 && ~x40 && ~x17 && x20 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x17 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x63 && ~x40 && ~x17 && ~x20 && ~x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else nx_state = s94;
				s95 : if( x16 && x37 )
						begin
							y6 = 1'b1;	y13 = 1'b1;	y34 = 1'b1;	
							nx_state = s95;
						end
					else if( x16 && ~x37 && x39 && x19 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x16 && ~x37 && x39 && ~x19 && x26 && x5 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x16 && ~x37 && x39 && ~x19 && x26 && ~x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x16 && ~x37 && x39 && ~x19 && ~x26 )
						begin
							y11 = 1'b1;	y36 = 1'b1;	
							nx_state = s91;
						end
					else if( x16 && ~x37 && ~x39 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x16 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x16 && ~x41 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s95;
				s96 : if( x15 && x32 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s195;
						end
					else if( x15 && ~x32 )
						begin
							y11 = 1'b1;	
							nx_state = s192;
						end
					else if( ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s192;
						end
					else nx_state = s96;
				s97 : if( x55 && x45 && x8 && x41 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x55 && x45 && x8 && ~x41 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x55 && x45 && ~x8 && x30 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( x55 && x45 && ~x8 && x30 && ~x32 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x55 && x45 && ~x8 && x30 && ~x32 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else if( x55 && x45 && ~x8 && ~x30 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x55 && ~x45 && x34 && x32 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x55 && ~x45 && x34 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x55 && ~x45 && ~x34 )
						nx_state = s97;
					else if( ~x55 && x47 && x54 && x29 && x59 && x27 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x55 && x47 && x54 && x29 && x59 && ~x27 )
						nx_state = s97;
					else if( ~x55 && x47 && x54 && x29 && ~x59 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x55 && x47 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s97;
					else if( ~x55 && x47 && x54 && ~x29 && x33 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x55 && x47 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s97;
					else if( ~x55 && x47 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x55 && x47 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s97;
					else if( ~x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s97;
					else if( ~x55 && x47 && ~x54 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && ~x47 && x37 && x56 && x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x55 && ~x47 && x37 && x56 && ~x1 )
						nx_state = s97;
					else if( ~x55 && ~x47 && x37 && ~x56 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && ~x47 && ~x37 && x25 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && ~x47 && ~x37 && ~x25 && x36 && x35 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( ~x55 && ~x47 && ~x37 && ~x25 && x36 && ~x35 )
						nx_state = s97;
					else if( ~x55 && ~x47 && ~x37 && ~x25 && ~x36 && x35 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x55 && ~x47 && ~x37 && ~x25 && ~x36 && ~x35 )
						nx_state = s97;
					else nx_state = s97;
				s98 : if( x62 && x61 && x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( x62 && x61 && x19 && x28 && ~x1 && x35 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x62 && x61 && x19 && x28 && ~x1 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && x61 && x19 && ~x28 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x62 && x61 && ~x19 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x62 && ~x61 && x13 && x23 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( x62 && ~x61 && x13 && x23 && ~x51 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x62 && ~x61 && x13 && ~x23 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( x62 && ~x61 && ~x13 && x28 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( x62 && ~x61 && ~x13 && x28 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x62 && ~x61 && ~x13 && x28 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x62 && ~x61 && ~x13 && x28 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x62 && ~x61 && ~x13 && ~x28 && x6 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s53;
						end
					else if( x62 && ~x61 && ~x13 && ~x28 && x6 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x62 && ~x61 && ~x13 && ~x28 && x6 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x62 && ~x61 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x62 && ~x61 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x62 && x55 && x50 && x28 && x32 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s91;
						end
					else if( ~x62 && x55 && x50 && x28 && ~x32 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x55 && x50 && x28 && ~x32 && ~x35 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && x55 && x50 && ~x28 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && x55 && ~x50 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x62 && ~x55 && x13 && x23 && x51 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x62 && ~x55 && x13 && x23 && ~x51 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && ~x55 && x13 && ~x23 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x62 && ~x55 && ~x13 && x28 && x35 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s99;
						end
					else if( ~x62 && ~x55 && ~x13 && x28 && x35 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && ~x55 && ~x13 && x28 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x13 && x28 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && ~x55 && ~x13 && ~x28 && x6 && x35 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s93;
						end
					else if( ~x62 && ~x55 && ~x13 && ~x28 && x6 && ~x35 && x58 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x62 && ~x55 && ~x13 && ~x28 && x6 && ~x35 && ~x58 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && ~x55 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( ~x62 && ~x55 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s98;
				s99 : if( x55 && x35 && x7 && x1 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s91;
						end
					else if( x55 && x35 && x7 && ~x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x55 && x35 && ~x7 )
						nx_state = s99;
					else if( x55 && ~x35 && x38 && x32 )
						nx_state = s99;
					else if( x55 && ~x35 && x38 && ~x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x55 && ~x35 && ~x38 )
						nx_state = s99;
					else if( ~x55 && x34 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x55 && ~x34 && x2 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x55 && ~x34 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x55 && ~x34 && ~x2 && ~x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else nx_state = s99;
				s100 : if( x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( x16 && ~x6 && x8 && x19 && x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s83;
						end
					else if( x16 && ~x6 && x8 && x19 && ~x62 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && x62 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && x62 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x62 && x63 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s60;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x62 && x63 && ~x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x62 && ~x63 && x5 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x62 && ~x63 && x5 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( x16 && ~x6 && x8 && ~x19 && x26 && ~x62 && ~x63 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x16 && ~x6 && ~x8 && x62 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x16 && ~x6 && ~x8 && ~x62 && x63 )
						nx_state = s1;
					else if( x16 && ~x6 && ~x8 && ~x62 && ~x63 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x16 && x10 && x62 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( ~x16 && x10 && ~x62 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x16 && ~x10 && x62 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x16 && ~x10 && ~x62 && x63 )
						nx_state = s1;
					else if( ~x16 && ~x10 && ~x62 && ~x63 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else nx_state = s100;
				s101 : if( x44 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( x44 && ~x9 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x44 && ~x9 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x44 && x29 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x44 && x29 && ~x50 )
						nx_state = s101;
					else if( ~x44 && ~x29 && x45 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x44 && ~x29 && ~x45 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s101;
				s102 : if( x44 && x19 && x13 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s101;
						end
					else if( x44 && x19 && ~x13 && x32 && x18 && x12 )
						nx_state = s102;
					else if( x44 && x19 && ~x13 && x32 && x18 && ~x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( x44 && x19 && ~x13 && x32 && ~x18 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x44 && x19 && ~x13 && ~x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x44 && ~x19 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x44 && x17 && x19 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x44 && x17 && x19 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x44 && x17 && ~x19 )
						nx_state = s102;
					else if( ~x44 && ~x17 && x20 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x44 && ~x17 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x44 && ~x17 && ~x20 && ~x2 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s102;
				s103 : if( x44 && x19 && x28 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( x44 && x19 && x28 && ~x1 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x44 && x19 && x28 && ~x1 && ~x35 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( x44 && x19 && ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x44 && ~x19 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x44 && x13 && x23 && x51 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && x13 && x23 && ~x51 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x44 && x13 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x13 && x28 && x35 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x44 && ~x13 && x28 && x35 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x44 && ~x13 && x28 && ~x35 && x45 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x44 && ~x13 && x28 && ~x35 && ~x45 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x44 && ~x13 && ~x28 && x6 && x35 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x44 && ~x13 && ~x28 && x6 && ~x35 && x45 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x44 && ~x13 && ~x28 && x6 && ~x35 && ~x45 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x44 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x44 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else nx_state = s103;
				s104 : if( x44 && x12 && x27 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x44 && x12 && x27 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x44 && x12 && x27 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x44 && x12 && ~x27 && x37 && x29 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( x44 && x12 && ~x27 && x37 && ~x29 )
						nx_state = s104;
					else if( x44 && x12 && ~x27 && ~x37 )
						nx_state = s104;
					else if( x44 && ~x12 && x29 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else if( x44 && ~x12 && ~x29 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x44 && x17 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s110;
						end
					else if( ~x44 && ~x17 && x49 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x44 && ~x17 && ~x49 )
						nx_state = s104;
					else nx_state = s104;
				s105 : if( x55 && x22 && x2 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( x55 && x22 && x2 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x55 && x22 && x2 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x55 && x22 && ~x2 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x55 && ~x22 && x31 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x55 && ~x22 && ~x31 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x55 && x46 && x3 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x55 && x46 && x3 && ~x23 )
						nx_state = s105;
					else if( ~x55 && x46 && ~x3 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && ~x46 && x33 && x23 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x55 && ~x46 && x33 && ~x23 )
						nx_state = s105;
					else if( ~x55 && ~x46 && ~x33 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s105;
				s106 : if( x55 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s97;
						end
					else if( x55 && ~x5 && x34 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else if( x55 && ~x5 && ~x34 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x55 && x35 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( ~x55 && ~x35 && x44 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x55 && ~x35 && ~x44 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s106;
				s107 : if( x63 && x40 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x63 && ~x40 && x37 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x63 && ~x40 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x63 && x64 && x37 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x63 && x64 && ~x37 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x63 && x64 && ~x37 && ~x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x63 && ~x64 && x1 && x37 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x63 && ~x64 && x1 && ~x37 && x9 )
						nx_state = s107;
					else if( ~x63 && ~x64 && x1 && ~x37 && ~x9 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x63 && ~x64 && ~x1 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x63 && ~x64 && ~x1 && ~x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s107;
				s108 : if( 1'b1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s108;
				s109 : if( x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x37 && x9 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y21 = 1'b1;	
							nx_state = s28;
						end
					else if( ~x37 && ~x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s109;
				s110 : if( x62 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( ~x62 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s110;
				s111 : if( x62 && x16 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( x62 && x16 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( x62 && ~x16 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s182;
						end
					else if( ~x62 && x64 && x63 && x47 && x9 )
						begin
							y6 = 1'b1;	y13 = 1'b1;	y34 = 1'b1;	
							nx_state = s95;
						end
					else if( ~x62 && x64 && x63 && x47 && ~x9 )
						begin
							y5 = 1'b1;	y7 = 1'b1;	y9 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s91;
						end
					else if( ~x62 && x64 && x63 && ~x47 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && x64 && ~x63 && x16 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x62 && x64 && ~x63 && x16 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x62 && x64 && ~x63 && ~x16 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x62 && ~x64 && x16 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( ~x62 && ~x64 && x16 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x62 && ~x64 && ~x16 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s17;
						end
					else nx_state = s111;
				s112 : if( x55 && x25 && x52 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x55 && x25 && ~x52 && x6 && x39 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( x55 && x25 && ~x52 && x6 && ~x39 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s96;
						end
					else if( x55 && x25 && ~x52 && ~x6 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( x55 && ~x25 && x29 )
						begin
							y10 = 1'b1;	y26 = 1'b1;	y37 = 1'b1;	
							nx_state = s188;
						end
					else if( x55 && ~x25 && ~x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x55 && x38 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x55 && ~x38 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x55 && ~x38 && ~x50 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s112;
				s113 : if( x64 && x40 && x25 && x22 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && x40 && x25 && ~x22 && x6 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( x64 && x40 && x25 && ~x22 && x6 && ~x8 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( x64 && x40 && x25 && ~x22 && ~x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( x64 && x40 && ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s183;
						end
					else if( x64 && x40 && ~x25 && ~x29 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s12;
						end
					else if( x64 && ~x40 && x38 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( x64 && ~x40 && ~x38 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && ~x40 && ~x38 && ~x50 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x64 && x44 && x25 && x22 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && x44 && x25 && ~x22 && x6 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x64 && x44 && x25 && ~x22 && x6 && ~x8 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x64 && x44 && x25 && ~x22 && ~x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x64 && x44 && ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s183;
						end
					else if( ~x64 && x44 && ~x25 && ~x29 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( ~x64 && ~x44 && x38 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x64 && ~x44 && ~x38 && x50 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x64 && ~x44 && ~x38 && ~x50 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else nx_state = s113;
				s114 : if( x16 && x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( x16 && ~x9 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( ~x16 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s104;
						end
					else nx_state = s114;
				s115 : if( x46 && x16 && x36 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x46 && x16 && ~x36 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( x46 && ~x16 && x43 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( x46 && ~x16 && ~x43 )
						nx_state = s115;
					else if( ~x46 && x47 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( ~x46 && ~x47 && x44 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x46 && ~x47 && ~x44 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else nx_state = s115;
				s116 : if( x15 && x16 && x63 && x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && x16 && x63 && ~x36 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( x15 && x16 && ~x63 && x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && x16 && ~x63 && ~x5 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( x15 && ~x16 && x13 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x63 && x37 && x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x63 && x37 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x63 && x37 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x63 && ~x37 && x36 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x63 && ~x37 && ~x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x63 && x6 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x63 && x6 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x63 && x6 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x63 && ~x6 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x63 && ~x6 && ~x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x15 && ~x16 && ~x13 && x63 && x45 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && x63 && ~x45 && x40 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && x63 && ~x45 && ~x40 && x6 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && x63 && ~x45 && ~x40 && x6 && ~x2 )
						nx_state = s116;
					else if( x15 && ~x16 && ~x13 && x63 && ~x45 && ~x40 && ~x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && x63 && ~x45 && ~x40 && ~x6 && ~x8 )
						nx_state = s116;
					else if( x15 && ~x16 && ~x13 && ~x63 && x14 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x63 && ~x14 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x63 && ~x14 && ~x9 && x6 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x63 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s116;
					else if( x15 && ~x16 && ~x13 && ~x63 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x15 && ~x16 && ~x13 && ~x63 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s116;
					else if( ~x15 && x63 && x47 && x35 && x5 && x33 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && x63 && x47 && x35 && x5 && ~x33 && x1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( ~x15 && x63 && x47 && x35 && x5 && ~x33 && ~x1 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( ~x15 && x63 && x47 && x35 && ~x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && x63 && x47 && ~x35 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && x63 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x15 && ~x63 && x16 && x4 && x5 && x2 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && ~x63 && x16 && x4 && x5 && ~x2 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x15 && ~x63 && x16 && x4 && x5 && ~x2 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x15 && ~x63 && x16 && x4 && ~x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && ~x63 && x16 && ~x4 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && ~x63 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s116;
				s117 : if( x63 && x46 && x47 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( x63 && x46 && ~x47 && x34 && x2 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x63 && x46 && ~x47 && x34 && ~x2 )
						nx_state = s117;
					else if( x63 && x46 && ~x47 && ~x34 && x4 && x2 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x46 && ~x47 && ~x34 && x4 && ~x2 )
						nx_state = s117;
					else if( x63 && x46 && ~x47 && ~x34 && ~x4 && x32 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x46 && ~x47 && ~x34 && ~x4 && x32 && ~x2 )
						nx_state = s117;
					else if( x63 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x46 && ~x47 && ~x34 && ~x4 && ~x32 && ~x2 )
						nx_state = s117;
					else if( x63 && ~x46 && x16 && x4 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( x63 && ~x46 && x16 && x4 && ~x5 && x1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( x63 && ~x46 && x16 && x4 && ~x5 && ~x1 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x46 && x16 && ~x4 && x32 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( x63 && ~x46 && x16 && ~x4 && ~x32 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( x63 && ~x46 && ~x16 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x63 && x15 && x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && x15 && ~x16 && x2 && x64 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x63 && x15 && ~x16 && x2 && x64 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x15 && ~x16 && x2 && x64 && ~x3 && ~x4 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x63 && x15 && ~x16 && x2 && x64 && ~x3 && ~x4 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && x15 && ~x16 && x2 && ~x64 && x31 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x63 && x15 && ~x16 && x2 && ~x64 && ~x31 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x15 && ~x16 && x2 && ~x64 && ~x31 && ~x4 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && x15 && ~x16 && x2 && ~x64 && ~x31 && ~x4 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x15 && ~x16 && ~x2 )
						nx_state = s117;
					else if( ~x63 && ~x15 && x16 && x4 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && x64 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && x64 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && ~x64 && x36 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && ~x64 && ~x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && x1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && x37 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && ~x37 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x63 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else nx_state = s117;
				s118 : if( x16 && x15 && x5 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x16 && x15 && ~x5 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( x16 && ~x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x16 && x15 && x12 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x16 && x15 && ~x12 )
						nx_state = s118;
					else if( ~x16 && ~x15 && x13 && x64 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x16 && ~x15 && x13 && ~x64 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else if( ~x16 && ~x15 && ~x13 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else nx_state = s118;
				s119 : if( x5 )
						begin
							y22 = 1'b1;	
							nx_state = s197;
						end
					else if( ~x5 && x1 )
						begin
							y4 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x5 && ~x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	
							nx_state = s23;
						end
					else nx_state = s119;
				s120 : if( x3 )
						nx_state = s1;
					else if( ~x3 )
						begin
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s120;
				s121 : if( x5 && x6 )
						begin
							y16 = 1'b1;	
							nx_state = s198;
						end
					else if( x5 && ~x6 && x7 )
						nx_state = s1;
					else if( x5 && ~x6 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x5 && x4 )
						begin
							y4 = 1'b1;	
							nx_state = s24;
						end
					else if( ~x5 && ~x4 )
						begin
							y7 = 1'b1;	y9 = 1'b1;	y14 = 1'b1;	
							y15 = 1'b1;	
							nx_state = s121;
						end
					else nx_state = s121;
				s122 : if( x15 && x16 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && x16 && x4 && x5 && x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x1 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && x3 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x15 && x16 && x4 && ~x5 && x2 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x15 && x16 && x4 && ~x5 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x15 && x16 && ~x4 && x2 && x3 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x15 && x16 && ~x4 && x2 && ~x3 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x15 && ~x16 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else nx_state = s122;
				s123 : if( x16 && x15 && x5 && x1 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x16 && x15 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( x16 && x15 && x5 && ~x1 && x2 && x3 && ~x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && x15 && x5 && ~x1 && x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && x15 && x5 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && x15 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && x15 && ~x5 && ~x6 && x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && x2 && x3 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && x2 && x3 && ~x4 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && x2 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && ~x15 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x16 && x15 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x16 && ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s123;
				s124 : if( x62 && x15 && x16 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( x62 && x15 && ~x16 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( x62 && x15 && ~x16 && ~x11 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s127;
						end
					else if( x62 && x15 && ~x16 && ~x11 && ~x10 )
						nx_state = s124;
					else if( x62 && ~x15 && x16 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x15 && x16 && ~x3 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s152;
						end
					else if( x62 && ~x15 && ~x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x15 && x63 && x64 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x62 && x15 && x63 && ~x64 && x33 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x62 && x15 && x63 && ~x64 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x15 && x63 && ~x64 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x15 && ~x63 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x62 && ~x15 && x63 && x64 && x47 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && ~x15 && x63 && x64 && x47 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x15 && x63 && x64 && ~x47 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x62 && ~x15 && x63 && ~x64 && x49 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y20 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s109;
						end
					else if( ~x62 && ~x15 && x63 && ~x64 && ~x49 )
						nx_state = s124;
					else if( ~x62 && ~x15 && ~x63 && x16 && x64 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x62 && ~x15 && ~x63 && x16 && x64 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && ~x15 && ~x63 && x16 && ~x64 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x62 && ~x15 && ~x63 && x16 && ~x64 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x62 && ~x15 && ~x63 && ~x16 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else nx_state = s124;
				s125 : if( x16 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x16 && x15 && ~x8 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( ~x16 && x15 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s125;
					else if( ~x16 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s125;
				s126 : if( x62 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x62 && x64 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x62 && ~x64 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s199;
						end
					else nx_state = s126;
				s127 : if( x15 && x16 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x15 && x16 && x4 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s122;
						end
					else if( ~x15 && ~x16 && x12 && x13 && x3 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x15 && ~x16 && x12 && x13 && ~x3 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x15 && ~x16 && x12 && x13 && ~x3 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x15 && ~x16 && x12 && ~x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x15 && ~x16 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else nx_state = s127;
				s128 : if( x62 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s200;
						end
					else if( ~x62 && x64 && x40 && x29 && x50 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s201;
						end
					else if( ~x62 && x64 && x40 && x29 && ~x50 )
						nx_state = s128;
					else if( ~x62 && x64 && x40 && ~x29 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x62 && x64 && x40 && ~x29 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x62 && x64 && ~x40 && x11 && x6 && x9 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x62 && x64 && ~x40 && x11 && x6 && ~x9 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s204;
						end
					else if( ~x62 && x64 && ~x40 && x11 && ~x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x62 && x64 && ~x40 && ~x11 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x62 && x64 && ~x40 && ~x11 && ~x8 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( ~x62 && ~x64 && x44 && x29 && x50 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s207;
						end
					else if( ~x62 && ~x64 && x44 && x29 && ~x50 )
						nx_state = s128;
					else if( ~x62 && ~x64 && x44 && ~x29 && x45 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x62 && ~x64 && x44 && ~x29 && ~x45 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x62 && ~x64 && ~x44 && x11 && x6 && x9 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x62 && ~x64 && ~x44 && x11 && x6 && ~x9 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y22 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s209;
						end
					else if( ~x62 && ~x64 && ~x44 && x11 && ~x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x62 && ~x64 && ~x44 && ~x11 && x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x62 && ~x64 && ~x44 && ~x11 && ~x8 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else nx_state = s128;
				s129 : if( x62 && x15 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( x62 && ~x15 && x16 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x62 && ~x15 && ~x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s153;
						end
					else if( ~x62 && x63 && x55 && x33 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x62 && x63 && x55 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x63 && x55 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && x63 && ~x55 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && x63 && ~x55 && ~x50 )
						nx_state = s129;
					else if( ~x62 && ~x63 && x64 && x40 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x62 && ~x63 && x64 && x40 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x63 && x64 && x40 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && ~x63 && x64 && ~x40 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && ~x63 && x64 && ~x40 && ~x50 )
						nx_state = s129;
					else if( ~x62 && ~x63 && ~x64 && x44 && x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x62 && ~x63 && ~x64 && x44 && ~x33 && x13 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x63 && ~x64 && x44 && ~x33 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x62 && ~x63 && ~x64 && ~x44 && x50 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s107;
						end
					else if( ~x62 && ~x63 && ~x64 && ~x44 && ~x50 )
						nx_state = s129;
					else nx_state = s129;
				s130 : if( x63 && x46 && x16 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x63 && x46 && x16 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x46 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x63 && ~x46 && x47 && x4 && x5 && x1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( x63 && ~x46 && x47 && x4 && x5 && ~x1 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x63 && ~x46 && x47 && x4 && ~x5 && x2 && x3 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( x63 && ~x46 && x47 && x4 && ~x5 && x2 && ~x3 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x63 && ~x46 && x47 && x4 && ~x5 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x63 && ~x46 && x47 && ~x4 && x33 && x34 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && ~x46 && x47 && ~x4 && x33 && ~x34 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x63 && ~x46 && x47 && ~x4 && ~x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x63 && ~x46 && ~x47 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( ~x63 && x15 && x16 && x64 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x63 && x15 && x16 && x64 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && x15 && x16 && ~x64 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x63 && x15 && x16 && ~x64 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x63 && ~x15 && x16 && x4 && x5 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x63 && ~x15 && x16 && x4 && x5 && ~x1 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x63 && ~x15 && x16 && x4 && x5 && ~x1 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && x2 && x3 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s159;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && x2 && ~x3 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && x2 && ~x3 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x63 && ~x15 && x16 && x4 && ~x5 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && x2 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && x2 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && x34 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && x34 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && ~x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( ~x63 && ~x15 && ~x16 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else nx_state = s130;
				s131 : if( x46 && x16 && x36 && x1 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x46 && x16 && x36 && ~x1 && x2 && x3 && x35 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( x46 && x16 && x36 && ~x1 && x2 && x3 && ~x35 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x46 && x16 && x36 && ~x1 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x46 && x16 && x36 && ~x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x46 && x16 && ~x36 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x46 && x16 && ~x36 && ~x6 && x32 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && x34 && x4 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && x34 && ~x4 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && x33 && ~x34 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x46 && x16 && ~x36 && ~x6 && ~x32 && ~x33 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x46 && ~x16 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x46 && ~x16 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x46 && x47 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x46 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s131;
				s132 : if( x63 && x55 && x10 && x39 && x46 && x51 && x36 )
						nx_state = s132;
					else if( x63 && x55 && x10 && x39 && x46 && x51 && ~x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x63 && x55 && x10 && x39 && x46 && ~x51 && x36 )
						nx_state = s132;
					else if( x63 && x55 && x10 && x39 && x46 && ~x51 && ~x36 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x63 && x55 && x10 && x39 && ~x46 && x36 )
						nx_state = s132;
					else if( x63 && x55 && x10 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && x55 && x10 && ~x39 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( x63 && x55 && ~x10 && x42 && x34 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x63 && x55 && ~x10 && x42 && x34 && ~x8 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x63 && x55 && ~x10 && x42 && x34 && ~x8 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && x55 && ~x10 && x42 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x63 && x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && x54 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x63 && x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && x54 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && x55 && ~x10 && x42 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && x55 && ~x10 && x42 && ~x34 && ~x32 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x63 && x55 && ~x10 && ~x42 && x43 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && x55 && ~x10 && ~x42 && x43 && ~x20 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && x55 && ~x10 && ~x42 && x43 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x63 && x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && x3 && x6 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( x63 && x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && x55 && ~x10 && ~x42 && ~x43 && x13 && x32 && ~x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && x55 && ~x10 && ~x42 && ~x43 && x13 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && x55 && ~x10 && ~x42 && ~x43 && ~x13 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x63 && ~x55 && x41 && x11 && x1 && x33 && x34 && x35 )
						nx_state = s132;
					else if( x63 && ~x55 && x41 && x11 && x1 && x33 && x34 && ~x35 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && ~x55 && x41 && x11 && x1 && x33 && ~x34 && x4 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x63 && ~x55 && x41 && x11 && x1 && x33 && ~x34 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x63 && ~x55 && x41 && x11 && x1 && x33 && ~x34 && ~x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x63 && ~x55 && x41 && x11 && x1 && ~x33 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && ~x55 && x41 && x11 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && ~x55 && x41 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && ~x55 && x41 && ~x11 && ~x12 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( x63 && ~x55 && ~x41 && x32 && x42 )
						begin
							y23 = 1'b1;	y25 = 1'b1;	y32 = 1'b1;	
							nx_state = s216;
						end
					else if( x63 && ~x55 && ~x41 && x32 && ~x42 && x43 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x63 && ~x55 && ~x41 && x32 && ~x42 && ~x43 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s217;
						end
					else if( x63 && ~x55 && ~x41 && ~x32 && x11 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x63 && ~x55 && ~x41 && ~x32 && x11 && ~x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && ~x55 && ~x41 && ~x32 && ~x11 && x12 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && ~x55 && ~x41 && ~x32 && ~x11 && x12 && ~x35 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && x33 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && ~x33 && x40 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && ~x55 && ~x41 && ~x32 && ~x11 && ~x12 && ~x33 && ~x40 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x63 && x64 && x40 && x10 && x39 && x46 && x51 && x36 )
						nx_state = s132;
					else if( ~x63 && x64 && x40 && x10 && x39 && x46 && x51 && ~x36 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x63 && x64 && x40 && x10 && x39 && x46 && ~x51 && x36 )
						nx_state = s132;
					else if( ~x63 && x64 && x40 && x10 && x39 && x46 && ~x51 && ~x36 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && x64 && x40 && x10 && x39 && ~x46 && x36 )
						nx_state = s132;
					else if( ~x63 && x64 && x40 && x10 && x39 && ~x46 && ~x36 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x64 && x40 && x10 && ~x39 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && x34 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && x34 && ~x8 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && x45 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && ~x34 && x32 && ~x7 && ~x45 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x64 && x40 && ~x10 && x11 && ~x34 && ~x32 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && x12 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && x12 && ~x20 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && ~x12 && x13 && x1 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && ~x12 && x13 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x64 && x40 && ~x10 && ~x11 && ~x12 && ~x13 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && x64 && ~x40 && x10 && x11 && x1 && x2 && x4 && x5 && x3 )
						nx_state = s132;
					else if( ~x63 && x64 && ~x40 && x10 && x11 && x1 && x2 && x4 && x5 && ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && x64 && ~x40 && x10 && x11 && x1 && x2 && x4 && ~x5 && x3 )
						nx_state = s132;
					else if( ~x63 && x64 && ~x40 && x10 && x11 && x1 && x2 && x4 && ~x5 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x63 && x64 && ~x40 && x10 && x11 && x1 && x2 && ~x4 && x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && x64 && ~x40 && x10 && x11 && x1 && x2 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && x64 && ~x40 && x10 && x11 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x64 && ~x40 && x10 && x11 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && x64 && ~x40 && x10 && ~x11 && x12 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x64 && ~x40 && x10 && ~x11 && ~x12 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && x11 && x1 )
						begin
							y16 = 1'b1;	y25 = 1'b1;	y27 = 1'b1;	
							nx_state = s219;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && x11 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && x11 && ~x1 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && ~x11 && x12 && x1 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && ~x11 && x12 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && ~x11 && x12 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && ~x11 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && ~x2 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && x64 && ~x40 && ~x10 && ~x11 && ~x12 && ~x1 && ~x2 && ~x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && x10 && x44 && x39 && x46 && x51 && x36 )
						nx_state = s132;
					else if( ~x63 && ~x64 && x10 && x44 && x39 && x46 && x51 && ~x36 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x63 && ~x64 && x10 && x44 && x39 && x46 && ~x51 && x36 )
						nx_state = s132;
					else if( ~x63 && ~x64 && x10 && x44 && x39 && x46 && ~x51 && ~x36 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x63 && ~x64 && x10 && x44 && x39 && ~x46 && x36 )
						nx_state = s132;
					else if( ~x63 && ~x64 && x10 && x44 && x39 && ~x46 && ~x36 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x63 && ~x64 && x10 && x44 && ~x39 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && x36 && x34 && x4 && x5 && x3 )
						nx_state = s132;
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && x36 && x34 && x4 && x5 && ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && x36 && x34 && x4 && ~x5 && x3 )
						nx_state = s132;
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && x36 && x34 && x4 && ~x5 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && x36 && x34 && ~x4 && x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && x36 && x34 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && x36 && ~x34 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && x11 && ~x36 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && ~x11 && x12 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x63 && ~x64 && x10 && ~x44 && ~x11 && ~x12 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && x34 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && x34 && ~x8 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && x34 && ~x8 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && x11 && ~x34 && ~x32 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && x12 && x20 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && x12 && ~x20 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && ~x12 && x13 && x37 && x41 && x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && ~x12 && x13 && x37 && x41 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && ~x12 && x13 && x37 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && ~x12 && x13 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x63 && ~x64 && ~x10 && x44 && ~x11 && ~x12 && ~x13 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && x11 && x37 )
						begin
							y16 = 1'b1;	y25 = 1'b1;	y27 = 1'b1;	
							nx_state = s219;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && x11 && ~x37 && x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && x11 && ~x37 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && ~x11 && x12 && x37 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && ~x11 && x12 && ~x37 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && ~x11 && x12 && ~x37 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && ~x11 && ~x12 && x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && ~x11 && ~x12 && ~x37 && x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && ~x11 && ~x12 && ~x37 && ~x34 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x64 && ~x10 && ~x44 && ~x11 && ~x12 && ~x37 && ~x34 && ~x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else nx_state = s132;
				s133 : if( x63 && x46 && x16 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( x63 && x46 && ~x16 && x42 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x63 && x46 && ~x16 && ~x42 && x10 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s136;
						end
					else if( x63 && x46 && ~x16 && ~x42 && ~x10 )
						nx_state = s133;
					else if( x63 && ~x46 && x47 && x3 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x63 && ~x46 && x47 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( x63 && ~x46 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x63 && x16 && x15 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x63 && x16 && ~x15 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x63 && x16 && ~x15 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x63 && ~x16 && x15 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x63 && ~x16 && x15 && ~x11 && x10 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x63 && ~x16 && x15 && ~x11 && ~x10 )
						nx_state = s133;
					else if( ~x63 && ~x16 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s133;
				s134 : if( x16 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && x39 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x16 && x15 && ~x39 && x9 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x16 && x15 && ~x39 && ~x9 && x41 && x37 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && ~x39 && ~x9 && x41 && ~x37 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s134;
						end
					else if( ~x16 && x15 && ~x39 && ~x9 && ~x41 && x42 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x16 && x15 && ~x39 && ~x9 && ~x41 && ~x42 )
						nx_state = s134;
					else if( ~x16 && ~x15 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s134;
				s135 : if( 1'b1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s137;
						end
					else nx_state = s135;
				s136 : if( x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && ~x16 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && x47 && x4 && x5 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x15 && x47 && x4 && ~x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x15 && x47 && ~x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x47 && x43 && x44 && x34 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && ~x47 && x43 && x44 && ~x34 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && ~x47 && x43 && x44 && ~x34 && ~x14 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x15 && ~x47 && x43 && ~x44 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x15 && ~x47 && ~x43 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s136;
				s137 : if( 1'b1 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s223;
						end
					else nx_state = s137;
				s138 : if( x16 && x15 && x5 && x1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x16 && x15 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( x16 && x15 && x5 && ~x1 && x2 && x3 && ~x4 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x16 && x15 && x5 && ~x1 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x16 && x15 && x5 && ~x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x16 && x15 && ~x5 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x16 && x15 && ~x5 && ~x6 && x1 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && x2 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && x2 && x3 && ~x4 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x16 && x15 && ~x5 && ~x6 && ~x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x16 && ~x15 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x16 && x15 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x16 && x15 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x16 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s138;
				s139 : if( x15 && x16 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x15 && x16 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s158;
						end
					else if( x15 && ~x16 && x8 && x64 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( x15 && ~x16 && x8 && ~x64 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else if( x15 && ~x16 && ~x8 && x9 && x64 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( x15 && ~x16 && ~x8 && x9 && ~x64 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && x10 && x6 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && x10 && x6 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s158;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x15 && ~x16 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s139;
					else if( ~x15 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s26;
						end
					else if( ~x15 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s158;
						end
					else nx_state = s139;
				s140 : if( x16 && x15 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x16 && ~x15 && x4 && x64 && x5 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x16 && ~x15 && x4 && x64 && ~x5 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( x16 && ~x15 && x4 && ~x64 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x16 && ~x15 && x4 && ~x64 && ~x5 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else if( x16 && ~x15 && ~x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x16 && x12 && x15 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x16 && x12 && x15 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x16 && x12 && ~x15 && x13 && x3 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x16 && x12 && ~x15 && x13 && ~x3 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x16 && x12 && ~x15 && x13 && ~x3 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x16 && x12 && ~x15 && ~x13 && x64 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x16 && x12 && ~x15 && ~x13 && ~x64 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x16 && ~x12 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x16 && ~x12 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else nx_state = s140;
				s141 : if( x63 && x55 && x46 && x3 && x23 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( x63 && x55 && x46 && x3 && ~x23 )
						nx_state = s141;
					else if( x63 && x55 && x46 && ~x3 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x55 && ~x46 && x2 && x23 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( x63 && x55 && ~x46 && x2 && ~x23 )
						nx_state = s141;
					else if( x63 && x55 && ~x46 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x55 && x10 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x55 && ~x10 && x11 && x5 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x63 && ~x55 && ~x10 && x11 && ~x5 && x37 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && ~x55 && ~x10 && x11 && ~x5 && ~x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x63 && ~x55 && ~x10 && ~x11 && x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x55 && ~x10 && ~x11 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x63 && x64 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( ~x63 && ~x64 )
						begin
							y19 = 1'b1;	y34 = 1'b1;	y35 = 1'b1;	
							nx_state = s223;
						end
					else nx_state = s141;
				s142 : if( x26 && x28 && x7 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x28 && ~x7 && x62 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( x26 && x28 && ~x7 && ~x62 && x63 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( x26 && x28 && ~x7 && ~x62 && ~x63 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 && x25 && x62 && x9 )
						nx_state = s142;
					else if( ~x26 && x27 && x25 && x62 && ~x9 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && x27 && x25 && ~x62 && x63 && x9 )
						nx_state = s142;
					else if( ~x26 && x27 && x25 && ~x62 && x63 && ~x9 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && x27 && x25 && ~x62 && ~x63 && x9 )
						nx_state = s142;
					else if( ~x26 && x27 && x25 && ~x62 && ~x63 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && x27 && ~x25 && x62 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && x27 && ~x25 && ~x62 && x63 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x26 && x27 && ~x25 && ~x62 && ~x63 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x27 && x62 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( ~x26 && ~x27 && ~x62 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else nx_state = s142;
				s143 : if( x26 && x28 && x7 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( x26 && x28 && ~x7 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 && x25 && x9 )
						nx_state = s143;
					else if( ~x26 && x27 && x25 && ~x9 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && x27 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x27 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else nx_state = s143;
				s144 : if( x26 && x28 && x23 && x63 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( x26 && x28 && x23 && ~x63 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( x26 && x28 && x23 && ~x63 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else if( x26 && x28 && ~x23 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && ~x23 && ~x25 && x63 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x26 && x28 && ~x23 && ~x25 && ~x63 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x28 && x63 && x34 && x25 )
						nx_state = s144;
					else if( x26 && ~x28 && x63 && x34 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x26 && ~x28 && x63 && ~x34 && x35 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( x26 && ~x28 && x63 && ~x34 && x35 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && ~x28 && x63 && ~x34 && ~x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && ~x28 && ~x63 && x3 && x25 )
						nx_state = s144;
					else if( x26 && ~x28 && ~x63 && x3 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x28 && ~x63 && ~x3 && x4 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( x26 && ~x28 && ~x63 && ~x3 && x4 && ~x5 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && ~x28 && ~x63 && ~x3 && x4 && ~x5 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else if( x26 && ~x28 && ~x63 && ~x3 && ~x4 && x64 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && ~x28 && ~x63 && ~x3 && ~x4 && ~x64 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x26 && x27 && x63 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x26 && x27 && x63 && ~x35 )
						nx_state = s1;
					else if( ~x26 && x27 && ~x63 && x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x26 && x27 && ~x63 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && ~x11 && x63 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s231;
						end
					else if( ~x26 && ~x27 && x28 && ~x11 && ~x63 && x64 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s231;
						end
					else if( ~x26 && ~x27 && x28 && ~x11 && ~x63 && ~x64 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s232;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else nx_state = s144;
				s145 : if( x26 && x28 && x63 && x37 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x28 && x63 && ~x37 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && x63 && ~x37 && ~x4 )
						nx_state = s1;
					else if( x26 && x28 && ~x63 && x6 && x64 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x28 && ~x63 && x6 && ~x64 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( x26 && x28 && ~x63 && ~x6 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && ~x63 && ~x6 && ~x4 )
						nx_state = s1;
					else if( x26 && ~x28 )
						nx_state = s1;
					else if( ~x26 && x27 && x63 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && x27 && ~x63 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x27 && x63 && x28 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s233;
						end
					else if( ~x26 && ~x27 && x63 && ~x28 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && ~x27 && ~x63 && x28 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s234;
						end
					else if( ~x26 && ~x27 && ~x63 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else nx_state = s145;
				s146 : if( x26 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else if( ~x26 && x28 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s236;
						end
					else if( ~x26 && x28 && ~x5 && x64 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x26 && x28 && ~x5 && ~x64 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else if( ~x26 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else nx_state = s146;
				s147 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x26 && x27 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x64 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && ~x27 && x28 && x64 && ~x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x27 && x28 && ~x64 && x3 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x26 && ~x27 && x28 && ~x64 && ~x3 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s146;
						end
					else nx_state = s147;
				s148 : if( x28 && x7 && x63 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( x28 && x7 && ~x63 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( x28 && ~x7 && x63 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s237;
						end
					else if( x28 && ~x7 && ~x63 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x28 && x63 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x28 && ~x63 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s148;
				s149 : if( x28 && x7 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else if( x28 && ~x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x28 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s149;
				s150 : if( x26 && x8 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x8 && ~x1 && x14 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && x8 && ~x1 && ~x14 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s146;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x7 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x28 && x6 && x7 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s150;
				s151 : if( x26 && x8 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( x26 && x8 && ~x37 && x14 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else if( x26 && x8 && ~x37 && ~x14 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s146;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x7 && x5 && x3 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x28 && x6 && x7 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && x3 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s151;
				s152 : if( x15 && x16 && x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s6;
						end
					else if( x15 && ~x16 && x12 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x15 && ~x16 && ~x12 )
						nx_state = s152;
					else if( ~x15 && x16 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && x16 && ~x4 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x15 && x16 && ~x4 && ~x2 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x15 && ~x16 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s153;
						end
					else nx_state = s152;
				s153 : if( x62 && x16 && x15 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s238;
						end
					else if( x62 && x16 && ~x15 && x2 )
						begin
							y2 = 1'b1;	
							nx_state = s123;
						end
					else if( x62 && x16 && ~x15 && ~x2 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x62 && x16 && ~x15 && ~x2 && ~x1 )
						begin
							y10 = 1'b1;	
							nx_state = s29;
						end
					else if( x62 && ~x16 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s238;
						end
					else if( ~x62 && x64 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s238;
						end
					else if( ~x62 && ~x64 )
						begin
							y14 = 1'b1;	y31 = 1'b1;	
							nx_state = s239;
						end
					else nx_state = s153;
				s154 : if( x16 && x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x16 && ~x15 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s129;
						end
					else if( x16 && ~x15 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x16 && x15 && x13 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x16 && x15 && x13 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x16 && x15 && ~x13 && x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x16 && x15 && ~x13 && ~x14 && x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x16 && x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x16 && x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x16 && x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s154;
					else if( ~x16 && ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else nx_state = s154;
				s155 : if( x63 && x15 && x16 && x5 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x63 && x15 && x16 && ~x5 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x63 && x15 && ~x16 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( x63 && x15 && ~x16 && ~x12 )
						nx_state = s155;
					else if( x63 && ~x15 && x47 && x35 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x63 && ~x15 && x47 && ~x35 && x33 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x63 && ~x15 && x47 && ~x35 && ~x33 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( x63 && ~x15 && x47 && ~x35 && ~x33 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x63 && ~x15 && ~x47 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( ~x63 && x15 && x16 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x63 && x15 && x16 && ~x5 && x64 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x63 && x15 && x16 && ~x5 && ~x64 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x63 && x15 && ~x16 && x64 && x12 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x63 && x15 && ~x16 && x64 && ~x12 )
						nx_state = s155;
					else if( ~x63 && x15 && ~x16 && ~x64 && x12 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( ~x63 && x15 && ~x16 && ~x64 && ~x12 )
						nx_state = s155;
					else if( ~x63 && ~x15 && x16 && x4 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && x2 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && ~x2 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && x64 && ~x2 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && x34 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && ~x34 && x37 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( ~x63 && ~x15 && x16 && ~x4 && ~x64 && ~x34 && ~x37 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x63 && ~x15 && ~x16 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else nx_state = s155;
				s156 : if( x16 && x63 && x46 )
						begin
							y15 = 1'b1;	y23 = 1'b1;	y31 = 1'b1;	
							nx_state = s240;
						end
					else if( x16 && x63 && ~x46 && x2 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s131;
						end
					else if( x16 && x63 && ~x46 && ~x2 && x32 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( x16 && x63 && ~x46 && ~x2 && ~x32 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x16 && ~x63 && x15 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y23 = 1'b1;	
							nx_state = s241;
						end
					else if( x16 && ~x63 && ~x15 && x2 && x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s138;
						end
					else if( x16 && ~x63 && ~x15 && x2 && ~x64 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( x16 && ~x63 && ~x15 && ~x2 && x64 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( x16 && ~x63 && ~x15 && ~x2 && x64 && ~x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s32;
						end
					else if( x16 && ~x63 && ~x15 && ~x2 && ~x64 && x37 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( x16 && ~x63 && ~x15 && ~x2 && ~x64 && ~x37 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x16 && x63 )
						begin
							y15 = 1'b1;	y23 = 1'b1;	y31 = 1'b1;	
							nx_state = s240;
						end
					else if( ~x16 && ~x63 )
						begin
							y2 = 1'b1;	y15 = 1'b1;	y23 = 1'b1;	
							nx_state = s241;
						end
					else nx_state = s156;
				s157 : if( x15 && x16 && x5 && x1 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && x3 && ~x4 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && x16 && x5 && ~x1 && x2 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && x16 && x5 && ~x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && x16 && ~x5 && x6 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && x16 && ~x5 && ~x6 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x37 && x34 && x3 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x37 && x34 && x3 && ~x4 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x37 && x34 && ~x3 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && x16 && ~x5 && ~x6 && ~x37 && ~x34 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && ~x16 && x6 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s158;
						end
					else if( x15 && ~x16 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( ~x15 && x16 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( ~x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s157;
				s158 : if( x15 && x16 && x37 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x15 && x16 && ~x37 && x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( x15 && x16 && ~x37 && ~x5 && x6 && x2 && x31 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( x15 && x16 && ~x37 && ~x5 && x6 && x2 && ~x31 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && x16 && ~x37 && ~x5 && x6 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && x16 && ~x37 && ~x5 && ~x6 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else if( x15 && ~x16 && x7 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else if( x15 && ~x16 && ~x7 && x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && x6 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s158;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s139;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x15 && ~x16 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s158;
					else if( ~x15 && x16 && x4 && x5 && x34 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x34 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x34 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && x3 && x11 && x2 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s242;
						end
					else if( ~x15 && ~x16 && x3 && x11 && ~x2 )
						nx_state = s158;
					else if( ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && x31 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && x31 && ~x2 )
						nx_state = s158;
					else if( ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && ~x31 && x2 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && x13 && ~x31 && ~x2 )
						nx_state = s158;
					else if( ~x15 && ~x16 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s158;
					else if( ~x15 && ~x16 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s158;
					else if( ~x15 && ~x16 && x3 && ~x11 && ~x4 )
						nx_state = s158;
					else if( ~x15 && ~x16 && ~x3 && x4 && x34 && x11 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x15 && ~x16 && ~x3 && x4 && x34 && ~x11 && x12 && x13 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && ~x16 && ~x3 && x4 && x34 && ~x11 && x12 && x13 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x15 && ~x16 && ~x3 && x4 && x34 && ~x11 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x15 && ~x16 && ~x3 && x4 && x34 && ~x11 && ~x12 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x15 && ~x16 && ~x3 && x4 && ~x34 )
						nx_state = s158;
					else if( ~x15 && ~x16 && ~x3 && ~x4 && x6 && x34 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && x6 && x34 && ~x5 && x9 && x7 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && x6 && x34 && ~x5 && x9 && ~x7 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && x6 && x34 && ~x5 && ~x9 && x7 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && x6 && x34 && ~x5 && ~x9 && ~x7 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && x6 && ~x34 )
						nx_state = s158;
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && x7 && x34 && x5 && x8 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && x7 && x34 && x5 && ~x8 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && x7 && x34 && ~x5 && x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && x7 && x34 && ~x5 && ~x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && x7 && ~x34 )
						nx_state = s158;
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && x5 && x8 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && x5 && ~x8 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && ~x5 && x10 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && ~x7 && x34 && ~x5 && ~x10 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x15 && ~x16 && ~x3 && ~x4 && ~x6 && ~x7 && ~x34 )
						nx_state = s158;
					else nx_state = s158;
				s159 : if( x15 && x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( x15 && ~x16 && x63 && x13 && x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s54;
						end
					else if( x15 && ~x16 && x63 && x13 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 && x63 && x13 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && x63 && ~x13 && x45 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x15 && ~x16 && x63 && ~x13 && ~x45 && x9 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x15 && ~x16 && x63 && ~x13 && ~x45 && ~x9 && x38 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x15 && ~x16 && x63 && ~x13 && ~x45 && ~x9 && ~x38 && x39 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( x15 && ~x16 && x63 && ~x13 && ~x45 && ~x9 && ~x38 && ~x39 )
						nx_state = s159;
					else if( x15 && ~x16 && ~x63 && x13 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x15 && ~x16 && ~x63 && x13 && ~x4 && x64 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( x15 && ~x16 && ~x63 && x13 && ~x4 && x64 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( x15 && ~x16 && ~x63 && x13 && ~x4 && ~x64 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x15 && ~x16 && ~x63 && x13 && ~x4 && ~x64 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x15 && ~x16 && ~x63 && ~x13 && x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x15 && ~x16 && ~x63 && ~x13 && ~x14 && x9 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x15 && ~x16 && ~x63 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x15 && ~x16 && ~x63 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x15 && ~x16 && ~x63 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s159;
					else if( ~x15 && x63 && x47 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && x63 && x47 && ~x4 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && x63 && x47 && ~x4 && ~x32 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && x63 && ~x47 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else if( ~x15 && ~x63 && x16 && x4 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x15 && ~x63 && x16 && ~x4 && x64 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x15 && ~x63 && x16 && ~x4 && x64 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x15 && ~x63 && x16 && ~x4 && ~x64 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x15 && ~x63 && x16 && ~x4 && ~x64 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x15 && ~x63 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s159;
				s160 : if( x64 && x61 && x46 && x3 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x64 && x61 && x46 && x3 && ~x23 )
						nx_state = s160;
					else if( x64 && x61 && x46 && ~x3 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && x61 && ~x46 && x2 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x64 && x61 && ~x46 && x2 && ~x23 )
						nx_state = s160;
					else if( x64 && x61 && ~x46 && ~x2 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && x10 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x64 && ~x61 && ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && ~x61 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 && x1 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && x14 && x44 && x3 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x64 && x14 && x44 && x3 && ~x23 )
						nx_state = s160;
					else if( ~x64 && x14 && x44 && ~x3 )
						nx_state = s1;
					else if( ~x64 && x14 && ~x44 && x2 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x64 && x14 && ~x44 && x2 && ~x23 )
						nx_state = s160;
					else if( ~x64 && x14 && ~x44 && ~x2 )
						nx_state = s1;
					else if( ~x64 && ~x14 && x10 )
						nx_state = s1;
					else if( ~x64 && ~x14 && ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 && x1 )
						nx_state = s1;
					else if( ~x64 && ~x14 && ~x10 && ~x11 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s160;
				s161 : if( x10 && x6 && x7 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x10 && x6 && x7 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x10 && x6 && x7 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s40;
						end
					else if( x10 && ~x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x10 && ~x6 && ~x2 && x64 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( x10 && ~x6 && ~x2 && ~x64 )
						nx_state = s1;
					else if( ~x10 && x11 && x5 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x10 && x11 && ~x5 && x6 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x10 && ~x11 && x64 )
						begin
							y10 = 1'b1;	
							nx_state = s73;
						end
					else if( ~x10 && ~x11 && ~x64 )
						nx_state = s1;
					else nx_state = s161;
				s162 : if( x64 && x61 && x17 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( x64 && x61 && ~x17 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x64 && x61 && ~x17 && ~x57 )
						nx_state = s162;
					else if( x64 && ~x61 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( x64 && ~x61 && ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x64 && x14 && x17 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x64 && x14 && ~x17 && x21 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x64 && x14 && ~x17 && ~x21 )
						nx_state = s162;
					else if( ~x64 && ~x14 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s160;
						end
					else if( ~x64 && ~x14 && ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else nx_state = s162;
				s163 : if( x64 && x61 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x64 && x61 && ~x3 && x2 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( x64 && x61 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( x64 && x61 && ~x3 && ~x2 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( x64 && ~x61 && x10 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( x64 && ~x61 && x10 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( x64 && ~x61 && x10 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x64 && ~x61 && x10 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x64 && ~x61 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( x64 && ~x61 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 )
						nx_state = s163;
					else if( ~x64 && x14 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && x14 && ~x3 && x2 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x64 && x14 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x64 && x14 && ~x3 && ~x2 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x64 && ~x14 && x10 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x64 && ~x14 && x10 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && ~x14 && x10 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( ~x64 && ~x14 && x10 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 )
						nx_state = s163;
					else nx_state = s163;
				s164 : if( x64 && x61 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( x64 && x61 && ~x50 )
						nx_state = s164;
					else if( x64 && ~x61 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( x64 && ~x61 && ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( x64 && ~x61 && ~x11 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else if( ~x64 && x14 && x42 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s162;
						end
					else if( ~x64 && x14 && ~x42 )
						nx_state = s164;
					else if( ~x64 && ~x14 && x11 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( ~x64 && ~x14 && ~x11 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s163;
						end
					else if( ~x64 && ~x14 && ~x11 && ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s164;
				s165 : if( x62 && x3 && x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x62 && x3 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s71;
						end
					else if( x62 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x62 && x64 && x3 && x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x62 && x64 && x3 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x62 && x64 && ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x62 && ~x64 && x63 && x3 && x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x62 && ~x64 && x63 && x3 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x62 && ~x64 && x63 && ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x62 && ~x64 && ~x63 && x42 && x5 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x62 && ~x64 && ~x63 && x42 && ~x5 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x62 && ~x64 && ~x63 && ~x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else nx_state = s165;
				s166 : if( x64 && x61 && x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x64 && x61 && ~x37 && x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( x64 && x61 && ~x37 && ~x9 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( x64 && ~x61 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( x64 && ~x61 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( x64 && ~x61 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( x64 && ~x61 && ~x10 && ~x11 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x64 && x14 && x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x64 && x14 && ~x9 && x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x64 && x14 && ~x9 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s161;
						end
					else if( ~x64 && ~x14 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s92;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && ~x1 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x64 && ~x14 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x64 && ~x14 && ~x10 && ~x11 )
						begin
							y1 = 1'b1;	
							nx_state = s11;
						end
					else nx_state = s166;
				s167 : if( x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( x26 && ~x28 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( ~x26 && x27 && x4 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s246;
						end
					else if( ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && ~x27 && x28 && ~x2 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s247;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else if( ~x26 && ~x27 && ~x28 && x18 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x18 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else nx_state = s167;
				s168 : if( 1'b1 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else nx_state = s168;
				s169 : if( x61 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( x61 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x61 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( ~x61 && x50 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s171;
						end
					else if( ~x61 && ~x50 )
						nx_state = s169;
					else nx_state = s169;
				s170 : if( x61 && x30 && x16 && x6 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s100;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && x19 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s83;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && ~x19 && x26 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( x61 && x30 && x16 && ~x6 && x8 && ~x19 && ~x26 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	
							nx_state = s86;
						end
					else if( x61 && x30 && x16 && ~x6 && ~x8 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && x30 && ~x16 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && x30 && ~x16 && ~x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && ~x30 && x5 && x9 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && ~x30 && x5 && ~x9 )
						begin
							y13 = 1'b1;	
							nx_state = s53;
						end
					else if( x61 && ~x30 && ~x5 && x11 && x3 )
						nx_state = s170;
					else if( x61 && ~x30 && ~x5 && x11 && ~x3 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x61 && ~x30 && ~x5 && ~x11 && x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x61 && ~x30 && ~x5 && ~x11 && ~x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && x51 && x24 && x5 && x36 )
						nx_state = s170;
					else if( ~x61 && x51 && x24 && x5 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( ~x61 && x51 && x24 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && x51 && ~x24 && x31 && x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( ~x61 && x51 && ~x24 && x31 && ~x29 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && x51 && ~x24 && ~x31 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( ~x61 && ~x51 && x11 && x35 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( ~x61 && ~x51 && x11 && x35 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x51 && x11 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x51 && x11 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x51 && ~x11 && x52 && x35 )
						begin
							y13 = 1'b1;	
							nx_state = s53;
						end
					else if( ~x61 && ~x51 && ~x11 && x52 && ~x35 && x60 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x51 && ~x11 && x52 && ~x35 && ~x60 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x51 && ~x11 && ~x52 && x3 && x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s182;
						end
					else if( ~x61 && ~x51 && ~x11 && ~x52 && x3 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( ~x61 && ~x51 && ~x11 && ~x52 && ~x3 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else nx_state = s170;
				s171 : if( x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x9 && x37 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x9 && ~x37 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else nx_state = s171;
				s172 : if( x15 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s249;
						end
					else if( x15 && ~x1 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s250;
						end
					else if( ~x15 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s250;
						end
					else nx_state = s172;
				s173 : if( x61 && x14 && x8 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && x14 && x8 && ~x10 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && x14 && ~x8 && x30 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( x61 && x14 && ~x8 && x30 && ~x1 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x61 && x14 && ~x8 && x30 && ~x1 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x61 && x14 && ~x8 && ~x30 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && ~x14 && x32 && x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( x61 && ~x14 && x32 && ~x3 )
						nx_state = s173;
					else if( x61 && ~x14 && ~x32 && x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && ~x14 && ~x32 && ~x3 )
						nx_state = s173;
					else if( ~x61 && x16 && x54 && x29 && x59 && x27 )
						begin
							y13 = 1'b1;	
							nx_state = s169;
						end
					else if( ~x61 && x16 && x54 && x29 && x59 && ~x27 )
						nx_state = s173;
					else if( ~x61 && x16 && x54 && x29 && ~x59 && x27 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && x16 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s173;
					else if( ~x61 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s173;
					else if( ~x61 && x16 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x61 && x16 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s173;
					else if( ~x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && x16 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s173;
					else if( ~x61 && x16 && ~x54 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x16 && x37 && x56 && x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && ~x16 && x37 && x56 && ~x1 )
						nx_state = s173;
					else if( ~x61 && ~x16 && x37 && ~x56 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x16 && ~x37 && x25 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s83;
						end
					else if( ~x61 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s173;
					else if( ~x61 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s173;
					else nx_state = s173;
				s174 : if( x18 && x17 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s174;
						end
					else if( x18 && x17 && ~x5 && x6 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( x18 && x17 && ~x5 && ~x6 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s8;
						end
					else if( x18 && ~x17 && x1 && x16 && x15 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x18 && ~x17 && x1 && x16 && x15 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x18 && ~x17 && x1 && x16 && x15 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( x18 && ~x17 && x1 && x16 && ~x15 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x18 && ~x17 && x1 && ~x16 && x15 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x18 && ~x17 && x1 && ~x16 && ~x15 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x18 && ~x17 && x1 && ~x16 && ~x15 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x18 && ~x17 && ~x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x18 && x17 && x3 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s46;
						end
					else if( ~x18 && x17 && ~x3 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s48;
						end
					else if( ~x18 && ~x17 && x15 && x16 && x5 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x18 && ~x17 && x15 && x16 && ~x5 && x6 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x18 && ~x17 && x15 && x16 && ~x5 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x18 && ~x17 && x15 && ~x16 && x1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x18 && ~x17 && x15 && ~x16 && ~x1 )
						nx_state = s174;
					else if( ~x18 && ~x17 && ~x15 && x16 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( ~x18 && ~x17 && ~x15 && ~x16 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( ~x18 && ~x17 && ~x15 && ~x16 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s174;
				s175 : if( x26 && x39 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x39 && ~x32 && x14 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && x39 && ~x32 && ~x14 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x26 && ~x39 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s251;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x38 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x28 && x6 && x38 && x5 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( ~x26 && ~x28 && x6 && x38 && x5 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && ~x28 && x6 && x38 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && x8 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && x5 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && ~x28 && x6 && ~x38 && ~x8 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s175;
				s176 : if( x15 && x16 && x5 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x15 && x16 && ~x5 )
						begin
							y21 = 1'b1;	y27 = 1'b1;	
							nx_state = s156;
						end
					else if( x15 && ~x16 && x13 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s33;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s67;
						end
					else if( x15 && ~x16 && x13 && ~x11 && x6 && ~x4 && ~x37 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s66;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( x15 && ~x16 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s117;
						end
					else if( x15 && ~x16 && ~x13 && x14 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && x9 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s176;
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s64;
						end
					else if( x15 && ~x16 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s176;
					else if( ~x15 && x16 && x4 && x5 && x34 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x34 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x15 && x16 && x4 && x5 && ~x34 && ~x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x15 && x16 && x4 && ~x5 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x15 && x16 && ~x4 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x15 && ~x16 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s176;
				s177 : if( x55 && x51 && x24 && x36 )
						nx_state = s177;
					else if( x55 && x51 && x24 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && x51 && ~x24 && x31 && x29 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x55 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && x51 && ~x24 && ~x31 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x55 && ~x51 && x42 && x35 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x55 && ~x51 && x42 && x35 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x51 && x42 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x51 && x42 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x51 && ~x42 && x52 && x35 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s252;
						end
					else if( x55 && ~x51 && ~x42 && x52 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x51 && ~x42 && x52 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x51 && ~x42 && ~x52 && x3 && x6 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( x55 && ~x51 && ~x42 && ~x52 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x51 && ~x42 && ~x52 && ~x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x55 && x10 && x11 && x34 && x35 )
						nx_state = s177;
					else if( ~x55 && x10 && x11 && x34 && ~x35 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x55 && x10 && x11 && ~x34 && x4 && x5 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && x10 && x11 && ~x34 && x4 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x55 && x10 && x11 && ~x34 && ~x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( ~x55 && x10 && ~x11 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && x10 && ~x11 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x10 && x42 && x37 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && x4 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && x1 && x34 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && x1 && ~x34 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && x8 && ~x4 && ~x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x55 && ~x10 && x42 && ~x37 && ~x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x10 && ~x42 && x12 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && ~x10 && ~x42 && x12 && ~x9 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s252;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && ~x6 && x40 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x55 && ~x10 && ~x42 && ~x12 && ~x6 && ~x40 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else nx_state = s177;
				s178 : if( x55 && x44 && x23 && x51 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x55 && x44 && x23 && ~x51 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x55 && x44 && ~x23 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x55 && ~x44 && x28 && x35 && x36 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x55 && ~x44 && x28 && x35 && ~x36 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x44 && x28 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x44 && x28 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x44 && ~x28 && x37 && x35 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s252;
						end
					else if( x55 && ~x44 && ~x28 && x37 && ~x35 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x44 && ~x28 && x37 && ~x35 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x44 && ~x28 && ~x37 && x39 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x55 && ~x44 && ~x28 && ~x37 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x55 && x41 && x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x55 && x41 && ~x11 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x55 && ~x41 && x42 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s254;
						end
					else if( ~x55 && ~x41 && x42 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && ~x41 && x42 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x55 && ~x41 && ~x42 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x55 && ~x41 && ~x42 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else nx_state = s178;
				s179 : if( x63 && x55 && x17 && x41 && x19 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x63 && x55 && x17 && x41 && ~x19 )
						nx_state = s179;
					else if( x63 && x55 && x17 && ~x41 && x19 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x63 && x55 && x17 && ~x41 && ~x19 )
						nx_state = s179;
					else if( x63 && x55 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( x63 && x55 && ~x17 && ~x20 && x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && x55 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x63 && ~x55 && x10 && x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x55 && x10 && ~x11 && x43 && x4 && x32 )
						nx_state = s179;
					else if( x63 && ~x55 && x10 && ~x11 && x43 && x4 && ~x32 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x63 && ~x55 && x10 && ~x11 && x43 && ~x4 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && ~x55 && x10 && ~x11 && ~x43 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x63 && ~x55 && ~x10 && x42 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s252;
						end
					else if( x63 && ~x55 && ~x10 && ~x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && x64 && x40 && x17 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x63 && x64 && x40 && x17 && x19 && ~x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x63 && x64 && x40 && x17 && ~x19 )
						nx_state = s179;
					else if( ~x63 && x64 && x40 && ~x17 && x20 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s72;
						end
					else if( ~x63 && x64 && x40 && ~x17 && ~x20 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && x64 && x40 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && x64 && ~x40 && x11 && x10 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && x64 && ~x40 && x11 && ~x10 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( ~x63 && x64 && ~x40 && ~x11 && x10 && x12 && x4 && x1 )
						nx_state = s179;
					else if( ~x63 && x64 && ~x40 && ~x11 && x10 && x12 && x4 && ~x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x63 && x64 && ~x40 && ~x11 && x10 && x12 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && x64 && ~x40 && ~x11 && x10 && ~x12 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && x64 && ~x40 && ~x11 && ~x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && ~x64 && x44 && x17 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x63 && ~x64 && x44 && x17 && x19 && ~x10 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x63 && ~x64 && x44 && x17 && ~x19 )
						nx_state = s179;
					else if( ~x63 && ~x64 && x44 && ~x17 && x20 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x63 && ~x64 && x44 && ~x17 && ~x20 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x64 && x44 && ~x17 && ~x20 && ~x2 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && ~x64 && ~x44 && x11 && x10 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x63 && ~x64 && ~x44 && x11 && ~x10 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x11 && x10 && x12 && x4 && x1 )
						nx_state = s179;
					else if( ~x63 && ~x64 && ~x44 && ~x11 && x10 && x12 && x4 && ~x1 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x11 && x10 && x12 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x11 && x10 && ~x12 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x11 && ~x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else nx_state = s179;
				s180 : if( x64 && x40 && x51 && x24 && x5 && x36 )
						nx_state = s180;
					else if( x64 && x40 && x51 && x24 && x5 && ~x36 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && x40 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && x51 && ~x24 && x31 && x29 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && x40 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && x51 && ~x24 && ~x31 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && x40 && ~x51 && x11 && x35 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && x40 && ~x51 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x51 && x11 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x51 && x11 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x51 && ~x11 && x49 && x35 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( x64 && x40 && ~x51 && ~x11 && x49 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x51 && ~x11 && x49 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x51 && ~x11 && ~x49 && x3 && x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( x64 && x40 && ~x51 && ~x11 && ~x49 && x3 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x51 && ~x11 && ~x49 && ~x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && ~x40 && x11 && x10 && x4 && x5 && x3 )
						nx_state = s180;
					else if( x64 && ~x40 && x11 && x10 && x4 && x5 && ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && x11 && x10 && x4 && ~x5 && x3 )
						nx_state = s180;
					else if( x64 && ~x40 && x11 && x10 && x4 && ~x5 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x64 && ~x40 && x11 && x10 && ~x4 && x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && ~x40 && x11 && x10 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( x64 && ~x40 && x11 && ~x10 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x64 && ~x40 && x11 && ~x10 && ~x6 && x8 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( x64 && ~x40 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && x3 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x64 && ~x40 && x11 && ~x10 && ~x6 && x8 && ~x4 && x1 && ~x3 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x64 && ~x40 && x11 && ~x10 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x64 && ~x40 && x11 && ~x10 && ~x6 && ~x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && ~x40 && ~x11 && x10 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && ~x11 && x10 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && ~x40 && ~x11 && ~x10 && x12 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && ~x40 && ~x11 && ~x10 && x12 && ~x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( x64 && ~x40 && ~x11 && ~x10 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s165;
						end
					else if( x64 && ~x40 && ~x11 && ~x10 && ~x12 && ~x6 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && ~x40 && ~x11 && ~x10 && ~x12 && ~x6 && ~x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && x51 && x24 && x5 && x36 )
						nx_state = s180;
					else if( ~x64 && x44 && x51 && x24 && x5 && ~x36 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && x44 && x51 && x24 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && x51 && ~x24 && x31 && x29 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && x44 && x51 && ~x24 && x31 && ~x29 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && x51 && ~x24 && ~x31 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && x44 && ~x51 && x11 && x35 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && x44 && ~x51 && x11 && x35 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x51 && x11 && ~x35 && x45 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x51 && x11 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x51 && ~x11 && x52 && x35 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( ~x64 && x44 && ~x51 && ~x11 && x52 && ~x35 && x45 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x51 && ~x11 && x52 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x51 && ~x11 && ~x52 && x41 && x6 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x64 && x44 && ~x51 && ~x11 && ~x52 && x41 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x51 && ~x11 && ~x52 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && ~x44 && x10 && x11 && x4 && x5 && x3 )
						nx_state = s180;
					else if( ~x64 && ~x44 && x10 && x11 && x4 && x5 && ~x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && x10 && x11 && x4 && ~x5 && x3 )
						nx_state = s180;
					else if( ~x64 && ~x44 && x10 && x11 && x4 && ~x5 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x64 && ~x44 && x10 && x11 && ~x4 && x3 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && ~x44 && x10 && x11 && ~x4 && ~x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && x34 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && ~x34 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x6 && x8 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && x41 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x6 && x8 && ~x4 && x1 && ~x41 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x6 && x8 && ~x4 && ~x1 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x6 && ~x8 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && x12 && x9 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && x12 && ~x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && ~x12 && x6 )
						begin
							y6 = 1'b1;	y12 = 1'b1;	
							nx_state = s165;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && ~x12 && ~x6 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && ~x12 && ~x6 && ~x9 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else nx_state = s180;
				s181 : if( x64 && x40 && x13 && x23 && x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && x40 && x13 && x23 && ~x51 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && x40 && x13 && ~x23 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && x40 && ~x13 && x28 && x35 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && x40 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x13 && x28 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x13 && x28 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x13 && ~x28 && x6 && x35 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( x64 && x40 && ~x13 && ~x28 && x6 && ~x35 && x41 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x13 && ~x28 && x6 && ~x35 && ~x41 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && x40 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x64 && ~x40 && x11 && x10 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x64 && ~x40 && x11 && ~x10 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s204;
						end
					else if( x64 && ~x40 && x11 && ~x10 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && x11 && ~x10 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x64 && ~x40 && ~x11 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && ~x40 && ~x11 && ~x10 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && ~x40 && ~x11 && ~x10 && ~x5 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x64 && x44 && x13 && x23 && x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && x44 && x13 && x23 && ~x51 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && x44 && x13 && ~x23 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && x44 && ~x13 && x28 && x35 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && x44 && ~x13 && x28 && x35 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x13 && x28 && ~x35 && x45 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x13 && x28 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x13 && ~x28 && x6 && x35 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s255;
						end
					else if( ~x64 && x44 && ~x13 && ~x28 && x6 && ~x35 && x45 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x13 && ~x28 && x6 && ~x35 && ~x45 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x13 && ~x28 && ~x6 && x39 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && ~x13 && ~x28 && ~x6 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x64 && ~x44 && x10 && x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && x37 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y22 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s209;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x37 && x41 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x37 && ~x41 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && ~x5 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else nx_state = s181;
				s182 : if( x61 && x12 && x27 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( x61 && x12 && x27 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x61 && x12 && x27 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && x12 && ~x27 && x29 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( x61 && x12 && ~x27 && x29 && ~x1 && x9 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x61 && x12 && ~x27 && x29 && ~x1 && x9 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x61 && x12 && ~x27 && x29 && ~x1 && ~x9 )
						nx_state = s182;
					else if( x61 && x12 && ~x27 && ~x29 )
						nx_state = s182;
					else if( x61 && ~x12 && x29 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s83;
						end
					else if( x61 && ~x12 && ~x29 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s171;
						end
					else if( ~x61 && x17 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	
							nx_state = s110;
						end
					else if( ~x61 && ~x17 && x57 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x61 && ~x17 && ~x57 )
						nx_state = s182;
					else nx_state = s182;
				s183 : if( x62 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x62 && ~x2 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( ~x62 && x64 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && x64 && ~x2 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x62 && ~x64 && x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x62 && ~x64 && ~x33 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s113;
						end
					else nx_state = s183;
				s184 : if( x61 && x24 && x26 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s186;
						end
					else if( x61 && x24 && x26 && ~x7 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s111;
						end
					else if( x61 && x24 && ~x26 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( x61 && ~x24 && x28 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s182;
						end
					else if( x61 && ~x24 && ~x28 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && x31 && x19 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( ~x61 && x31 && x19 && ~x10 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else if( ~x61 && x31 && ~x19 )
						nx_state = s184;
					else if( ~x61 && ~x31 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s193;
						end
					else nx_state = s184;
				s185 : if( x61 && x11 && x25 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x61 && x11 && x25 && ~x3 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x61 && x11 && x25 && ~x3 && ~x5 )
						nx_state = s185;
					else if( x61 && x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x61 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && x53 && x47 )
						nx_state = s185;
					else if( ~x61 && x53 && ~x47 && x59 && x51 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && x53 && ~x47 && x59 && ~x51 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && x53 && ~x47 && ~x59 && x34 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && ~x53 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else nx_state = s185;
				s186 : if( x61 && x7 && x35 && x1 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s86;
						end
					else if( x61 && x7 && x35 && ~x1 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && x7 && ~x35 && x1 )
						nx_state = s186;
					else if( x61 && x7 && ~x35 && ~x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x61 && ~x7 )
						nx_state = s186;
					else if( ~x61 && x3 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( ~x61 && ~x3 && x2 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s171;
						end
					else if( ~x61 && ~x3 && ~x2 && x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && ~x3 && ~x2 && ~x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else nx_state = s186;
				s187 : if( x61 && x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s173;
						end
					else if( x61 && ~x5 && x34 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else if( x61 && ~x5 && ~x34 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( ~x61 && x35 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x35 && x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s182;
						end
					else if( ~x61 && ~x35 && ~x13 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s83;
						end
					else nx_state = s187;
				s188 : if( x33 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x33 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s112;
						end
					else nx_state = s188;
				s189 : if( x63 && x55 && x11 && x25 && x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && x55 && x11 && x25 && ~x34 && x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && x55 && x11 && x25 && ~x34 && ~x36 )
						nx_state = s189;
					else if( x63 && x55 && x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( x63 && x55 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && ~x55 && x53 && x47 )
						nx_state = s189;
					else if( x63 && ~x55 && x53 && ~x47 && x59 && x51 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && ~x55 && x53 && ~x47 && x59 && ~x51 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x55 && x53 && ~x47 && ~x59 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x63 && ~x55 && x53 && ~x47 && ~x59 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( x63 && ~x55 && ~x53 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x63 && x64 && x40 && x11 && x25 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x64 && x40 && x11 && x25 && ~x3 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x64 && x40 && x11 && x25 && ~x3 && ~x5 )
						nx_state = s189;
					else if( ~x63 && x64 && x40 && x11 && ~x25 )
						begin
							y1 = 1'b1;	
							nx_state = s94;
						end
					else if( ~x63 && x64 && x40 && ~x11 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x64 && ~x40 && x48 && x42 && x51 && x47 )
						nx_state = s189;
					else if( ~x63 && x64 && ~x40 && x48 && x42 && x51 && ~x47 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x64 && ~x40 && x48 && x42 && ~x51 && x47 )
						nx_state = s189;
					else if( ~x63 && x64 && ~x40 && x48 && x42 && ~x51 && ~x47 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x64 && ~x40 && x48 && ~x42 && x47 )
						nx_state = s189;
					else if( ~x63 && x64 && ~x40 && x48 && ~x42 && ~x47 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && x64 && ~x40 && x48 && ~x42 && ~x47 && ~x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && x64 && ~x40 && ~x48 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x63 && ~x64 && x44 && x11 && x25 && x42 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x64 && x44 && x11 && x25 && ~x42 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x64 && x44 && x11 && x25 && ~x42 && ~x5 )
						nx_state = s189;
					else if( ~x63 && ~x64 && x44 && x11 && ~x25 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x63 && ~x64 && x44 && ~x11 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x64 && ~x44 && x53 && x47 )
						nx_state = s189;
					else if( ~x63 && ~x64 && ~x44 && x53 && ~x47 && x48 && x51 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x64 && ~x44 && x53 && ~x47 && x48 && ~x51 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x64 && ~x44 && x53 && ~x47 && ~x48 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x63 && ~x64 && ~x44 && x53 && ~x47 && ~x48 && ~x34 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x63 && ~x64 && ~x44 && ~x53 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s189;
				s190 : if( x44 && x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( x44 && ~x5 && x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s89;
						end
					else if( x44 && ~x5 && ~x34 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s79;
						end
					else if( ~x44 && x35 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x44 && ~x35 && x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x44 && ~x35 && ~x13 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s190;
				s191 : if( x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s256;
						end
					else if( ~x15 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x15 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s256;
						end
					else nx_state = s191;
				s192 : if( x2 && x63 && x46 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s258;
						end
					else if( x2 && x63 && ~x46 && x34 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( x2 && x63 && ~x46 && ~x34 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( x2 && x63 && ~x46 && ~x34 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s195;
						end
					else if( x2 && ~x63 && x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s256;
						end
					else if( x2 && ~x63 && ~x15 && x3 && x64 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( x2 && ~x63 && ~x15 && x3 && ~x64 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( x2 && ~x63 && ~x15 && ~x3 && x4 && x64 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( x2 && ~x63 && ~x15 && ~x3 && x4 && ~x64 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s263;
						end
					else if( x2 && ~x63 && ~x15 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s191;
						end
					else if( ~x2 && x63 && x46 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s258;
						end
					else if( ~x2 && x63 && ~x46 )
						nx_state = s192;
					else if( ~x2 && ~x63 && x15 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s256;
						end
					else if( ~x2 && ~x63 && ~x15 )
						nx_state = s192;
					else nx_state = s192;
				s193 : if( x61 && x25 && x22 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && x25 && ~x22 && x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( x61 && x25 && ~x22 && x6 && ~x8 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && x25 && ~x22 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( x61 && ~x25 && x29 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s183;
						end
					else if( x61 && ~x25 && ~x29 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( ~x61 && x38 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s85;
						end
					else if( ~x61 && ~x38 && x50 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s98;
						end
					else if( ~x61 && ~x38 && ~x50 )
						begin
							y2 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s193;
				s194 : if( x61 && x22 && x2 && x33 )
						begin
							y10 = 1'b1;	
							nx_state = s194;
						end
					else if( x61 && x22 && x2 && ~x33 && x13 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( x61 && x22 && x2 && ~x33 && ~x13 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s184;
						end
					else if( x61 && x22 && ~x2 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && ~x22 && x31 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( x61 && ~x22 && ~x31 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s170;
						end
					else if( ~x61 && x46 && x3 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( ~x61 && x46 && x3 && ~x23 )
						nx_state = s194;
					else if( ~x61 && x46 && ~x3 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else if( ~x61 && ~x46 && x2 && x23 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s187;
						end
					else if( ~x61 && ~x46 && x2 && ~x23 )
						nx_state = s194;
					else if( ~x61 && ~x46 && ~x2 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s172;
						end
					else nx_state = s194;
				s195 : if( x15 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s258;
						end
					else if( ~x15 && x36 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x15 && ~x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s258;
						end
					else nx_state = s195;
				s196 : if( x16 && x15 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( x16 && ~x15 && x3 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( x16 && ~x15 && ~x3 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s155;
						end
					else if( ~x16 && x15 && x11 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x16 && x15 && ~x11 && x10 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s140;
						end
					else if( ~x16 && x15 && ~x11 && ~x10 )
						nx_state = s196;
					else if( ~x16 && ~x15 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s196;
				s197 : if( x9 )
						begin
							y16 = 1'b1;	
							nx_state = s198;
						end
					else if( ~x9 && x7 )
						nx_state = s1;
					else if( ~x9 && ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s197;
				s198 : if( x7 )
						nx_state = s1;
					else if( ~x7 )
						begin
							y8 = 1'b1;	y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s198;
				s199 : if( x63 && x46 )
						begin
							y19 = 1'b1;	
							nx_state = s264;
						end
					else if( x63 && ~x46 && x43 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s238;
						end
					else if( x63 && ~x46 && ~x43 )
						nx_state = s199;
					else if( ~x63 && x64 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( ~x63 && ~x64 )
						begin
							y19 = 1'b1;	y34 = 1'b1;	y35 = 1'b1;	
							nx_state = s265;
						end
					else nx_state = s199;
				s200 : if( x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x62 && x64 && x40 && x50 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s201;
						end
					else if( ~x62 && x64 && x40 && ~x50 )
						nx_state = s200;
					else if( ~x62 && x64 && ~x40 && x11 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( ~x62 && x64 && ~x40 && ~x11 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( ~x62 && x64 && ~x40 && ~x11 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x62 && ~x64 && x44 && x50 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s207;
						end
					else if( ~x62 && ~x64 && x44 && ~x50 )
						nx_state = s200;
					else if( ~x62 && ~x64 && ~x44 && x11 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( ~x62 && ~x64 && ~x44 && ~x11 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( ~x62 && ~x64 && ~x44 && ~x11 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else nx_state = s200;
				s201 : if( x40 && x17 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( x40 && ~x17 && x43 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x40 && ~x17 && ~x43 )
						nx_state = s201;
					else if( ~x40 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( ~x40 && ~x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s201;
						end
					else nx_state = s201;
				s202 : if( x64 && x40 && x16 && x45 && x29 && x42 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( x64 && x40 && x16 && x45 && x29 && x42 && ~x27 )
						nx_state = s202;
					else if( x64 && x40 && x16 && x45 && x29 && ~x42 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && x40 && x16 && x45 && x29 && ~x42 && ~x27 )
						nx_state = s202;
					else if( x64 && x40 && x16 && x45 && ~x29 && x33 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && x40 && x16 && x45 && ~x29 && x33 && ~x27 )
						nx_state = s202;
					else if( x64 && x40 && x16 && x45 && ~x29 && ~x33 && x43 && x27 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x64 && x40 && x16 && x45 && ~x29 && ~x33 && x43 && ~x27 )
						nx_state = s202;
					else if( x64 && x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && x40 && x16 && x45 && ~x29 && ~x33 && ~x43 && ~x27 )
						nx_state = s202;
					else if( x64 && x40 && x16 && ~x45 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x16 && x37 && x44 && x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && x40 && ~x16 && x37 && x44 && ~x1 )
						nx_state = s202;
					else if( x64 && x40 && ~x16 && x37 && ~x44 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x16 && ~x37 && x25 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x16 && ~x37 && ~x25 && x5 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( x64 && x40 && ~x16 && ~x37 && ~x25 && x5 && ~x4 )
						nx_state = s202;
					else if( x64 && x40 && ~x16 && ~x37 && ~x25 && ~x5 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && x40 && ~x16 && ~x37 && ~x25 && ~x5 && ~x4 )
						nx_state = s202;
					else if( x64 && ~x40 && x10 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && x10 && ~x11 && x12 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && x10 && ~x11 && x12 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && ~x40 && x10 && ~x11 && ~x12 && x1 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x64 && ~x40 && x10 && ~x11 && ~x12 && x1 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x64 && ~x40 && x10 && ~x11 && ~x12 && x1 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x64 && ~x40 && x10 && ~x11 && ~x12 && ~x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && ~x10 && x12 && x2 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x64 && ~x40 && ~x10 && x12 && x2 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x64 && ~x40 && ~x10 && x12 && ~x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s200;
						end
					else if( x64 && ~x40 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && ~x40 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && x44 && x16 && x54 && x29 && x48 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( ~x64 && x44 && x16 && x54 && x29 && x48 && ~x27 )
						nx_state = s202;
					else if( ~x64 && x44 && x16 && x54 && x29 && ~x48 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && x44 && x16 && x54 && x29 && ~x48 && ~x27 )
						nx_state = s202;
					else if( ~x64 && x44 && x16 && x54 && ~x29 && x33 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && x44 && x16 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s202;
					else if( ~x64 && x44 && x16 && x54 && ~x29 && ~x33 && x49 && x27 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x64 && x44 && x16 && x54 && ~x29 && ~x33 && x49 && ~x27 )
						nx_state = s202;
					else if( ~x64 && x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && x44 && x16 && x54 && ~x29 && ~x33 && ~x49 && ~x27 )
						nx_state = s202;
					else if( ~x64 && x44 && x16 && ~x54 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x16 && x36 && x55 && x37 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && x44 && ~x16 && x36 && x55 && ~x37 )
						nx_state = s202;
					else if( ~x64 && x44 && ~x16 && x36 && ~x55 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x16 && ~x36 && x25 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x16 && ~x36 && ~x25 && x5 && x4 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( ~x64 && x44 && ~x16 && ~x36 && ~x25 && x5 && ~x4 )
						nx_state = s202;
					else if( ~x64 && x44 && ~x16 && ~x36 && ~x25 && ~x5 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && x44 && ~x16 && ~x36 && ~x25 && ~x5 && ~x4 )
						nx_state = s202;
					else if( ~x64 && ~x44 && x10 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && x12 && x34 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && x12 && ~x34 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && ~x12 && x37 && x41 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && ~x12 && x37 && ~x41 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && ~x12 && x37 && ~x41 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x64 && ~x44 && x10 && ~x11 && ~x12 && ~x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && ~x10 && x12 && x2 && x4 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x64 && ~x44 && ~x10 && x12 && x2 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x64 && ~x44 && ~x10 && x12 && ~x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x12 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s200;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x12 && ~x9 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x12 && ~x9 && ~x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else nx_state = s202;
				s203 : if( x28 && x64 && x43 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x28 && x64 && ~x43 )
						nx_state = s203;
					else if( x28 && ~x64 && x49 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x28 && ~x64 && ~x49 )
						nx_state = s203;
					else if( ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x28 && x27 && ~x8 && x37 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x28 && x27 && ~x8 && x37 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x28 && x27 && ~x8 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x28 && ~x27 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else nx_state = s203;
				s204 : if( x8 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( x8 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s200;
						end
					else if( x8 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else nx_state = s204;
				s205 : if( x64 && x40 && x8 && x48 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x64 && x40 && x8 && ~x48 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && x8 && ~x48 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x64 && x40 && ~x8 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x64 && x40 && ~x8 && ~x51 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x8 && ~x51 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x64 && ~x40 && x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x64 && ~x40 && ~x10 && x11 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( x64 && ~x40 && ~x10 && ~x11 && x12 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && ~x40 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s201;
						end
					else if( x64 && ~x40 && ~x10 && ~x11 && ~x12 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( ~x64 && x44 && x8 && x53 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x64 && x44 && x8 && ~x53 && x37 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && x8 && ~x53 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x64 && x44 && ~x8 && x51 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x64 && x44 && ~x8 && ~x51 && x37 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x8 && ~x51 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x64 && ~x44 && x10 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && x12 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && x12 && ~x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s207;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && ~x12 )
						begin
							y17 = 1'b1;	y21 = 1'b1;	y32 = 1'b1;	
							nx_state = s268;
						end
					else nx_state = s205;
				s206 : if( x64 && x40 && x46 && x3 && x23 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x64 && x40 && x46 && x3 && ~x23 )
						nx_state = s206;
					else if( x64 && x40 && x46 && ~x3 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && x40 && ~x46 && x2 && x23 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x64 && x40 && ~x46 && x2 && ~x23 )
						nx_state = s206;
					else if( x64 && x40 && ~x46 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && ~x40 && x10 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && ~x40 && ~x10 && x11 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x64 && ~x40 && ~x10 && x11 && ~x5 && x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && ~x40 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && ~x10 && ~x11 && x1 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x64 && ~x40 && ~x10 && ~x11 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && x44 && x46 && x42 && x23 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x64 && x44 && x46 && x42 && ~x23 )
						nx_state = s206;
					else if( ~x64 && x44 && x46 && ~x42 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && x44 && ~x46 && x34 && x23 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x64 && x44 && ~x46 && x34 && ~x23 )
						nx_state = s206;
					else if( ~x64 && x44 && ~x46 && ~x34 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && ~x44 && x10 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x5 && x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && ~x44 && ~x10 && x11 && ~x5 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && x36 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x11 && ~x36 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else nx_state = s206;
				s207 : if( x44 && x17 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( x44 && ~x17 && x49 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x44 && ~x17 && ~x49 )
						nx_state = s207;
					else if( ~x44 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( ~x44 && ~x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s207;
						end
					else nx_state = s207;
				s208 : if( x10 && x44 && x12 && x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s14;
						end
					else if( x10 && x44 && x12 && ~x23 && x4 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( x10 && x44 && x12 && ~x23 && ~x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( x10 && x44 && ~x12 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s104;
						end
					else if( x10 && ~x44 && x39 && x46 && x51 && x36 )
						nx_state = s208;
					else if( x10 && ~x44 && x39 && x46 && x51 && ~x36 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( x10 && ~x44 && x39 && x46 && ~x51 && x36 )
						nx_state = s208;
					else if( x10 && ~x44 && x39 && x46 && ~x51 && ~x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( x10 && ~x44 && x39 && ~x46 && x36 )
						nx_state = s208;
					else if( x10 && ~x44 && x39 && ~x46 && ~x36 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( x10 && ~x44 && ~x39 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s190;
						end
					else if( ~x10 && x44 && x37 && x22 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							nx_state = s183;
						end
					else if( ~x10 && x44 && x37 && ~x22 && x2 && x11 && x42 )
						nx_state = s208;
					else if( ~x10 && x44 && x37 && ~x22 && x2 && x11 && ~x42 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x44 && x37 && ~x22 && x2 && x11 && ~x42 && ~x5 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x10 && x44 && x37 && ~x22 && x2 && ~x11 && x42 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x10 && x44 && x37 && ~x22 && x2 && ~x11 && ~x42 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x10 && x44 && x37 && ~x22 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x10 && x44 && ~x37 && x11 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && x44 && ~x37 && x11 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x10 && x44 && ~x37 && ~x11 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x44 && x11 && x34 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x10 && ~x44 && x11 && x34 && ~x8 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x44 && x11 && x34 && ~x8 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x10 && ~x44 && x11 && ~x34 && x32 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s90;
						end
					else if( ~x10 && ~x44 && x11 && ~x34 && x32 && ~x7 && x54 && x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x44 && x11 && ~x34 && x32 && ~x7 && x54 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x10 && ~x44 && x11 && ~x34 && x32 && ~x7 && ~x54 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x10 && ~x44 && x11 && ~x34 && ~x32 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s102;
						end
					else if( ~x10 && ~x44 && ~x11 && x12 && x20 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x10 && ~x44 && ~x11 && x12 && ~x20 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && ~x44 && ~x11 && x12 && ~x20 && ~x2 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s103;
						end
					else if( ~x10 && ~x44 && ~x11 && ~x12 && x13 && x36 && x3 && x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x10 && ~x44 && ~x11 && ~x12 && x13 && x36 && x3 && ~x6 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x10 && ~x44 && ~x11 && ~x12 && x13 && x36 && ~x3 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s77;
						end
					else if( ~x10 && ~x44 && ~x11 && ~x12 && x13 && ~x36 )
						begin
							y11 = 1'b1;	
							nx_state = s189;
						end
					else if( ~x10 && ~x44 && ~x11 && ~x12 && ~x13 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s208;
				s209 : if( x8 && x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( x8 && ~x37 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s200;
						end
					else if( x8 && ~x37 && ~x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else nx_state = s209;
				s210 : if( x63 && x55 && x35 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x55 && ~x35 && x13 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( x63 && x55 && ~x35 && ~x13 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( x63 && ~x55 && x41 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x63 && ~x55 && ~x41 && x42 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( x63 && ~x55 && ~x41 && ~x42 && x38 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x63 && ~x55 && ~x41 && ~x42 && ~x38 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( ~x63 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s210;
				s211 : if( x63 && x55 && x50 && x41 && x19 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x63 && x55 && x50 && x41 && ~x19 )
						nx_state = s211;
					else if( x63 && x55 && x50 && ~x41 && x19 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x63 && x55 && x50 && ~x41 && ~x19 )
						nx_state = s211;
					else if( x63 && x55 && ~x50 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x63 && ~x55 && x10 && x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x55 && x10 && ~x11 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x63 && ~x55 && ~x10 && x42 && x38 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x63 && ~x55 && ~x10 && x42 && ~x38 )
						begin
							y8 = 1'b1;	
							nx_state = s269;
						end
					else if( x63 && ~x55 && ~x10 && ~x42 && x12 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( x63 && ~x55 && ~x10 && ~x42 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s217;
						end
					else if( x63 && ~x55 && ~x10 && ~x42 && ~x12 && ~x1 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x63 && ~x55 && ~x10 && ~x42 && ~x12 && ~x1 && ~x35 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && x40 && x50 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x63 && x40 && x50 && x19 && ~x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x63 && x40 && x50 && ~x19 )
						nx_state = s211;
					else if( ~x63 && x40 && ~x50 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x63 && ~x40 && x11 && x10 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && ~x40 && x11 && ~x10 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x63 && ~x40 && x11 && ~x10 && ~x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s201;
						end
					else if( ~x63 && ~x40 && ~x11 && x10 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x63 && ~x40 && ~x11 && ~x10 && x12 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x63 && ~x40 && ~x11 && ~x10 && ~x12 && x1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x63 && ~x40 && ~x11 && ~x10 && ~x12 && ~x1 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x63 && ~x40 && ~x11 && ~x10 && ~x12 && ~x1 && ~x4 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s211;
				s212 : if( x62 && x14 && x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s265;
						end
					else if( x62 && x14 && ~x13 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s270;
						end
					else if( x62 && ~x14 )
						begin
							y13 = 1'b1;	
							nx_state = s271;
						end
					else if( ~x62 && x28 && x57 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x62 && x28 && ~x57 )
						nx_state = s212;
					else if( ~x62 && ~x28 && x27 && x8 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x62 && ~x28 && x27 && ~x8 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x62 && ~x28 && x27 && ~x8 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( ~x62 && ~x28 && ~x27 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else nx_state = s212;
				s213 : if( x50 && x63 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x50 && ~x63 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x50 )
						nx_state = s213;
					else nx_state = s213;
				s214 : if( x55 && x47 && x54 && x29 && x59 && x27 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s272;
						end
					else if( x55 && x47 && x54 && x29 && x59 && ~x27 )
						nx_state = s214;
					else if( x55 && x47 && x54 && x29 && ~x59 && x27 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x55 && x47 && x54 && x29 && ~x59 && ~x27 )
						nx_state = s214;
					else if( x55 && x47 && x54 && ~x29 && x33 && x27 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x55 && x47 && x54 && ~x29 && x33 && ~x27 )
						nx_state = s214;
					else if( x55 && x47 && x54 && ~x29 && ~x33 && x57 && x27 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x55 && x47 && x54 && ~x29 && ~x33 && x57 && ~x27 )
						nx_state = s214;
					else if( x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && x27 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x55 && x47 && x54 && ~x29 && ~x33 && ~x57 && ~x27 )
						nx_state = s214;
					else if( x55 && x47 && ~x54 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x47 && x37 && x56 && x1 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x55 && ~x47 && x37 && x56 && ~x1 )
						nx_state = s214;
					else if( x55 && ~x47 && x37 && ~x56 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x47 && ~x37 && x25 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x47 && ~x37 && ~x25 && x36 && x35 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( x55 && ~x47 && ~x37 && ~x25 && x36 && ~x35 )
						nx_state = s214;
					else if( x55 && ~x47 && ~x37 && ~x25 && ~x36 && x35 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x55 && ~x47 && ~x37 && ~x25 && ~x36 && ~x35 )
						nx_state = s214;
					else if( ~x55 && x41 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && x41 && ~x11 && x12 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && x41 && ~x11 && x12 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && x32 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && x32 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && x32 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x55 && x41 && ~x11 && ~x12 && ~x32 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && ~x41 && x43 && x33 && x35 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x55 && ~x41 && x43 && x33 && ~x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x55 && ~x41 && x43 && ~x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && ~x41 && ~x43 && x40 )
						begin
							y4 = 1'b1;	y10 = 1'b1;	y31 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s273;
						end
					else if( ~x55 && ~x41 && ~x43 && ~x40 && x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x55 && ~x41 && ~x43 && ~x40 && ~x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else nx_state = s214;
				s215 : if( x63 && x55 && x8 && x53 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x63 && x55 && x8 && ~x53 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x55 && x8 && ~x53 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x63 && x55 && ~x8 && x51 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x63 && x55 && ~x8 && ~x51 && x37 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x55 && ~x8 && ~x51 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x63 && ~x55 && x41 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x63 && ~x55 && ~x41 && x42 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( x63 && ~x55 && ~x41 && ~x42 && x43 && x39 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( x63 && ~x55 && ~x41 && ~x42 && x43 && ~x39 )
						begin
							y8 = 1'b1;	
							nx_state = s269;
						end
					else if( x63 && ~x55 && ~x41 && ~x42 && ~x43 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y16 = 1'b1;	y21 = 1'b1;	
							nx_state = s274;
						end
					else if( ~x63 && x40 && x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x63 && x40 && ~x37 && x9 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x63 && x40 && ~x37 && ~x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x63 && ~x40 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s204;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && ~x40 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x63 && ~x40 && ~x10 && ~x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else nx_state = s215;
				s216 : if( x7 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s217;
						end
					else if( ~x7 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else nx_state = s216;
				s217 : if( x55 && x29 && x50 )
						begin
							y8 = 1'b1;	
							nx_state = s269;
						end
					else if( x55 && x29 && ~x50 )
						nx_state = s217;
					else if( x55 && ~x29 && x58 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x55 && ~x29 && ~x58 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x55 && x11 && x6 && x40 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( ~x55 && x11 && x6 && ~x40 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s254;
						end
					else if( ~x55 && x11 && ~x6 )
						begin
							y13 = 1'b1;	y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s215;
						end
					else if( ~x55 && ~x11 && x39 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x55 && ~x11 && ~x39 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else nx_state = s217;
				s218 : if( x40 && x35 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x40 && ~x35 && x13 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( x40 && ~x35 && ~x13 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( ~x40 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x40 && ~x10 && x11 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x40 && ~x10 && ~x11 && x7 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x40 && ~x10 && ~x11 && ~x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else nx_state = s218;
				s219 : if( x7 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x7 && x64 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x7 && ~x64 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else nx_state = s219;
				s220 : if( x44 && x35 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( x44 && ~x35 && x13 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( x44 && ~x35 && ~x13 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s206;
						end
					else if( ~x44 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x44 && ~x10 && x11 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x44 && ~x10 && ~x11 && x7 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x44 && ~x10 && ~x11 && ~x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else nx_state = s220;
				s221 : if( x44 && x50 && x19 && x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x44 && x50 && x19 && ~x10 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( x44 && x50 && ~x19 )
						nx_state = s221;
					else if( x44 && ~x50 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x44 && x11 && x10 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x44 && x11 && ~x10 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x44 && x11 && ~x10 && ~x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s207;
						end
					else if( ~x44 && ~x11 && x10 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x44 && ~x11 && ~x10 && x12 )
						begin
							y4 = 1'b1;	y16 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	y29 = 1'b1;	
							nx_state = s205;
						end
					else if( ~x44 && ~x11 && ~x10 && ~x12 && x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x44 && ~x11 && ~x10 && ~x12 && ~x37 && x4 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x44 && ~x11 && ~x10 && ~x12 && ~x37 && ~x4 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else nx_state = s221;
				s222 : if( x44 && x53 && x47 )
						nx_state = s222;
					else if( x44 && x53 && ~x47 && x48 && x51 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( x44 && x53 && ~x47 && x48 && ~x51 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x44 && x53 && ~x47 && ~x48 && x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x44 && x53 && ~x47 && ~x48 && ~x34 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( x44 && ~x53 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x44 && x11 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x44 && ~x11 && x1 && x34 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x44 && ~x11 && x1 && ~x34 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x44 && ~x11 && x1 && ~x34 && ~x3 )
						nx_state = s222;
					else if( ~x44 && ~x11 && ~x1 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else nx_state = s222;
				s223 : if( 1'b1 )
						begin
							y11 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s223;
				s224 : if( x10 && x6 && x7 && x33 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( x10 && x6 && x7 && x33 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x10 && x6 && x7 && x33 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x10 && x6 && x7 && ~x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x10 && x6 && ~x7 && x39 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x10 && x6 && ~x7 && ~x39 && x33 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( x10 && x6 && ~x7 && ~x39 && x33 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x10 && x6 && ~x7 && ~x39 && x33 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x10 && x6 && ~x7 && ~x39 && ~x33 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( x10 && ~x6 && x2 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x10 && ~x6 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x10 && x11 && x5 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( ~x10 && x11 && ~x5 && x37 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x10 && x11 && ~x5 && ~x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x10 && ~x11 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s224;
				s225 : if( x26 && x28 && x62 && x3 && x5 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s246;
						end
					else if( x26 && x28 && x62 && x3 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( x26 && x28 && x62 && ~x3 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( x26 && x28 && ~x62 && x3 && x63 && x5 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s251;
						end
					else if( x26 && x28 && ~x62 && x3 && x63 && ~x5 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( x26 && x28 && ~x62 && x3 && ~x63 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s146;
						end
					else if( x26 && x28 && ~x62 && x3 && ~x63 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( x26 && x28 && ~x62 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( x26 && ~x28 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x26 && x27 && x62 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && x27 && ~x62 && x63 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x26 && x27 && ~x62 && ~x63 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x27 && x28 && x62 && x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( ~x26 && ~x27 && x28 && x62 && ~x5 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && ~x27 && x28 && ~x62 && x63 && x36 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x26 && ~x27 && x28 && ~x62 && x63 && ~x36 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && ~x27 && x28 && ~x62 && ~x63 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x26 && ~x27 && x28 && ~x62 && ~x63 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x27 && ~x28 && x62 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s247;
						end
					else if( ~x26 && ~x27 && ~x28 && x62 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else if( ~x26 && ~x27 && ~x28 && x62 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && ~x27 && ~x28 && x62 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && x63 && x36 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && x63 && x36 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && x63 && x36 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && x63 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && ~x63 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && ~x63 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && ~x63 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x62 && ~x63 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else nx_state = s225;
				s226 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( ~x26 && x27 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x3 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && ~x27 && x28 && ~x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s247;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 )
						begin
							y10 = 1'b1;	
							nx_state = s275;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s246;
						end
					else nx_state = s226;
				s227 : if( x26 && x21 )
						nx_state = s1;
					else if( x26 && ~x21 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x26 && x27 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x34 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && ~x27 && x28 && ~x34 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && x24 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s237;
						end
					else if( ~x26 && ~x27 && ~x28 && x19 && ~x24 )
						nx_state = s1;
					else if( ~x26 && ~x27 && ~x28 && ~x19 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s251;
						end
					else nx_state = s227;
				s228 : if( x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x26 && ~x28 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x26 && x27 && x35 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x26 && x27 && ~x35 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x2 && x24 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s251;
						end
					else if( ~x26 && ~x27 && x28 && x2 && ~x24 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && ~x27 && x28 && ~x2 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x26 && ~x27 && ~x28 && x49 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x26 && ~x27 && ~x28 && x49 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( ~x26 && ~x27 && ~x28 && x49 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x49 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else nx_state = s228;
				s229 : if( x28 && x26 && x6 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x28 && x26 && ~x6 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( x28 && x26 && ~x6 && ~x4 )
						nx_state = s1;
					else if( x28 && ~x26 && x27 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( x28 && ~x26 && ~x27 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s276;
						end
					else if( ~x28 && x26 )
						nx_state = s1;
					else if( ~x28 && ~x26 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else nx_state = s229;
				s230 : if( x26 && x28 && x3 && x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y15 = 1'b1;	
							nx_state = s146;
						end
					else if( x26 && x28 && x3 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( x26 && x28 && ~x3 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( x26 && ~x28 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x26 && x27 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x27 && x28 && x5 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x26 && ~x27 && x28 && ~x5 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x27 && ~x28 && x5 && x3 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x26 && ~x27 && ~x28 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else if( ~x26 && ~x27 && ~x28 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x26 && ~x27 && ~x28 && ~x5 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s230;
				s231 : if( x8 && x63 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x8 && ~x63 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x8 && x63 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s277;
						end
					else if( ~x8 && ~x63 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s231;
				s232 : if( x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x8 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s277;
						end
					else nx_state = s232;
				s233 : if( x37 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s277;
						end
					else if( ~x37 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else nx_state = s233;
				s234 : if( x64 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s52;
						end
					else if( x64 && ~x6 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x64 && x6 )
						begin
							y6 = 1'b1;	y7 = 1'b1;	y20 = 1'b1;	
							nx_state = s277;
						end
					else if( ~x64 && ~x6 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s58;
						end
					else nx_state = s234;
				s235 : if( x63 && x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x63 && x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x63 && x26 && x28 && ~x9 && ~x23 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x63 && x26 && ~x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x63 && ~x26 && x27 && x1 && x33 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x63 && ~x26 && x27 && x1 && ~x33 && x34 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x63 && ~x26 && x27 && x1 && ~x33 && ~x34 )
						nx_state = s235;
					else if( x63 && ~x26 && x27 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x63 && ~x26 && ~x27 && x1 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( x63 && ~x26 && ~x27 && x1 && x5 && ~x3 && x4 )
						begin
							y19 = 1'b1;	y26 = 1'b1;	y27 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s175;
						end
					else if( x63 && ~x26 && ~x27 && x1 && x5 && ~x3 && ~x4 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else if( x63 && ~x26 && ~x27 && x1 && ~x5 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x63 && ~x26 && ~x27 && ~x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x63 && ~x26 && ~x27 && ~x1 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && x26 && x28 && x9 && x64 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x63 && x26 && x28 && x9 && ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x63 && x26 && x28 && ~x9 && x23 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && x26 && x28 && ~x9 && ~x23 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && x26 && ~x28 && x64 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x63 && x26 && ~x28 && ~x64 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x63 && ~x26 && x27 && x64 && x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x63 && ~x26 && x27 && x64 && x1 && ~x2 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && ~x26 && x27 && x64 && x1 && ~x2 && ~x3 )
						nx_state = s235;
					else if( ~x63 && ~x26 && x27 && x64 && ~x1 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x63 && ~x26 && x27 && ~x64 && x36 && x32 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x63 && ~x26 && x27 && ~x64 && x36 && ~x32 && x3 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && ~x26 && x27 && ~x64 && x36 && ~x32 && ~x3 )
						nx_state = s235;
					else if( ~x63 && ~x26 && x27 && ~x64 && ~x36 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else if( ~x63 && ~x26 && ~x27 && x64 && x1 && x5 && x3 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s148;
						end
					else if( ~x63 && ~x26 && ~x27 && x64 && x1 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y14 = 1'b1;	
							nx_state = s150;
						end
					else if( ~x63 && ~x26 && ~x27 && x64 && x1 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x63 && ~x26 && ~x27 && x64 && x1 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && ~x26 && ~x27 && x64 && ~x1 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x63 && ~x26 && ~x27 && x64 && ~x1 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x64 && x36 && x5 && x3 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x64 && x36 && x5 && ~x3 && x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y13 = 1'b1;	y33 = 1'b1;	
							nx_state = s151;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x64 && x36 && x5 && ~x3 && ~x4 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y14 = 1'b1;	y30 = 1'b1;	
							nx_state = s147;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x64 && x36 && ~x5 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x64 && ~x36 && x2 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x63 && ~x26 && ~x27 && ~x64 && ~x36 && ~x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else nx_state = s235;
				s236 : if( x64 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x64 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s236;
				s237 : if( x25 )
						nx_state = s1;
					else if( ~x25 && x28 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x25 && ~x28 )
						nx_state = s1;
					else nx_state = s237;
				s238 : if( x62 && x15 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s55;
						end
					else if( x62 && ~x15 && x14 && x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s200;
						end
					else if( x62 && ~x15 && x14 && ~x13 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s56;
						end
					else if( x62 && ~x15 && ~x14 )
						begin
							y13 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x62 && x63 && x46 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s278;
						end
					else if( ~x62 && x63 && ~x46 && x44 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x62 && x63 && ~x46 && x44 && ~x11 && x6 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x62 && x63 && ~x46 && x44 && ~x11 && x6 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s195;
						end
					else if( ~x62 && x63 && ~x46 && x44 && ~x11 && ~x6 && x36 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x62 && x63 && ~x46 && x44 && ~x11 && ~x6 && ~x36 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s258;
						end
					else if( ~x62 && x63 && ~x46 && ~x44 && x14 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x62 && x63 && ~x46 && ~x44 && ~x14 && x9 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x62 && x63 && ~x46 && ~x44 && ~x14 && ~x9 && x37 && x33 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x62 && x63 && ~x46 && ~x44 && ~x14 && ~x9 && x37 && ~x33 )
						nx_state = s238;
					else if( ~x62 && x63 && ~x46 && ~x44 && ~x14 && ~x9 && ~x37 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x62 && x63 && ~x46 && ~x44 && ~x14 && ~x9 && ~x37 && ~x8 )
						nx_state = s238;
					else if( ~x62 && ~x63 && x14 && x13 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( ~x62 && ~x63 && x14 && ~x13 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s281;
						end
					else if( ~x62 && ~x63 && ~x14 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else nx_state = s238;
				s239 : if( x14 && x13 )
						begin
							y19 = 1'b1;	y34 = 1'b1;	y35 = 1'b1;	
							nx_state = s265;
						end
					else if( x14 && ~x13 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s281;
						end
					else if( ~x14 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else nx_state = s239;
				s240 : if( x46 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s115;
						end
					else if( ~x46 && x14 && x44 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s223;
						end
					else if( ~x46 && x14 && ~x44 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x46 && ~x14 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else nx_state = s240;
				s241 : if( x15 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y9 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x15 && x14 && x64 && x13 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( ~x15 && x14 && x64 && ~x13 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s116;
						end
					else if( ~x15 && x14 && ~x64 && x13 )
						begin
							y19 = 1'b1;	y34 = 1'b1;	y35 = 1'b1;	
							nx_state = s223;
						end
					else if( ~x15 && x14 && ~x64 && ~x13 )
						begin
							y7 = 1'b1;	y28 = 1'b1;	y32 = 1'b1;	
							nx_state = s176;
						end
					else if( ~x15 && ~x14 && x64 )
						begin
							y11 = 1'b1;	y14 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x15 && ~x14 && ~x64 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s196;
						end
					else nx_state = s241;
				s242 : if( x62 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s283;
						end
					else if( ~x62 && x64 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s199;
						end
					else if( ~x62 && ~x64 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else nx_state = s242;
				s243 : if( x63 && x41 && x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x41 && ~x12 && x32 && x2 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x63 && x41 && ~x12 && x32 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && x41 && ~x12 && ~x32 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x63 && ~x41 && x42 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s254;
						end
					else if( x63 && ~x41 && x42 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x63 && ~x41 && x42 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x63 && ~x41 && ~x42 && x43 && x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x63 && ~x41 && ~x42 && x43 && ~x34 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( x63 && ~x41 && ~x42 && ~x43 && x6 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x63 && ~x41 && ~x42 && ~x43 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && x10 && x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && x10 && ~x12 && x1 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x63 && x10 && ~x12 && x1 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && x10 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x63 && ~x10 && x11 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s204;
						end
					else if( ~x63 && ~x10 && x11 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x63 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x63 && ~x10 && ~x11 && x12 && x3 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x63 && ~x10 && ~x11 && x12 && ~x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x63 && ~x10 && ~x11 && ~x12 && x6 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x63 && ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else nx_state = s243;
				s244 : if( x10 && x12 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( x10 && ~x12 && x1 && x34 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x10 && ~x12 && x1 && ~x34 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( x10 && ~x12 && ~x1 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x10 && x11 && x37 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y22 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s209;
						end
					else if( ~x10 && x11 && ~x37 && x41 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x10 && x11 && ~x37 && ~x41 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x10 && ~x11 && x12 && x41 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x10 && ~x11 && x12 && ~x41 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x10 && ~x11 && ~x12 && x6 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x10 && ~x11 && ~x12 && ~x6 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else nx_state = s244;
				s245 : if( x26 && x28 && x23 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else if( x26 && x28 && ~x23 && x25 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( x26 && x28 && ~x23 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( x26 && ~x28 && x3 && x25 )
						nx_state = s245;
					else if( x26 && ~x28 && x3 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( x26 && ~x28 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( x26 && ~x28 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && ~x28 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && x27 && x4 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( ~x26 && x27 && ~x4 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && x11 )
						nx_state = s1;
					else if( ~x26 && ~x27 && x28 && ~x11 )
						begin
							y13 = 1'b1;	
							nx_state = s49;
						end
					else if( ~x26 && ~x27 && ~x28 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else nx_state = s245;
				s246 : if( x26 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s284;
						end
					else if( ~x26 && x28 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s285;
						end
					else if( ~x26 && x28 && ~x5 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s286;
						end
					else if( ~x26 && ~x28 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else nx_state = s246;
				s247 : if( x28 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else if( x28 && ~x7 )
						begin
							y10 = 1'b1;	
							nx_state = s275;
						end
					else if( ~x28 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else nx_state = s247;
				s248 : if( x26 && x8 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x8 && ~x1 && x14 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && x8 && ~x1 && ~x14 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( x26 && ~x8 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s246;
						end
					else if( ~x26 && x28 )
						nx_state = s1;
					else if( ~x26 && ~x28 && x6 && x7 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s247;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else if( ~x26 && ~x28 && x6 && x7 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && ~x28 && x6 && x7 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s275;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s247;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && ~x28 && x6 && ~x7 && ~x8 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && ~x28 && ~x6 && x24 )
						begin
							y10 = 1'b1;	
							nx_state = s275;
						end
					else if( ~x26 && ~x28 && ~x6 && ~x24 )
						nx_state = s1;
					else nx_state = s248;
				s249 : if( x15 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s287;
						end
					else if( ~x15 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( ~x15 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s287;
						end
					else nx_state = s249;
				s250 : if( x15 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s287;
						end
					else if( ~x15 && x2 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( ~x15 && x2 && ~x3 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s290;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s249;
						end
					else if( ~x15 && ~x2 )
						nx_state = s250;
					else nx_state = s250;
				s251 : if( x26 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else if( ~x26 && x28 && x36 )
						begin
							y9 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							nx_state = s285;
						end
					else if( ~x26 && x28 && ~x36 )
						begin
							y19 = 1'b1;	y20 = 1'b1;	y22 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x26 && ~x28 )
						begin
							y20 = 1'b1;	y23 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s227;
						end
					else nx_state = s251;
				s252 : if( x55 && x37 && x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x55 && x37 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( x55 && ~x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x55 && x32 && x33 && x10 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( ~x55 && x32 && x33 && x10 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x55 && x32 && x33 && x10 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x55 && x32 && x33 && ~x10 )
						nx_state = s252;
					else if( ~x55 && x32 && ~x33 && x10 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x55 && x32 && ~x33 && ~x10 )
						nx_state = s252;
					else if( ~x55 && ~x32 && x10 && x33 && x9 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s272;
						end
					else if( ~x55 && ~x32 && x10 && x33 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x55 && ~x32 && x10 && ~x33 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s210;
						end
					else if( ~x55 && ~x32 && ~x10 )
						nx_state = s252;
					else nx_state = s252;
				s253 : if( x38 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x38 )
						nx_state = s253;
					else nx_state = s253;
				s254 : if( x39 && x1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s217;
						end
					else if( x39 && ~x1 && x4 )
						begin
							y4 = 1'b1;	y10 = 1'b1;	y31 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s273;
						end
					else if( x39 && ~x1 && ~x4 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s214;
						end
					else if( ~x39 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else nx_state = s254;
				s255 : if( x64 && x40 && x37 && x28 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( x64 && x40 && x37 && ~x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && x40 && ~x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x64 && ~x40 && x2 && x10 && x1 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x64 && ~x40 && x2 && x10 && x1 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x64 && ~x40 && x2 && x10 && x1 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x64 && ~x40 && x2 && x10 && ~x1 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( x64 && ~x40 && x2 && x10 && ~x1 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x64 && ~x40 && x2 && ~x10 )
						nx_state = s255;
					else if( x64 && ~x40 && ~x2 && x10 && x1 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x64 && ~x40 && ~x2 && x10 && ~x1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s218;
						end
					else if( x64 && ~x40 && ~x2 && ~x10 )
						nx_state = s255;
					else if( ~x64 && x44 && x1 && x28 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x64 && x44 && x1 && ~x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && x44 && ~x1 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( ~x64 && ~x44 && x10 && x37 && x2 && x41 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x64 && ~x44 && x10 && x37 && x2 && ~x41 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x64 && ~x44 && x10 && x37 && x2 && ~x41 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x64 && ~x44 && x10 && x37 && ~x2 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( ~x64 && ~x44 && x10 && ~x37 && x2 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s266;
						end
					else if( ~x64 && ~x44 && x10 && ~x37 && x2 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x64 && ~x44 && x10 && ~x37 && ~x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s220;
						end
					else if( ~x64 && ~x44 && ~x10 )
						nx_state = s255;
					else nx_state = s255;
				s256 : if( x15 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s291;
						end
					else if( ~x15 && x2 && x3 && x64 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( ~x15 && x2 && x3 && ~x64 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x15 && x2 && ~x3 && x4 && x64 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x15 && x2 && ~x3 && x4 && ~x64 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s263;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s191;
						end
					else if( ~x15 && ~x2 )
						nx_state = s256;
					else nx_state = s256;
				s257 : if( x15 && x63 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s278;
						end
					else if( x15 && ~x63 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x63 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x15 && x63 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s294;
						end
					else if( ~x15 && ~x63 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x15 && ~x63 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s291;
						end
					else nx_state = s257;
				s258 : if( x46 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s294;
						end
					else if( ~x46 && x2 && x34 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( ~x46 && x2 && ~x34 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x46 && x2 && ~x34 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s195;
						end
					else if( ~x46 && ~x2 )
						nx_state = s258;
					else nx_state = s258;
				s259 : if( x63 && x15 && x13 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s295;
						end
					else if( x63 && x15 && ~x13 )
						begin
							y8 = 1'b1;	
							nx_state = s296;
						end
					else if( x63 && ~x15 && x12 )
						begin
							y8 = 1'b1;	
							nx_state = s296;
						end
					else if( x63 && ~x15 && ~x12 )
						nx_state = s259;
					else if( ~x63 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else nx_state = s259;
				s260 : if( x63 && x46 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( x63 && ~x46 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( x63 && ~x46 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s294;
						end
					else if( ~x63 && x15 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && ~x15 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x63 && ~x15 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s291;
						end
					else nx_state = s260;
				s261 : if( x15 && x13 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else if( x15 && ~x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s297;
						end
					else if( ~x15 && x12 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s297;
						end
					else if( ~x15 && ~x12 )
						nx_state = s261;
					else nx_state = s261;
				s262 : if( x15 && x13 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else if( x15 && ~x13 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s298;
						end
					else if( ~x15 && x12 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s298;
						end
					else if( ~x15 && ~x12 )
						nx_state = s262;
					else nx_state = s262;
				s263 : if( x15 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x15 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x15 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s291;
						end
					else nx_state = s263;
				s264 : if( 1'b1 )
						begin
							y13 = 1'b1;	y14 = 1'b1;	y26 = 1'b1;	
							nx_state = s299;
						end
					else nx_state = s264;
				s265 : if( 1'b1 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else nx_state = s265;
				s266 : if( x64 && x40 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x64 && x40 && ~x3 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s201;
						end
					else if( x64 && x40 && ~x3 && ~x2 && x28 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( x64 && x40 && ~x3 && ~x2 && ~x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( x64 && ~x40 && x10 && x5 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x64 && ~x40 && x10 && x5 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x64 && ~x40 && x10 && x5 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x64 && ~x40 && x10 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x64 && ~x40 && ~x10 && x11 && x1 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y18 = 1'b1;	
							y22 = 1'b1;	
							nx_state = s204;
						end
					else if( x64 && ~x40 && ~x10 && x11 && ~x1 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( x64 && ~x40 && ~x10 && x11 && ~x1 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( x64 && ~x40 && ~x10 && ~x11 )
						nx_state = s266;
					else if( ~x64 && x44 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x64 && x44 && ~x3 && x34 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s207;
						end
					else if( ~x64 && x44 && ~x3 && ~x34 && x28 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s181;
						end
					else if( ~x64 && x44 && ~x3 && ~x34 && ~x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x64 && ~x44 && x10 && x5 && x41 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( ~x64 && ~x44 && x10 && x5 && ~x41 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x64 && ~x44 && x10 && x5 && ~x41 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( ~x64 && ~x44 && x10 && ~x5 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x64 && ~x44 && ~x10 && x37 && x11 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y22 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s209;
						end
					else if( ~x64 && ~x44 && ~x10 && x37 && ~x11 )
						nx_state = s266;
					else if( ~x64 && ~x44 && ~x10 && ~x37 && x41 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x37 && x41 && ~x11 )
						nx_state = s266;
					else if( ~x64 && ~x44 && ~x10 && ~x37 && ~x41 && x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x64 && ~x44 && ~x10 && ~x37 && ~x41 && ~x11 )
						nx_state = s266;
					else nx_state = s266;
				s267 : if( x10 && x6 && x7 && x2 && x64 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x10 && x6 && x7 && x2 && x64 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x10 && x6 && x7 && x2 && x64 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x10 && x6 && x7 && x2 && ~x64 && x41 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x10 && x6 && x7 && x2 && ~x64 && ~x41 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x10 && x6 && x7 && x2 && ~x64 && ~x41 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( x10 && x6 && x7 && ~x2 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x10 && x6 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x64 && x3 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x64 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && x64 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x64 && x41 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s203;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x64 && ~x41 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( x10 && x6 && ~x7 && ~x8 && x2 && ~x64 && ~x41 && ~x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s244;
						end
					else if( x10 && x6 && ~x7 && ~x8 && ~x2 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s202;
						end
					else if( x10 && ~x6 && x64 && x2 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x10 && ~x6 && x64 && ~x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( x10 && ~x6 && ~x64 && x34 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( x10 && ~x6 && ~x64 && ~x34 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( ~x10 && x11 && x5 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x10 && x11 && ~x5 && x6 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s180;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 && x64 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x10 && x11 && ~x5 && ~x6 && ~x64 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x10 && ~x11 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x10 && ~x11 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else nx_state = s267;
				s268 : if( x44 && x1 && x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x44 && x1 && ~x37 && x9 )
						nx_state = s268;
					else if( x44 && x1 && ~x37 && ~x9 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s208;
						end
					else if( x44 && ~x1 && x9 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x44 && ~x1 && ~x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y15 = 1'b1;	
							y16 = 1'b1;	
							nx_state = s267;
						end
					else if( ~x44 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x44 && ~x10 && x11 && x37 )
						begin
							y3 = 1'b1;	y13 = 1'b1;	y22 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s209;
						end
					else if( ~x44 && ~x10 && x11 && ~x37 && x41 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s221;
						end
					else if( ~x44 && ~x10 && x11 && ~x37 && ~x41 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x44 && ~x10 && ~x11 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else nx_state = s268;
				s269 : if( x55 && x48 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( x55 && ~x48 && x57 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x55 && ~x48 && ~x57 )
						nx_state = s269;
					else if( ~x55 && x37 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s141;
						end
					else if( ~x55 && ~x37 )
						begin
							y8 = 1'b1;	
							nx_state = s269;
						end
					else nx_state = s269;
				s270 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x13 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( ~x15 && x13 && ~x11 && x6 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s290;
						end
					else if( ~x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s249;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s287;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y10 = 1'b1;	
							nx_state = s301;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y10 = 1'b1;	
							nx_state = s301;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && x2 )
						begin
							y10 = 1'b1;	
							nx_state = s301;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x2 )
						nx_state = s270;
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x8 )
						begin
							y10 = 1'b1;	
							nx_state = s301;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x8 )
						nx_state = s270;
					else nx_state = s270;
				s271 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( ~x15 && ~x11 && x10 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s302;
						end
					else if( ~x15 && ~x11 && ~x10 )
						nx_state = s271;
					else nx_state = s271;
				s272 : if( x55 && x34 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( x55 && ~x34 && x2 )
						begin
							y8 = 1'b1;	
							nx_state = s269;
						end
					else if( x55 && ~x34 && ~x2 && x28 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s178;
						end
					else if( x55 && ~x34 && ~x2 && ~x28 )
						begin
							y4 = 1'b1;	y5 = 1'b1;	y7 = 1'b1;	
							y31 = 1'b1;	y35 = 1'b1;	
							nx_state = s177;
						end
					else if( ~x55 && x41 && x36 && x3 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( ~x55 && x41 && x36 && ~x3 && x4 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else if( ~x55 && x41 && x36 && ~x3 && ~x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s243;
						end
					else if( ~x55 && x41 && ~x36 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x55 && ~x41 && x11 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s254;
						end
					else if( ~x55 && ~x41 && x11 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && ~x41 && x11 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x55 && ~x41 && ~x11 )
						nx_state = s272;
					else nx_state = s272;
				s273 : if( x55 && x50 )
						begin
							y8 = 1'b1;	
							nx_state = s269;
						end
					else if( x55 && ~x50 )
						nx_state = s273;
					else if( ~x55 && x42 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s272;
						end
					else if( ~x55 && ~x42 && x9 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s272;
						end
					else if( ~x55 && ~x42 && ~x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s253;
						end
					else nx_state = s273;
				s274 : if( x55 && x40 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x55 && ~x40 && x37 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s213;
						end
					else if( x55 && ~x40 && ~x37 )
						begin
							y11 = 1'b1;	y29 = 1'b1;	
							nx_state = s224;
						end
					else if( ~x55 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && ~x10 && x42 && x32 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							y17 = 1'b1;	y21 = 1'b1;	
							nx_state = s254;
						end
					else if( ~x55 && ~x10 && x42 && ~x32 && x3 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s211;
						end
					else if( ~x55 && ~x10 && x42 && ~x32 && ~x3 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else if( ~x55 && ~x10 && ~x42 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s179;
						end
					else nx_state = s274;
				s275 : if( x25 )
						nx_state = s1;
					else if( ~x25 && x28 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( ~x25 && ~x28 )
						nx_state = s1;
					else nx_state = s275;
				s276 : if( x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s168;
						end
					else if( ~x6 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s286;
						end
					else nx_state = s276;
				s277 : if( x63 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x63 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s277;
				s278 : if( x28 && x26 && x32 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x28 && x26 && ~x32 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x28 && x26 && ~x32 && ~x2 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x28 && x26 && ~x32 && ~x2 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( x28 && ~x26 && x27 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else if( x28 && ~x26 && ~x27 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x28 && ~x26 && ~x27 && ~x1 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x28 && ~x26 && ~x27 && ~x1 && ~x4 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x28 && x26 && x32 && x33 && x34 && x25 )
						nx_state = s278;
					else if( ~x28 && x26 && x32 && x33 && x34 && ~x25 )
						begin
							y3 = 1'b1;	y5 = 1'b1;	y30 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s228;
						end
					else if( ~x28 && x26 && x32 && x33 && ~x34 && x35 && x36 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( ~x28 && x26 && x32 && x33 && ~x34 && x35 && ~x36 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x28 && x26 && x32 && x33 && ~x34 && ~x35 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x28 && x26 && x32 && ~x33 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else if( ~x28 && x26 && ~x32 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x28 && ~x26 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else nx_state = s278;
				s279 : if( x15 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x15 && x63 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s278;
						end
					else if( ~x15 && ~x63 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else nx_state = s279;
				s280 : if( x15 && x63 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s238;
						end
					else if( x15 && ~x63 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s281;
						end
					else if( ~x15 && x6 && x63 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s199;
						end
					else if( ~x15 && x6 && ~x63 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s303;
						end
					else if( ~x15 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s304;
						end
					else nx_state = s280;
				s281 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x13 && x11 && x64 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x15 && x13 && x11 && ~x64 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x15 && x13 && ~x11 && x6 && x4 && x64 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x15 && x13 && ~x11 && x6 && x4 && ~x64 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s263;
						end
					else if( ~x15 && x13 && ~x11 && x6 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s191;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && x5 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x15 && x13 && ~x11 && ~x6 && ~x5 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	
							nx_state = s256;
						end
					else if( ~x15 && ~x13 && x14 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x15 && ~x13 && x14 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s306;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s306;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && x64 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && x64 && ~x2 )
						nx_state = s281;
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x64 && x33 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s306;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x6 && ~x64 && ~x33 )
						nx_state = s281;
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x64 && x8 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && x64 && ~x8 )
						nx_state = s281;
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x64 && x8 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s306;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x6 && ~x64 && ~x8 )
						nx_state = s281;
					else nx_state = s281;
				s282 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x11 && x64 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x15 && x11 && ~x64 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x15 && ~x11 && x10 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s307;
						end
					else if( ~x15 && ~x11 && ~x10 )
						nx_state = s282;
					else nx_state = s282;
				s283 : if( 1'b1 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y6 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s265;
						end
					else nx_state = s283;
				s284 : if( x26 && x28 && x9 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && x28 && ~x9 && x23 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( x26 && x28 && ~x9 && ~x23 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( x26 && ~x28 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && x1 && x27 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && x1 && x27 && ~x2 && x3 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( ~x26 && x1 && x27 && ~x2 && ~x3 )
						nx_state = s284;
					else if( ~x26 && x1 && ~x27 && x5 && x3 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s247;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && x4 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else if( ~x26 && x1 && ~x27 && x5 && ~x3 && ~x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s226;
						end
					else if( ~x26 && x1 && ~x27 && ~x5 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && ~x1 && x27 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( ~x26 && ~x1 && ~x27 && x2 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && ~x1 && ~x27 && ~x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else nx_state = s284;
				s285 : if( 1'b1 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else nx_state = s285;
				s286 : if( x9 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( ~x9 )
						begin
							y2 = 1'b1;	
							nx_state = s248;
						end
					else nx_state = s286;
				s287 : if( x15 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s308;
						end
					else if( ~x15 && x2 && x3 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( ~x15 && x2 && ~x3 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s290;
						end
					else if( ~x15 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s249;
						end
					else if( ~x15 && ~x2 )
						nx_state = s287;
					else nx_state = s287;
				s288 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s309;
						end
					else if( ~x15 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s308;
						end
					else nx_state = s288;
				s289 : if( x15 && x13 )
						begin
							y13 = 1'b1;	
							nx_state = s271;
						end
					else if( x15 && ~x13 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s310;
						end
					else if( ~x15 && x12 )
						begin
							y7 = 1'b1;	y11 = 1'b1;	y13 = 1'b1;	
							nx_state = s310;
						end
					else if( ~x15 && ~x12 )
						nx_state = s289;
					else nx_state = s289;
				s290 : if( x15 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( ~x15 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s309;
						end
					else if( ~x15 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s308;
						end
					else nx_state = s290;
				s291 : if( x15 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x15 && x8 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else if( ~x15 && ~x8 && x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s291;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && x64 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && x64 && ~x11 )
						nx_state = s291;
					else if( ~x15 && ~x8 && ~x9 && ~x10 && ~x64 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && ~x64 && ~x11 )
						nx_state = s291;
					else nx_state = s291;
				s292 : if( x26 && x28 && x62 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x28 && x62 && ~x1 && x2 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( x26 && x28 && x62 && ~x1 && ~x2 && x25 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( x26 && x28 && x62 && ~x1 && ~x2 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( x26 && x28 && ~x62 && x64 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && x28 && ~x62 && x64 && ~x1 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && ~x62 && x64 && ~x1 && ~x2 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && ~x62 && x64 && ~x1 && ~x2 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && x28 && ~x62 && ~x64 && x37 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( x26 && x28 && ~x62 && ~x64 && ~x37 && x2 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && ~x62 && ~x64 && ~x37 && ~x2 && x25 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && x28 && ~x62 && ~x64 && ~x37 && ~x2 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x28 && x62 && x1 && x2 && x3 && x25 )
						nx_state = s292;
					else if( x26 && ~x28 && x62 && x1 && x2 && x3 && ~x25 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( x26 && ~x28 && x62 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s229;
						end
					else if( x26 && ~x28 && x62 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && ~x28 && x62 && x1 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && ~x28 && x62 && x1 && ~x2 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s284;
						end
					else if( x26 && ~x28 && x62 && ~x1 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( x26 && ~x28 && ~x62 && x64 && x1 && x2 && x3 && x25 )
						nx_state = s292;
					else if( x26 && ~x28 && ~x62 && x64 && x1 && x2 && x3 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x28 && ~x62 && x64 && x1 && x2 && ~x3 && x4 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( x26 && ~x28 && ~x62 && x64 && x1 && x2 && ~x3 && x4 && ~x5 )
						begin
							y1 = 1'b1;	
							nx_state = s142;
						end
					else if( x26 && ~x28 && ~x62 && x64 && x1 && x2 && ~x3 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( x26 && ~x28 && ~x62 && x64 && x1 && ~x2 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else if( x26 && ~x28 && ~x62 && x64 && ~x1 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( x26 && ~x28 && ~x62 && ~x64 && x37 && x32 && x3 && x25 )
						nx_state = s292;
					else if( x26 && ~x28 && ~x62 && ~x64 && x37 && x32 && x3 && ~x25 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( x26 && ~x28 && ~x62 && ~x64 && x37 && x32 && ~x3 && x4 && x5 )
						begin
							y11 = 1'b1;	y18 = 1'b1;	
							nx_state = s145;
						end
					else if( x26 && ~x28 && ~x62 && ~x64 && x37 && x32 && ~x3 && x4 && ~x5 )
						begin
							y7 = 1'b1;	y13 = 1'b1;	y28 = 1'b1;	
							nx_state = s143;
						end
					else if( x26 && ~x28 && ~x62 && ~x64 && x37 && x32 && ~x3 && ~x4 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( x26 && ~x28 && ~x62 && ~x64 && x37 && ~x32 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else if( x26 && ~x28 && ~x62 && ~x64 && ~x37 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x26 && x27 && x62 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s284;
						end
					else if( ~x26 && x27 && ~x62 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else if( ~x26 && ~x27 && x62 && x28 && x1 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && ~x27 && x62 && x28 && ~x1 && x4 )
						begin
							y1 = 1'b1;	y7 = 1'b1;	
							nx_state = s245;
						end
					else if( ~x26 && ~x27 && x62 && x28 && ~x1 && ~x4 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s167;
						end
					else if( ~x26 && ~x27 && x62 && ~x28 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	
							nx_state = s284;
						end
					else if( ~x26 && ~x27 && ~x62 && x28 && x1 && x64 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s225;
						end
					else if( ~x26 && ~x27 && ~x62 && x28 && x1 && ~x64 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y26 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x26 && ~x27 && ~x62 && x28 && ~x1 && x4 )
						begin
							y16 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s144;
						end
					else if( ~x26 && ~x27 && ~x62 && x28 && ~x1 && ~x4 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y5 = 1'b1;	
							nx_state = s27;
						end
					else if( ~x26 && ~x27 && ~x62 && ~x28 )
						begin
							y11 = 1'b1;	
							nx_state = s235;
						end
					else nx_state = s292;
				s293 : if( x63 && x46 && x34 && x42 && x2 )
						begin
							y2 = 1'b1;	y8 = 1'b1;	y12 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s311;
						end
					else if( x63 && x46 && x34 && x42 && ~x2 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && x3 && x35 && x43 && x44 && x2 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s307;
						end
					else if( x63 && x46 && x34 && ~x42 && x3 && x35 && x43 && x44 && ~x2 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && x3 && x35 && x43 && ~x44 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && x3 && x35 && ~x43 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && x3 && ~x35 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && ~x3 && x35 && x43 && x44 && x2 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s312;
						end
					else if( x63 && x46 && x34 && ~x42 && ~x3 && x35 && x43 && x44 && ~x2 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && ~x3 && x35 && x43 && ~x44 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && ~x3 && x35 && ~x43 )
						nx_state = s293;
					else if( x63 && x46 && x34 && ~x42 && ~x3 && ~x35 )
						nx_state = s293;
					else if( x63 && x46 && ~x34 && x33 && x4 && x11 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s313;
						end
					else if( x63 && x46 && ~x34 && x33 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s312;
						end
					else if( x63 && x46 && ~x34 && x33 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( x63 && x46 && ~x34 && x33 && x4 && ~x11 && x12 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s304;
						end
					else if( x63 && x46 && ~x34 && x33 && x4 && ~x11 && ~x12 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && x5 && x37 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && x7 && x39 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && x7 && ~x39 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && ~x7 && x8 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && x5 && ~x37 && ~x7 && ~x8 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && x38 && x40 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && x38 && ~x40 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && ~x38 && x9 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && x6 && ~x38 && ~x9 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && x7 && x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && x7 && ~x10 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && ~x7 && x41 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( x63 && x46 && ~x34 && x33 && ~x4 && ~x5 && ~x6 && ~x7 && ~x41 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && x46 && ~x34 && ~x33 )
						nx_state = s293;
					else if( x63 && ~x46 && x38 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s295;
						end
					else if( x63 && ~x46 && ~x38 && x40 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s295;
						end
					else if( x63 && ~x46 && ~x38 && ~x40 && x10 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( x63 && ~x46 && ~x38 && ~x40 && x10 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s294;
						end
					else if( x63 && ~x46 && ~x38 && ~x40 && ~x10 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( x63 && ~x46 && ~x38 && ~x40 && ~x10 && ~x42 )
						nx_state = s293;
					else if( ~x63 && x15 && x3 && x11 && x64 && x2 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s242;
						end
					else if( ~x63 && x15 && x3 && x11 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && x3 && x11 && ~x64 && x2 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x63 && x15 && x3 && x11 && ~x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && x3 && ~x11 && x4 && x12 && x13 && x2 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s307;
						end
					else if( ~x63 && x15 && x3 && ~x11 && x4 && x12 && x13 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && x3 && ~x11 && x4 && x12 && ~x13 )
						nx_state = s293;
					else if( ~x63 && x15 && x3 && ~x11 && x4 && ~x12 )
						nx_state = s293;
					else if( ~x63 && x15 && x3 && ~x11 && ~x4 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && x11 && x64 && x2 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s199;
						end
					else if( ~x63 && x15 && ~x3 && x4 && x11 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && x11 && ~x64 && x33 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s199;
						end
					else if( ~x63 && x15 && ~x3 && x4 && x11 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x64 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s314;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x64 && x33 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s314;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && x14 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x64 && x2 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x64 && x33 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && x64 && x2 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s304;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x64 && x33 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s315;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && x12 && ~x13 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && ~x12 && x64 && x2 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && ~x12 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && ~x12 && ~x64 && x33 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s306;
						end
					else if( ~x63 && x15 && ~x3 && x4 && ~x11 && ~x12 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && x6 && x64 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && x6 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && x6 && ~x64 && x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && x6 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x64 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x64 && x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && x8 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x64 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x64 && x33 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && x7 && ~x8 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x64 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x64 && x33 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && x8 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x64 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x64 && x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && x5 && ~x6 && ~x7 && ~x8 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x64 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x64 && x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && x9 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x64 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x64 && x33 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && x7 && ~x9 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x64 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x64 && x33 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && x9 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x64 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x64 && x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && x6 && ~x7 && ~x9 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x64 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x64 && x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && x10 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x64 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x64 && x33 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && x7 && ~x10 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x64 && x2 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x64 && x33 )
						begin
							y15 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && x10 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x64 && x2 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && x64 && ~x2 )
						nx_state = s293;
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x64 && x33 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && x15 && ~x3 && ~x4 && ~x5 && ~x6 && ~x7 && ~x10 && ~x64 && ~x33 )
						nx_state = s293;
					else if( ~x63 && ~x15 && x7 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else if( ~x63 && ~x15 && ~x7 && x9 )
						begin
							y2 = 1'b1;	y18 = 1'b1;	y25 = 1'b1;	
							y26 = 1'b1;	
							nx_state = s282;
						end
					else if( ~x63 && ~x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x63 && ~x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y31 = 1'b1;	
							nx_state = s291;
						end
					else if( ~x63 && ~x15 && ~x7 && ~x9 && ~x10 && x64 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x63 && ~x15 && ~x7 && ~x9 && ~x10 && x64 && ~x11 )
						nx_state = s293;
					else if( ~x63 && ~x15 && ~x7 && ~x9 && ~x10 && ~x64 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y28 = 1'b1;	
							y33 = 1'b1;	
							nx_state = s305;
						end
					else if( ~x63 && ~x15 && ~x7 && ~x9 && ~x10 && ~x64 && ~x11 )
						nx_state = s293;
					else nx_state = s293;
				s294 : if( x15 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x15 && x39 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s295;
						end
					else if( ~x15 && ~x39 && x40 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s295;
						end
					else if( ~x15 && ~x39 && ~x40 && x10 && x37 )
						begin
							y9 = 1'b1;	y10 = 1'b1;	
							nx_state = s293;
						end
					else if( ~x15 && ~x39 && ~x40 && x10 && ~x37 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	y31 = 1'b1;	
							y36 = 1'b1;	
							nx_state = s294;
						end
					else if( ~x15 && ~x39 && ~x40 && ~x10 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x15 && ~x39 && ~x40 && ~x10 && ~x42 )
						nx_state = s294;
					else nx_state = s294;
				s295 : if( x15 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s278;
						end
					else if( ~x15 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y14 = 1'b1;	
							y28 = 1'b1;	
							nx_state = s279;
						end
					else if( ~x15 && ~x42 && x41 )
						begin
							y2 = 1'b1;	y20 = 1'b1;	y25 = 1'b1;	
							nx_state = s307;
						end
					else if( ~x15 && ~x42 && ~x41 )
						nx_state = s295;
					else nx_state = s295;
				s296 : if( x46 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s278;
						end
					else if( ~x46 && x44 && x35 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x46 && x44 && ~x35 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y27 = 1'b1;	
							y32 = 1'b1;	
							nx_state = s195;
						end
					else if( ~x46 && ~x44 && x14 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( ~x46 && ~x44 && ~x14 && x40 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x40 && x38 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x40 && ~x38 && x39 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( ~x46 && ~x44 && ~x14 && ~x40 && ~x38 && ~x39 )
						nx_state = s296;
					else nx_state = s296;
				s297 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x13 && x4 )
						begin
							y11 = 1'b1;	y23 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x15 && x13 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s191;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s297;
					else nx_state = s297;
				s298 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x13 && x4 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s263;
						end
					else if( ~x15 && x13 && ~x4 )
						begin
							y2 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							y27 = 1'b1;	
							nx_state = s191;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s298;
					else nx_state = s298;
				s299 : if( x45 && x13 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s316;
						end
					else if( x45 && ~x13 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s238;
						end
					else if( ~x45 )
						begin
							y9 = 1'b1;	y18 = 1'b1;	y27 = 1'b1;	
							nx_state = s295;
						end
					else nx_state = s299;
				s300 : if( x15 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s290;
						end
					else if( ~x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else nx_state = s300;
				s301 : if( x15 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s270;
						end
					else if( ~x15 && x6 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s317;
						end
					else if( ~x15 && ~x6 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s318;
						end
					else nx_state = s301;
				s302 : if( x12 && x15 && x13 && x3 )
						begin
							y13 = 1'b1;	
							nx_state = s319;
						end
					else if( x12 && x15 && x13 && ~x3 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s319;
						end
					else if( x12 && x15 && x13 && ~x3 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( x12 && x15 && ~x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s318;
						end
					else if( x12 && ~x15 )
						begin
							y10 = 1'b1;	
							nx_state = s301;
						end
					else if( ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s301;
						end
					else nx_state = s302;
				s303 : if( x62 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s212;
						end
					else if( ~x62 && x15 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s153;
						end
					else if( ~x62 && ~x15 && x12 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s281;
						end
					else if( ~x62 && ~x15 && ~x12 )
						nx_state = s303;
					else nx_state = s303;
				s304 : if( x63 && x15 && x45 )
						begin
							y9 = 1'b1;	y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s199;
						end
					else if( x63 && x15 && ~x45 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( x63 && ~x15 && x43 )
						begin
							y12 = 1'b1;	y14 = 1'b1;	
							nx_state = s238;
						end
					else if( x63 && ~x15 && ~x43 )
						nx_state = s304;
					else if( ~x63 && x15 && x14 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s303;
						end
					else if( ~x63 && x15 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( ~x63 && ~x15 && x12 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s281;
						end
					else if( ~x63 && ~x15 && ~x12 )
						nx_state = s304;
					else nx_state = s304;
				s305 : if( x15 )
						begin
							y23 = 1'b1;	y30 = 1'b1;	
							nx_state = s263;
						end
					else if( ~x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else nx_state = s305;
				s306 : if( x15 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s281;
						end
					else if( ~x15 && x6 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s303;
						end
					else if( ~x15 && ~x6 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s315;
						end
					else nx_state = s306;
				s307 : if( x12 && x63 && x46 && x13 && x3 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s312;
						end
					else if( x12 && x63 && x46 && x13 && ~x3 && x14 )
						begin
							y15 = 1'b1;	y18 = 1'b1;	
							nx_state = s312;
						end
					else if( x12 && x63 && x46 && x13 && ~x3 && ~x14 )
						begin
							y17 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s259;
						end
					else if( x12 && x63 && x46 && ~x13 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s304;
						end
					else if( x12 && x63 && ~x46 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( x12 && ~x63 && x15 && x13 && x3 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s314;
						end
					else if( x12 && ~x63 && x15 && x13 && ~x3 && x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y7 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s314;
						end
					else if( x12 && ~x63 && x15 && x13 && ~x3 && ~x14 && x64 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y18 = 1'b1;	
							y20 = 1'b1;	
							nx_state = s261;
						end
					else if( x12 && ~x63 && x15 && x13 && ~x3 && ~x14 && ~x64 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( x12 && ~x63 && x15 && ~x13 && x64 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	
							nx_state = s304;
						end
					else if( x12 && ~x63 && x15 && ~x13 && ~x64 )
						begin
							y17 = 1'b1;	y20 = 1'b1;	y28 = 1'b1;	
							nx_state = s315;
						end
					else if( x12 && ~x63 && ~x15 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( x12 && ~x63 && ~x15 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s306;
						end
					else if( ~x12 && x63 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x12 && ~x63 && x64 )
						begin
							y14 = 1'b1;	y22 = 1'b1;	
							nx_state = s280;
						end
					else if( ~x12 && ~x63 && ~x64 )
						begin
							y14 = 1'b1;	y21 = 1'b1;	y22 = 1'b1;	
							nx_state = s306;
						end
					else nx_state = s307;
				s308 : if( x15 )
						begin
							y1 = 1'b1;	
							nx_state = s309;
						end
					else if( ~x15 && x8 )
						begin
							y13 = 1'b1;	
							nx_state = s271;
						end
					else if( ~x15 && ~x8 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s271;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s309;
						end
					else if( ~x15 && ~x8 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s308;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( ~x15 && ~x8 && ~x9 && ~x10 && ~x11 )
						nx_state = s308;
					else nx_state = s308;
				s309 : if( x15 && x2 && x3 && x11 )
						begin
							y2 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y12 = 1'b1;	
							nx_state = s242;
						end
					else if( x15 && x2 && x3 && ~x11 && x12 && x13 && x4 )
						begin
							y4 = 1'b1;	y7 = 1'b1;	
							nx_state = s302;
						end
					else if( x15 && x2 && x3 && ~x11 && x12 && x13 && ~x4 )
						nx_state = s309;
					else if( x15 && x2 && x3 && ~x11 && x12 && ~x13 )
						nx_state = s309;
					else if( x15 && x2 && x3 && ~x11 && ~x12 )
						nx_state = s309;
					else if( x15 && x2 && ~x3 && x4 && x11 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s283;
						end
					else if( x15 && x2 && ~x3 && x4 && ~x11 && x12 && x13 && x14 )
						begin
							y13 = 1'b1;	
							nx_state = s319;
						end
					else if( x15 && x2 && ~x3 && x4 && ~x11 && x12 && x13 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( x15 && x2 && ~x3 && x4 && ~x11 && x12 && ~x13 )
						begin
							y10 = 1'b1;	y12 = 1'b1;	
							nx_state = s318;
						end
					else if( x15 && x2 && ~x3 && x4 && ~x11 && ~x12 )
						begin
							y10 = 1'b1;	
							nx_state = s301;
						end
					else if( x15 && x2 && ~x3 && ~x4 && x6 && x5 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( x15 && x2 && ~x3 && ~x4 && x6 && ~x5 && x9 && x7 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( x15 && x2 && ~x3 && ~x4 && x6 && ~x5 && x9 && ~x7 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( x15 && x2 && ~x3 && ~x4 && x6 && ~x5 && ~x9 && x7 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( x15 && x2 && ~x3 && ~x4 && x6 && ~x5 && ~x9 && ~x7 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && x7 && x5 && x8 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && x7 && x5 && ~x8 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && x7 && ~x5 && x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && x7 && ~x5 && ~x10 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && ~x7 && x5 && x8 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && ~x7 && x5 && ~x8 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && ~x7 && ~x5 && x10 )
						begin
							y2 = 1'b1;	
							nx_state = s288;
						end
					else if( x15 && x2 && ~x3 && ~x4 && ~x6 && ~x7 && ~x5 && ~x10 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( x15 && ~x2 )
						nx_state = s309;
					else if( ~x15 && x7 )
						begin
							y13 = 1'b1;	
							nx_state = s271;
						end
					else if( ~x15 && ~x7 && x9 )
						begin
							y13 = 1'b1;	
							nx_state = s271;
						end
					else if( ~x15 && ~x7 && ~x9 && x10 && x6 )
						begin
							y1 = 1'b1;	
							nx_state = s309;
						end
					else if( ~x15 && ~x7 && ~x9 && x10 && ~x6 )
						begin
							y10 = 1'b1;	y11 = 1'b1;	
							nx_state = s308;
						end
					else if( ~x15 && ~x7 && ~x9 && ~x10 && x11 )
						begin
							y2 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	
							nx_state = s300;
						end
					else if( ~x15 && ~x7 && ~x9 && ~x10 && ~x11 )
						nx_state = s309;
					else nx_state = s309;
				s310 : if( x15 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y9 = 1'b1;	
							nx_state = s292;
						end
					else if( ~x15 && x13 && x4 )
						begin
							y5 = 1'b1;	y8 = 1'b1;	
							nx_state = s290;
						end
					else if( ~x15 && x13 && ~x4 )
						begin
							y9 = 1'b1;	y13 = 1'b1;	
							nx_state = s249;
						end
					else if( ~x15 && ~x13 && x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( ~x15 && ~x13 && ~x14 && x9 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && x7 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && x8 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( ~x15 && ~x13 && ~x14 && ~x9 && ~x7 && ~x8 )
						nx_state = s310;
					else nx_state = s310;
				s311 : if( 1'b1 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	y29 = 1'b1;	
							nx_state = s313;
						end
					else nx_state = s311;
				s312 : if( 1'b1 )
						begin
							y19 = 1'b1;	
							nx_state = s264;
						end
					else nx_state = s312;
				s313 : if( 1'b1 )
						begin
							y3 = 1'b1;	y22 = 1'b1;	y24 = 1'b1;	
							nx_state = s316;
						end
					else nx_state = s313;
				s314 : if( 1'b1 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s153;
						end
					else nx_state = s314;
				s315 : if( x15 && x14 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s303;
						end
					else if( x15 && ~x14 )
						begin
							y2 = 1'b1;	y4 = 1'b1;	y20 = 1'b1;	
							y35 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x15 && x12 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s281;
						end
					else if( ~x15 && ~x12 )
						nx_state = s315;
					else nx_state = s315;
				s316 : if( 1'b1 )
						begin
							y3 = 1'b1;	y9 = 1'b1;	y33 = 1'b1;	
							nx_state = s278;
						end
					else nx_state = s316;
				s317 : if( x15 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s303;
						end
					else if( ~x15 && x12 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s270;
						end
					else if( ~x15 && ~x12 )
						nx_state = s317;
					else nx_state = s317;
				s318 : if( x15 && x14 )
						begin
							y1 = 1'b1;	y3 = 1'b1;	y4 = 1'b1;	
							nx_state = s317;
						end
					else if( x15 && ~x14 )
						begin
							y4 = 1'b1;	y8 = 1'b1;	
							nx_state = s289;
						end
					else if( ~x15 && x12 )
						begin
							y5 = 1'b1;	y6 = 1'b1;	y13 = 1'b1;	
							nx_state = s270;
						end
					else if( ~x15 && ~x12 )
						nx_state = s318;
					else nx_state = s318;
				s319 : if( 1'b1 )
						begin
							y9 = 1'b1;	y17 = 1'b1;	
							nx_state = s303;
						end
					else nx_state = s319;

			default : nx_state = 0;
		endcase
	end
endmodule
