module absurd ( clk,rst,
	x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61, x62, x63, x64, x65, 
	y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75,
	y76, y77, y78, y79, y80, y81, y82, y83, y84, y85, y86, y87, y88, y89, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y101, y102, y103, y104, y105,
	y106, y107, y108, y109, y110, y111, y112, y113, y114, y115, y116, y117, y118, y119, y120,
	y121, y122, y123, y124, y125, y126, y127, y128, y129, y130, y131, y132, y133, y134, y135,
	y136, y137, y138, y139, y140, y141, y142, y143, y144, y145, y146, y147, y148, y149, y150,
	y151, y152, y153, y154, y155, y156, y157, y158, y159, y160, y161, y162, y163, y164, y165,
	y166, y167, y168, y169, y170, y171, y172, y173, y174, y175, y176, y177, y178, y179, y180,
	y181, y182, y183, y184, y185, y186, y187, y188, y189, y190, y191, y192, y193, y194, y195,
	y196, y197, y198, y199, y200, y201, y202, y203, y204, y205, y206, y207, y208, y209);

input clk, rst, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
	x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30,
	x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45,
	x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60,
	x61, x62, x63, x64, x65;
output y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75,
	y76, y77, y78, y79, y80, y81, y82, y83, y84, y85, y86, y87, y88, y89, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y101, y102, y103, y104, y105,
	y106, y107, y108, y109, y110, y111, y112, y113, y114, y115, y116, y117, y118, y119, y120,
	y121, y122, y123, y124, y125, y126, y127, y128, y129, y130, y131, y132, y133, y134, y135,
	y136, y137, y138, y139, y140, y141, y142, y143, y144, y145, y146, y147, y148, y149, y150,
	y151, y152, y153, y154, y155, y156, y157, y158, y159, y160, y161, y162, y163, y164, y165,
	y166, y167, y168, y169, y170, y171, y172, y173, y174, y175, y176, y177, y178, y179, y180,
	y181, y182, y183, y184, y185, y186, y187, y188, y189, y190, y191, y192, y193, y194, y195,
	y196, y197, y198, y199, y200, y201, y202, y203, y204, y205, y206, y207, y208, y209;
reg y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30,
	y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45,
	y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60,
	y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75,
	y76, y77, y78, y79, y80, y81, y82, y83, y84, y85, y86, y87, y88, y89, y90,
	y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y101, y102, y103, y104, y105,
	y106, y107, y108, y109, y110, y111, y112, y113, y114, y115, y116, y117, y118, y119, y120,
	y121, y122, y123, y124, y125, y126, y127, y128, y129, y130, y131, y132, y133, y134, y135,
	y136, y137, y138, y139, y140, y141, y142, y143, y144, y145, y146, y147, y148, y149, y150,
	y151, y152, y153, y154, y155, y156, y157, y158, y159, y160, y161, y162, y163, y164, y165,
	y166, y167, y168, y169, y170, y171, y172, y173, y174, y175, y176, y177, y178, y179, y180,
	y181, y182, y183, y184, y185, y186, y187, y188, y189, y190, y191, y192, y193, y194, y195,
	y196, y197, y198, y199, y200, y201, y202, y203, y204, y205, y206, y207, y208, y209;

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
	s271=271, s272=272, s273=273, s274=274;
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
	x61 or x62 or x63 or x64 or x65)
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
			y109 = 1'b0;	y110 = 1'b0;	y111 = 1'b0;	y112 = 1'b0;	
			y113 = 1'b0;	y114 = 1'b0;	y115 = 1'b0;	y116 = 1'b0;	
			y117 = 1'b0;	y118 = 1'b0;	y119 = 1'b0;	y120 = 1'b0;	
			y121 = 1'b0;	y122 = 1'b0;	y123 = 1'b0;	y124 = 1'b0;	
			y125 = 1'b0;	y126 = 1'b0;	y127 = 1'b0;	y128 = 1'b0;	
			y129 = 1'b0;	y130 = 1'b0;	y131 = 1'b0;	y132 = 1'b0;	
			y133 = 1'b0;	y134 = 1'b0;	y135 = 1'b0;	y136 = 1'b0;	
			y137 = 1'b0;	y138 = 1'b0;	y139 = 1'b0;	y140 = 1'b0;	
			y141 = 1'b0;	y142 = 1'b0;	y143 = 1'b0;	y144 = 1'b0;	
			y145 = 1'b0;	y146 = 1'b0;	y147 = 1'b0;	y148 = 1'b0;	
			y149 = 1'b0;	y150 = 1'b0;	y151 = 1'b0;	y152 = 1'b0;	
			y153 = 1'b0;	y154 = 1'b0;	y155 = 1'b0;	y156 = 1'b0;	
			y157 = 1'b0;	y158 = 1'b0;	y159 = 1'b0;	y160 = 1'b0;	
			y161 = 1'b0;	y162 = 1'b0;	y163 = 1'b0;	y164 = 1'b0;	
			y165 = 1'b0;	y166 = 1'b0;	y167 = 1'b0;	y168 = 1'b0;	
			y169 = 1'b0;	y170 = 1'b0;	y171 = 1'b0;	y172 = 1'b0;	
			y173 = 1'b0;	y174 = 1'b0;	y175 = 1'b0;	y176 = 1'b0;	
			y177 = 1'b0;	y178 = 1'b0;	y179 = 1'b0;	y180 = 1'b0;	
			y181 = 1'b0;	y182 = 1'b0;	y183 = 1'b0;	y184 = 1'b0;	
			y185 = 1'b0;	y186 = 1'b0;	y187 = 1'b0;	y188 = 1'b0;	
			y189 = 1'b0;	y190 = 1'b0;	y191 = 1'b0;	y192 = 1'b0;	
			y193 = 1'b0;	y194 = 1'b0;	y195 = 1'b0;	y196 = 1'b0;	
			y197 = 1'b0;	y198 = 1'b0;	y199 = 1'b0;	y200 = 1'b0;	
			y201 = 1'b0;	y202 = 1'b0;	y203 = 1'b0;	y204 = 1'b0;	
			y205 = 1'b0;	y206 = 1'b0;	y207 = 1'b0;	y208 = 1'b0;	
			y209 = 1'b0;	
		case ( pr_state )
				s1 : if( x10 && x7 && x12 && x23 )
						nx_state = s1;
					else if( x10 && x7 && x12 && ~x23 )
						begin
							y163 = 1'b1;	y164 = 1'b1;	
							nx_state = s2;
						end
					else if( x10 && x7 && ~x12 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && x7 && ~x12 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && x7 && ~x12 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && x7 && ~x12 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && x7 && ~x12 && x18 && ~x56 )
						nx_state = s1;
					else if( x10 && x7 && ~x12 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && x7 && ~x12 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && x7 && ~x12 && ~x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && x8 && x9 && x11 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x7 && x8 && x9 && x11 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && x8 && x9 && x11 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x7 && x8 && x9 && x11 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && x8 && x9 && x11 && x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && x8 && x9 && x11 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x7 && x8 && x9 && x11 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x7 && x8 && x9 && x11 && ~x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && x8 && x9 && ~x11 && x31 && x12 && x29 )
						nx_state = s1;
					else if( x10 && ~x7 && x8 && x9 && ~x11 && x31 && x12 && ~x29 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y50 = 1'b1;	y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s7;
						end
					else if( x10 && ~x7 && x8 && x9 && ~x11 && x31 && ~x12 && x4 && x14 )
						nx_state = s1;
					else if( x10 && ~x7 && x8 && x9 && ~x11 && x31 && ~x12 && x4 && ~x14 )
						begin
							y76 = 1'b1;	y77 = 1'b1;	
							nx_state = s8;
						end
					else if( x10 && ~x7 && x8 && x9 && ~x11 && x31 && ~x12 && ~x4 )
						nx_state = s1;
					else if( x10 && ~x7 && x8 && x9 && ~x11 && ~x31 )
						begin
							y24 = 1'b1;	
							nx_state = s9;
						end
					else if( x10 && ~x7 && x8 && ~x9 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x7 && x8 && ~x9 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && x8 && ~x9 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x7 && x8 && ~x9 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && x8 && ~x9 && x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && x8 && ~x9 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x7 && x8 && ~x9 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x7 && x8 && ~x9 && ~x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && x9 && x12 && x11 && x46 && x47 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && x9 && x12 && x11 && x46 && ~x47 )
						begin
							y39 = 1'b1;	y40 = 1'b1;	
							nx_state = s10;
						end
					else if( x10 && ~x7 && ~x8 && x9 && x12 && x11 && ~x46 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && x9 && x12 && ~x11 && x58 )
						begin
							y20 = 1'b1;	y109 = 1'b1;	y111 = 1'b1;	
							nx_state = s11;
						end
					else if( x10 && ~x7 && ~x8 && x9 && x12 && ~x11 && ~x58 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && x11 && ~x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && ~x11 && x58 )
						begin
							y38 = 1'b1;	
							nx_state = s12;
						end
					else if( x10 && ~x7 && ~x8 && x9 && ~x12 && ~x11 && ~x58 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && x12 && ~x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && x11 && ~x18 && ~x56 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && ~x11 && x31 && x14 )
						begin
							y31 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s13;
						end
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && ~x11 && x31 && ~x14 )
						nx_state = s1;
					else if( x10 && ~x7 && ~x8 && ~x9 && ~x12 && ~x11 && ~x31 )
						begin
							y24 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x10 && x11 && x12 && x7 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && x12 && x7 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x12 && x7 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x12 && x7 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x12 && x7 && x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && x12 && x7 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && x11 && x12 && x7 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && x12 && x7 && ~x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && x12 && ~x7 && x9 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && x12 && ~x7 && x9 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x12 && ~x7 && x9 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && x12 && ~x7 && x9 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && x12 && ~x7 && x9 && x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && x12 && ~x7 && x9 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && x11 && x12 && ~x7 && x9 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && x12 && ~x7 && x9 && ~x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && x12 && ~x7 && ~x9 && x8 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	
							nx_state = s14;
						end
					else if( ~x10 && x11 && x12 && ~x7 && ~x9 && ~x8 && x31 && x5 && x14 )
						nx_state = s1;
					else if( ~x10 && x11 && x12 && ~x7 && ~x9 && ~x8 && x31 && x5 && ~x14 )
						begin
							y31 = 1'b1;	y32 = 1'b1;	y33 = 1'b1;	
							y34 = 1'b1;	y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x10 && x11 && x12 && ~x7 && ~x9 && ~x8 && x31 && ~x5 )
						nx_state = s1;
					else if( ~x10 && x11 && x12 && ~x7 && ~x9 && ~x8 && ~x31 )
						begin
							y24 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x10 && x11 && ~x12 && x7 && x56 && x18 && x26 )
						begin
							y12 = 1'b1;	y85 = 1'b1;	y92 = 1'b1;	
							y93 = 1'b1;	y146 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && ~x12 && x7 && x56 && x18 && ~x26 )
						begin
							y18 = 1'b1;	y86 = 1'b1;	y92 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && ~x12 && x7 && x56 && ~x18 )
						begin
							y64 = 1'b1;	
							nx_state = s16;
						end
					else if( ~x10 && x11 && ~x12 && x7 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && x9 && x58 )
						begin
							y20 = 1'b1;	y109 = 1'b1;	y111 = 1'b1;	
							nx_state = s11;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && x9 && ~x58 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && x8 && ~x9 && ~x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && x9 && ~x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && ~x9 && x53 && x58 && x41 )
						begin
							y22 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && ~x9 && x53 && x58 && ~x41 )
						begin
							y98 = 1'b1;	y99 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && ~x9 && x53 && ~x58 )
						nx_state = s1;
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && ~x9 && ~x53 && x58 && x41 )
						begin
							y98 = 1'b1;	y100 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && ~x9 && ~x53 && x58 && ~x41 )
						begin
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && x11 && ~x12 && ~x7 && ~x8 && ~x9 && ~x53 && ~x58 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x7 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && x7 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && x7 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && ~x11 && x7 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && x7 && x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && ~x11 && x7 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && ~x11 && x7 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && ~x11 && x7 && ~x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && x8 && x9 && x12 && x56 && x18 && x26 )
						begin
							y12 = 1'b1;	y85 = 1'b1;	y92 = 1'b1;	
							y93 = 1'b1;	y146 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && x9 && x12 && x56 && x18 && ~x26 )
						begin
							y18 = 1'b1;	y86 = 1'b1;	y92 = 1'b1;	
							y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && x9 && x12 && x56 && ~x18 )
						begin
							y19 = 1'b1;	y64 = 1'b1;	
							nx_state = s20;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && x9 && x12 && ~x56 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && x8 && x9 && ~x12 && x58 )
						begin
							y135 = 1'b1;	y136 = 1'b1;	y137 = 1'b1;	
							nx_state = s21;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && x9 && ~x12 && ~x58 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && x12 && x58 )
						begin
							y43 = 1'b1;	y44 = 1'b1;	
							nx_state = s22;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && x12 && ~x58 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && x34 && x58 )
						begin
							y98 = 1'b1;	y99 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && x34 && ~x58 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && ~x34 && x33 && x58 )
						begin
							y98 = 1'b1;	y100 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && ~x34 && x33 && ~x58 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && ~x34 && ~x33 && x32 && x58 )
						begin
							y22 = 1'b1;	
							nx_state = s17;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && ~x34 && ~x33 && x32 && ~x58 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && ~x34 && ~x33 && ~x32 && x58 )
						begin
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x10 && ~x11 && ~x7 && x8 && ~x9 && ~x12 && ~x34 && ~x33 && ~x32 && ~x58 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && ~x8 && x18 && x56 && x26 && x42 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y12 = 1'b1;	
							y18 = 1'b1;	y19 = 1'b1;	y57 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s3;
						end
					else if( ~x10 && ~x11 && ~x7 && ~x8 && x18 && x56 && x26 && ~x42 )
						begin
							y91 = 1'b1;	y92 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && ~x7 && ~x8 && x18 && x56 && ~x26 && x42 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s4;
						end
					else if( ~x10 && ~x11 && ~x7 && ~x8 && x18 && x56 && ~x26 && ~x42 )
						begin
							y92 = 1'b1;	y93 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x10 && ~x11 && ~x7 && ~x8 && x18 && ~x56 )
						nx_state = s1;
					else if( ~x10 && ~x11 && ~x7 && ~x8 && ~x18 && x56 && x52 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y19 = 1'b1;	y49 = 1'b1;	
							y50 = 1'b1;	y52 = 1'b1;	y53 = 1'b1;	
							y57 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y88 = 1'b1;	y89 = 1'b1;	y90 = 1'b1;	
							nx_state = s5;
						end
					else if( ~x10 && ~x11 && ~x7 && ~x8 && ~x18 && x56 && ~x52 )
						begin
							y95 = 1'b1;	y97 = 1'b1;	
							nx_state = s6;
						end
					else if( ~x10 && ~x11 && ~x7 && ~x8 && ~x18 && ~x56 )
						nx_state = s1;
					else nx_state = s1;
				s2 : if( 1'b1 )
						nx_state = s23;
					else nx_state = s2;
				s3 : if( 1'b1 )
						begin
							y157 = 1'b1;	y158 = 1'b1;	
							nx_state = s24;
						end
					else nx_state = s3;
				s4 : if( 1'b1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y50 = 1'b1;	
							y88 = 1'b1;	
							nx_state = s25;
						end
					else nx_state = s4;
				s5 : if( 1'b1 )
						begin
							y157 = 1'b1;	y158 = 1'b1;	
							nx_state = s26;
						end
					else nx_state = s5;
				s6 : if( 1'b1 )
						begin
							y80 = 1'b1;	
							nx_state = s27;
						end
					else nx_state = s6;
				s7 : if( x16 && x14 )
						begin
							y27 = 1'b1;	y29 = 1'b1;	y30 = 1'b1;	
							y74 = 1'b1;	y152 = 1'b1;	
							nx_state = s28;
						end
					else if( x16 && ~x14 )
						nx_state = s7;
					else if( ~x16 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y50 = 1'b1;	y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s7;
						end
					else nx_state = s7;
				s8 : if( x29 )
						nx_state = s8;
					else if( ~x29 )
						begin
							y27 = 1'b1;	y29 = 1'b1;	y30 = 1'b1;	
							y74 = 1'b1;	y152 = 1'b1;	
							nx_state = s28;
						end
					else nx_state = s8;
				s9 : if( x8 && x31 && x12 && x29 )
						nx_state = s9;
					else if( x8 && x31 && x12 && ~x29 )
						begin
							y1 = 1'b1;	y5 = 1'b1;	y16 = 1'b1;	
							y50 = 1'b1;	y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s7;
						end
					else if( x8 && x31 && ~x12 && x4 && x14 )
						nx_state = s9;
					else if( x8 && x31 && ~x12 && x4 && ~x14 )
						begin
							y76 = 1'b1;	y77 = 1'b1;	
							nx_state = s8;
						end
					else if( x8 && x31 && ~x12 && ~x4 )
						nx_state = s9;
					else if( x8 && ~x31 )
						begin
							y24 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x8 && x10 && x31 && x14 )
						begin
							y31 = 1'b1;	y32 = 1'b1;	y34 = 1'b1;	
							y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s13;
						end
					else if( ~x8 && x10 && x31 && ~x14 )
						nx_state = s9;
					else if( ~x8 && x10 && ~x31 )
						begin
							y24 = 1'b1;	
							nx_state = s9;
						end
					else if( ~x8 && ~x10 && x31 && x5 && x14 )
						nx_state = s9;
					else if( ~x8 && ~x10 && x31 && x5 && ~x14 )
						begin
							y31 = 1'b1;	y32 = 1'b1;	y33 = 1'b1;	
							y34 = 1'b1;	y35 = 1'b1;	y36 = 1'b1;	
							nx_state = s15;
						end
					else if( ~x8 && ~x10 && x31 && ~x5 )
						nx_state = s9;
					else if( ~x8 && ~x10 && ~x31 )
						begin
							y24 = 1'b1;	
							nx_state = s9;
						end
					else nx_state = s9;
				s10 : if( x45 )
						nx_state = s10;
					else if( ~x45 && x25 && x22 && x21 )
						begin
							y85 = 1'b1;	y93 = 1'b1;	y166 = 1'b1;	
							y167 = 1'b1;	y170 = 1'b1;	y171 = 1'b1;	
							y172 = 1'b1;	y174 = 1'b1;	y176 = 1'b1;	
							y178 = 1'b1;	y180 = 1'b1;	y184 = 1'b1;	
							nx_state = s29;
						end
					else if( ~x45 && x25 && x22 && ~x21 )
						begin
							y166 = 1'b1;	y167 = 1'b1;	y170 = 1'b1;	
							y171 = 1'b1;	y174 = 1'b1;	y176 = 1'b1;	
							y180 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x45 && x25 && ~x22 && x21 )
						begin
							y166 = 1'b1;	y167 = 1'b1;	y170 = 1'b1;	
							y171 = 1'b1;	y174 = 1'b1;	y176 = 1'b1;	
							y178 = 1'b1;	y180 = 1'b1;	y184 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x45 && x25 && ~x22 && ~x21 )
						begin
							y166 = 1'b1;	y170 = 1'b1;	y171 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s32;
						end
					else if( ~x45 && ~x25 && x22 && x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y174 = 1'b1;	
							nx_state = s33;
						end
					else if( ~x45 && ~x25 && x22 && ~x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y174 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x45 && ~x25 && ~x22 && x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y174 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x45 && ~x25 && ~x22 && ~x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y169 = 1'b1;	
							y173 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s10;
				s11 : if( x3 )
						begin
							y20 = 1'b1;	y106 = 1'b1;	y107 = 1'b1;	
							nx_state = s37;
						end
					else if( ~x3 && x8 )
						begin
							y149 = 1'b1;	
							nx_state = s38;
						end
					else if( ~x3 && ~x8 && x51 )
						begin
							y98 = 1'b1;	
							nx_state = s39;
						end
					else if( ~x3 && ~x8 && ~x51 && x57 )
						begin
							y20 = 1'b1;	y106 = 1'b1;	y109 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x3 && ~x8 && ~x51 && ~x57 )
						nx_state = s11;
					else nx_state = s11;
				s12 : if( 1'b1 )
						begin
							y21 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s12;
				s13 : if( x6 )
						begin
							y29 = 1'b1;	y30 = 1'b1;	
							nx_state = s41;
						end
					else if( ~x6 )
						nx_state = s13;
					else nx_state = s13;
				s14 : if( x16 )
						begin
							y1 = 1'b1;	y84 = 1'b1;	y116 = 1'b1;	
							y128 = 1'b1;	y129 = 1'b1;	y130 = 1'b1;	
							nx_state = s42;
						end
					else if( ~x16 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	
							nx_state = s14;
						end
					else nx_state = s14;
				s15 : if( 1'b1 )
						begin
							y29 = 1'b1;	y30 = 1'b1;	
							nx_state = s41;
						end
					else nx_state = s15;
				s16 : if( 1'b1 )
						begin
							y86 = 1'b1;	y92 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y199 = 1'b1;	
							nx_state = s43;
						end
					else nx_state = s16;
				s17 : if( x8 )
						begin
							y98 = 1'b1;	y112 = 1'b1;	
							nx_state = s44;
						end
					else if( ~x8 )
						begin
							y98 = 1'b1;	y100 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s17;
				s18 : if( 1'b1 )
						begin
							y157 = 1'b1;	y175 = 1'b1;	y195 = 1'b1;	
							nx_state = s45;
						end
					else nx_state = s18;
				s19 : if( 1'b1 )
						begin
							y157 = 1'b1;	y175 = 1'b1;	y195 = 1'b1;	
							nx_state = s46;
						end
					else nx_state = s19;
				s20 : if( 1'b1 )
						begin
							y147 = 1'b1;	
							nx_state = s47;
						end
					else nx_state = s20;
				s21 : if( 1'b1 )
						begin
							y139 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s21;
				s22 : if( 1'b1 )
						begin
							y157 = 1'b1;	y159 = 1'b1;	y179 = 1'b1;	
							y195 = 1'b1;	y198 = 1'b1;	
							nx_state = s49;
						end
					else nx_state = s22;
				s23 : if( x61 )
						begin
							y120 = 1'b1;	y161 = 1'b1;	
							nx_state = s50;
						end
					else if( ~x61 )
						begin
							y120 = 1'b1;	y161 = 1'b1;	
							nx_state = s51;
						end
					else nx_state = s23;
				s24 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s52;
						end
					else nx_state = s24;
				s25 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s53;
						end
					else nx_state = s25;
				s26 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s54;
						end
					else nx_state = s26;
				s27 : if( x7 && x10 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( x7 && x10 && ~x37 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( x7 && ~x10 && x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x7 && ~x10 && ~x11 && x12 && x28 )
						begin
							y80 = 1'b1;	
							nx_state = s58;
						end
					else if( x7 && ~x10 && ~x11 && x12 && ~x28 && x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( x7 && ~x10 && ~x11 && x12 && ~x28 && x35 && ~x27 )
						nx_state = s1;
					else if( x7 && ~x10 && ~x11 && x12 && ~x28 && ~x35 )
						nx_state = s1;
					else if( x7 && ~x10 && ~x11 && ~x12 && x27 )
						begin
							y80 = 1'b1;	
							nx_state = s58;
						end
					else if( x7 && ~x10 && ~x11 && ~x12 && ~x27 && x35 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( x7 && ~x10 && ~x11 && ~x12 && ~x27 && x35 && ~x28 )
						nx_state = s1;
					else if( x7 && ~x10 && ~x11 && ~x12 && ~x27 && ~x35 )
						nx_state = s1;
					else if( ~x7 && x8 && x10 && x9 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && x8 && x10 && x9 && ~x37 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x7 && x8 && x10 && ~x9 && x12 && x11 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && x8 && x10 && ~x9 && x12 && x11 && ~x37 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x7 && x8 && x10 && ~x9 && x12 && ~x11 )
						begin
							y55 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && x8 && x10 && ~x9 && ~x12 && x11 )
						begin
							y56 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && x8 && x10 && ~x9 && ~x12 && ~x11 && x27 )
						begin
							y48 = 1'b1;	
							nx_state = s60;
						end
					else if( ~x7 && x8 && x10 && ~x9 && ~x12 && ~x11 && ~x27 )
						nx_state = s27;
					else if( ~x7 && x8 && ~x10 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x7 && ~x8 && x9 && x10 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x7 && ~x8 && x9 && ~x10 && x12 && x11 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x7 && ~x8 && x9 && ~x10 && x12 && ~x11 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && ~x8 && x9 && ~x10 && x12 && ~x11 && ~x37 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x7 && ~x8 && x9 && ~x10 && ~x12 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && ~x8 && x9 && ~x10 && ~x12 && ~x37 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && x12 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && x12 && ~x37 && x65 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && x12 && ~x37 && ~x65 && x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && x12 && ~x37 && ~x65 && x35 && ~x27 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && x12 && ~x37 && ~x65 && x35 && ~x27 && ~x28 )
						nx_state = s1;
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && x12 && ~x37 && ~x65 && ~x35 )
						nx_state = s1;
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && ~x12 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && ~x12 && ~x37 && x62 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && ~x12 && ~x37 && ~x62 && x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && ~x12 && ~x37 && ~x62 && x35 && ~x27 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && ~x12 && ~x37 && ~x62 && x35 && ~x27 && ~x28 )
						nx_state = s1;
					else if( ~x7 && ~x8 && ~x9 && x10 && x11 && ~x12 && ~x37 && ~x62 && ~x35 )
						nx_state = s1;
					else if( ~x7 && ~x8 && ~x9 && x10 && ~x11 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && ~x11 && ~x37 && x15 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && ~x11 && ~x37 && ~x15 && x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && ~x11 && ~x37 && ~x15 && x35 && ~x27 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 && ~x11 && ~x37 && ~x15 && x35 && ~x27 && ~x28 )
						nx_state = s1;
					else if( ~x7 && ~x8 && ~x9 && x10 && ~x11 && ~x37 && ~x15 && ~x35 )
						nx_state = s1;
					else if( ~x7 && ~x8 && ~x9 && ~x10 && x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x7 && ~x8 && ~x9 && ~x10 && ~x37 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s27;
				s28 : if( 1'b1 )
						begin
							y150 = 1'b1;	
							nx_state = s61;
						end
					else nx_state = s28;
				s29 : if( x48 )
						begin
							y166 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s62;
						end
					else if( ~x48 )
						nx_state = s29;
					else nx_state = s29;
				s30 : if( x48 )
						begin
							y42 = 1'b1;	
							nx_state = s63;
						end
					else if( ~x48 )
						nx_state = s30;
					else nx_state = s30;
				s31 : if( x48 )
						begin
							y166 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s64;
						end
					else if( ~x48 )
						nx_state = s31;
					else nx_state = s31;
				s32 : if( x48 && x43 && x45 )
						begin
							y42 = 1'b1;	
							nx_state = s10;
						end
					else if( x48 && x43 && ~x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( x48 && ~x43 )
						begin
							y41 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x48 )
						nx_state = s32;
					else nx_state = s32;
				s33 : if( 1'b1 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y175 = 1'b1;	y176 = 1'b1;	
							y177 = 1'b1;	y178 = 1'b1;	
							nx_state = s66;
						end
					else nx_state = s33;
				s34 : if( 1'b1 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y175 = 1'b1;	y176 = 1'b1;	
							y177 = 1'b1;	y178 = 1'b1;	
							nx_state = s67;
						end
					else nx_state = s34;
				s35 : if( 1'b1 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y175 = 1'b1;	y176 = 1'b1;	
							y177 = 1'b1;	y178 = 1'b1;	
							nx_state = s68;
						end
					else nx_state = s35;
				s36 : if( x48 && x45 && x47 )
						begin
							y41 = 1'b1;	
							nx_state = s1;
						end
					else if( x48 && x45 && ~x47 )
						begin
							y42 = 1'b1;	
							nx_state = s10;
						end
					else if( x48 && ~x45 )
						begin
							y42 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x48 )
						nx_state = s36;
					else nx_state = s36;
				s37 : if( 1'b1 )
						begin
							y98 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s37;
				s38 : if( 1'b1 )
						begin
							y98 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s38;
				s39 : if( 1'b1 )
						begin
							y157 = 1'b1;	y180 = 1'b1;	y195 = 1'b1;	
							nx_state = s72;
						end
					else nx_state = s39;
				s40 : if( 1'b1 )
						begin
							y98 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s40;
				s41 : if( x60 )
						nx_state = s41;
					else if( ~x60 )
						begin
							y27 = 1'b1;	y28 = 1'b1;	
							nx_state = s74;
						end
					else nx_state = s41;
				s42 : if( x13 )
						begin
							y126 = 1'b1;	
							nx_state = s75;
						end
					else if( ~x13 )
						begin
							y127 = 1'b1;	
							nx_state = s75;
						end
					else nx_state = s42;
				s43 : if( x16 )
						nx_state = s1;
					else if( ~x16 )
						begin
							y155 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s43;
				s44 : if( 1'b1 )
						begin
							y157 = 1'b1;	y175 = 1'b1;	y180 = 1'b1;	
							y195 = 1'b1;	
							nx_state = s77;
						end
					else nx_state = s44;
				s45 : if( x16 )
						begin
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x16 )
						begin
							y98 = 1'b1;	y99 = 1'b1;	
							nx_state = s18;
						end
					else nx_state = s45;
				s46 : if( x16 )
						begin
							y20 = 1'b1;	
							nx_state = s12;
						end
					else if( ~x16 )
						begin
							y98 = 1'b1;	y100 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s46;
				s47 : if( 1'b1 )
						begin
							y65 = 1'b1;	
							nx_state = s78;
						end
					else nx_state = s47;
				s48 : if( 1'b1 )
						begin
							y119 = 1'b1;	y124 = 1'b1;	y195 = 1'b1;	
							nx_state = s79;
						end
					else nx_state = s48;
				s49 : if( x16 )
						begin
							y157 = 1'b1;	y159 = 1'b1;	y165 = 1'b1;	
							y180 = 1'b1;	y184 = 1'b1;	y197 = 1'b1;	
							nx_state = s80;
						end
					else if( ~x16 )
						begin
							y157 = 1'b1;	y159 = 1'b1;	y179 = 1'b1;	
							y197 = 1'b1;	
							nx_state = s81;
						end
					else nx_state = s49;
				s50 : if( 1'b1 )
						begin
							y123 = 1'b1;	y161 = 1'b1;	
							nx_state = s82;
						end
					else nx_state = s50;
				s51 : if( 1'b1 )
						begin
							y123 = 1'b1;	y161 = 1'b1;	
							nx_state = s83;
						end
					else nx_state = s51;
				s52 : if( 1'b1 )
						begin
							y158 = 1'b1;	y159 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s52;
				s53 : if( 1'b1 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y89 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s84;
						end
					else nx_state = s53;
				s54 : if( 1'b1 )
						begin
							y158 = 1'b1;	y159 = 1'b1;	
							nx_state = s85;
						end
					else nx_state = s54;
				s55 : if( 1'b1 )
						begin
							y80 = 1'b1;	
							nx_state = s86;
						end
					else nx_state = s55;
				s56 : if( x39 )
						begin
							y4 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x39 && x10 )
						begin
							y4 = 1'b1;	
							nx_state = s87;
						end
					else if( ~x39 && ~x10 && x7 )
						begin
							y16 = 1'b1;	y81 = 1'b1;	y82 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x39 && ~x10 && ~x7 )
						begin
							y4 = 1'b1;	
							nx_state = s87;
						end
					else nx_state = s56;
				s57 : if( x9 )
						begin
							y4 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x9 && x10 && x8 && x7 )
						begin
							y4 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x9 && x10 && x8 && ~x7 )
						begin
							y16 = 1'b1;	y81 = 1'b1;	y82 = 1'b1;	
							nx_state = s88;
						end
					else if( ~x9 && x10 && ~x8 )
						begin
							y4 = 1'b1;	
							nx_state = s89;
						end
					else if( ~x9 && ~x10 )
						begin
							y4 = 1'b1;	
							nx_state = s89;
						end
					else nx_state = s57;
				s58 : if( 1'b1 )
						begin
							y80 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s58;
				s59 : if( x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( x35 && ~x27 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( x35 && ~x27 && ~x28 )
						nx_state = s1;
					else if( ~x35 )
						nx_state = s1;
					else nx_state = s59;
				s60 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y6 = 1'b1;	y7 = 1'b1;	
							y8 = 1'b1;	y9 = 1'b1;	y10 = 1'b1;	
							y49 = 1'b1;	y50 = 1'b1;	y51 = 1'b1;	
							y52 = 1'b1;	y53 = 1'b1;	y54 = 1'b1;	
							nx_state = s90;
						end
					else nx_state = s60;
				s61 : if( x4 )
						begin
							y151 = 1'b1;	
							nx_state = s91;
						end
					else if( ~x4 )
						nx_state = s61;
					else nx_state = s61;
				s62 : if( 1'b1 )
						begin
							y159 = 1'b1;	y166 = 1'b1;	y168 = 1'b1;	
							y171 = 1'b1;	y180 = 1'b1;	y182 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s92;
						end
					else nx_state = s62;
				s63 : if( 1'b1 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y93 = 1'b1;	
							y166 = 1'b1;	y167 = 1'b1;	y170 = 1'b1;	
							y171 = 1'b1;	y172 = 1'b1;	y177 = 1'b1;	
							y178 = 1'b1;	y179 = 1'b1;	
							nx_state = s93;
						end
					else nx_state = s63;
				s64 : if( 1'b1 )
						begin
							y159 = 1'b1;	y166 = 1'b1;	y168 = 1'b1;	
							y171 = 1'b1;	y180 = 1'b1;	y182 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s64;
				s65 : if( x22 && x21 )
						begin
							y85 = 1'b1;	y93 = 1'b1;	y166 = 1'b1;	
							y167 = 1'b1;	y170 = 1'b1;	y171 = 1'b1;	
							y172 = 1'b1;	y174 = 1'b1;	y176 = 1'b1;	
							y178 = 1'b1;	y180 = 1'b1;	y184 = 1'b1;	
							nx_state = s29;
						end
					else if( x22 && ~x21 )
						begin
							y166 = 1'b1;	y167 = 1'b1;	y170 = 1'b1;	
							y171 = 1'b1;	y174 = 1'b1;	y176 = 1'b1;	
							y180 = 1'b1;	
							nx_state = s30;
						end
					else if( ~x22 && x21 )
						begin
							y166 = 1'b1;	y167 = 1'b1;	y170 = 1'b1;	
							y171 = 1'b1;	y174 = 1'b1;	y176 = 1'b1;	
							y178 = 1'b1;	y180 = 1'b1;	y184 = 1'b1;	
							nx_state = s31;
						end
					else if( ~x22 && ~x21 )
						begin
							y166 = 1'b1;	y170 = 1'b1;	y171 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s32;
						end
					else nx_state = s65;
				s66 : if( 1'b1 )
						begin
							y18 = 1'b1;	y85 = 1'b1;	y166 = 1'b1;	
							y167 = 1'b1;	y170 = 1'b1;	y171 = 1'b1;	
							y172 = 1'b1;	
							nx_state = s95;
						end
					else nx_state = s66;
				s67 : if( 1'b1 )
						begin
							y18 = 1'b1;	y85 = 1'b1;	y166 = 1'b1;	
							y167 = 1'b1;	y170 = 1'b1;	y171 = 1'b1;	
							y172 = 1'b1;	
							nx_state = s96;
						end
					else nx_state = s67;
				s68 : if( 1'b1 )
						begin
							y165 = 1'b1;	y166 = 1'b1;	y167 = 1'b1;	
							y168 = 1'b1;	y169 = 1'b1;	
							nx_state = s97;
						end
					else nx_state = s68;
				s69 : if( x22 && x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y174 = 1'b1;	
							nx_state = s33;
						end
					else if( x22 && ~x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y174 = 1'b1;	
							nx_state = s34;
						end
					else if( ~x22 && x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y173 = 1'b1;	y174 = 1'b1;	
							nx_state = s35;
						end
					else if( ~x22 && ~x21 )
						begin
							y167 = 1'b1;	y168 = 1'b1;	y169 = 1'b1;	
							y173 = 1'b1;	
							nx_state = s36;
						end
					else nx_state = s69;
				s70 : if( 1'b1 )
						begin
							y159 = 1'b1;	y175 = 1'b1;	y195 = 1'b1;	
							nx_state = s98;
						end
					else nx_state = s70;
				s71 : if( 1'b1 )
						begin
							y157 = 1'b1;	y180 = 1'b1;	y195 = 1'b1;	
							nx_state = s99;
						end
					else nx_state = s71;
				s72 : if( x16 )
						begin
							y20 = 1'b1;	y106 = 1'b1;	y109 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x16 )
						begin
							y98 = 1'b1;	
							nx_state = s39;
						end
					else nx_state = s72;
				s73 : if( 1'b1 )
						begin
							y159 = 1'b1;	y175 = 1'b1;	y195 = 1'b1;	
							nx_state = s100;
						end
					else nx_state = s73;
				s74 : if( 1'b1 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s101;
						end
					else nx_state = s74;
				s75 : if( 1'b1 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	y201 = 1'b1;	
							nx_state = s102;
						end
					else nx_state = s75;
				s76 : if( 1'b1 )
						begin
							y86 = 1'b1;	y209 = 1'b1;	
							nx_state = s103;
						end
					else nx_state = s76;
				s77 : if( x16 )
						begin
							y20 = 1'b1;	
							nx_state = s104;
						end
					else if( ~x16 )
						begin
							y98 = 1'b1;	y112 = 1'b1;	
							nx_state = s44;
						end
					else nx_state = s77;
				s78 : if( 1'b1 )
						begin
							y66 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s78;
				s79 : if( x16 )
						begin
							y134 = 1'b1;	
							nx_state = s106;
						end
					else if( ~x16 )
						begin
							y139 = 1'b1;	
							nx_state = s48;
						end
					else nx_state = s79;
				s80 : if( 1'b1 )
						begin
							y159 = 1'b1;	y165 = 1'b1;	y175 = 1'b1;	
							y177 = 1'b1;	y180 = 1'b1;	y195 = 1'b1;	
							y196 = 1'b1;	
							nx_state = s107;
						end
					else nx_state = s80;
				s81 : if( 1'b1 )
						begin
							y159 = 1'b1;	y165 = 1'b1;	y175 = 1'b1;	
							y177 = 1'b1;	y180 = 1'b1;	y195 = 1'b1;	
							y196 = 1'b1;	
							nx_state = s108;
						end
					else nx_state = s81;
				s82 : if( 1'b1 )
						begin
							y119 = 1'b1;	y161 = 1'b1;	
							nx_state = s109;
						end
					else nx_state = s82;
				s83 : if( 1'b1 )
						begin
							y119 = 1'b1;	y161 = 1'b1;	
							nx_state = s110;
						end
					else nx_state = s83;
				s84 : if( 1'b1 )
						nx_state = s1;
					else nx_state = s84;
				s85 : if( 1'b1 )
						begin
							y37 = 1'b1;	y55 = 1'b1;	y85 = 1'b1;	
							y86 = 1'b1;	y87 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s85;
				s86 : if( x7 && x10 && x38 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( x7 && x10 && ~x38 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( x7 && x10 && ~x38 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else if( x7 && ~x10 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( x7 && ~x10 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x7 && x9 && x38 && x8 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x7 && x9 && x38 && ~x8 && x11 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x7 && x9 && x38 && ~x8 && ~x11 && x12 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x7 && x9 && x38 && ~x8 && ~x11 && ~x12 )
						begin
							y18 = 1'b1;	y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && x9 && ~x38 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x7 && x9 && ~x38 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x7 && ~x9 && x8 && x38 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y8 = 1'b1;	
							y10 = 1'b1;	y49 = 1'b1;	y51 = 1'b1;	
							y52 = 1'b1;	y53 = 1'b1;	y57 = 1'b1;	
							nx_state = s114;
						end
					else if( ~x7 && ~x9 && x8 && ~x38 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x7 && ~x9 && x8 && ~x38 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && x12 && x65 && x38 )
						begin
							y18 = 1'b1;	y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && x12 && x65 && ~x38 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && x12 && x65 && ~x38 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && x12 && ~x65 && x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && x12 && ~x65 && x35 && ~x27 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && x12 && ~x65 && x35 && ~x27 && ~x28 )
						nx_state = s1;
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && x12 && ~x65 && ~x35 )
						nx_state = s1;
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && ~x12 && x62 && x38 )
						begin
							y18 = 1'b1;	y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && ~x12 && x62 && ~x38 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && ~x12 && x62 && ~x38 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && ~x12 && ~x62 && x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && ~x12 && ~x62 && x35 && ~x27 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && ~x12 && ~x62 && x35 && ~x27 && ~x28 )
						nx_state = s1;
					else if( ~x7 && ~x9 && ~x8 && x10 && x11 && ~x12 && ~x62 && ~x35 )
						nx_state = s1;
					else if( ~x7 && ~x9 && ~x8 && x10 && ~x11 && x15 && x38 )
						begin
							y18 = 1'b1;	y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && ~x11 && x15 && ~x38 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && ~x11 && x15 && ~x38 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && ~x11 && ~x15 && x35 && x27 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && ~x11 && ~x15 && x35 && ~x27 && x28 )
						begin
							y96 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 && ~x11 && ~x15 && x35 && ~x27 && ~x28 )
						nx_state = s1;
					else if( ~x7 && ~x9 && ~x8 && x10 && ~x11 && ~x15 && ~x35 )
						nx_state = s1;
					else if( ~x7 && ~x9 && ~x8 && ~x10 && x38 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x7 && ~x9 && ~x8 && ~x10 && ~x38 && x39 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s111;
						end
					else if( ~x7 && ~x9 && ~x8 && ~x10 && ~x38 && ~x39 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else nx_state = s86;
				s87 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s115;
						end
					else nx_state = s87;
				s88 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s116;
						end
					else nx_state = s88;
				s89 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s117;
						end
					else nx_state = s89;
				s90 : if( 1'b1 )
						begin
							y16 = 1'b1;	y81 = 1'b1;	y82 = 1'b1;	
							nx_state = s88;
						end
					else nx_state = s90;
				s91 : if( x12 && x4 )
						begin
							y73 = 1'b1;	
							nx_state = s118;
						end
					else if( x12 && ~x4 )
						nx_state = s91;
					else if( ~x12 )
						begin
							y78 = 1'b1;	
							nx_state = s119;
						end
					else nx_state = s91;
				s92 : if( 1'b1 )
						begin
							y166 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y175 = 1'b1;	y180 = 1'b1;	y181 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s92;
				s93 : if( x48 )
						begin
							y166 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s120;
						end
					else if( ~x48 )
						nx_state = s93;
					else nx_state = s93;
				s94 : if( x43 && x45 )
						begin
							y42 = 1'b1;	
							nx_state = s10;
						end
					else if( x43 && ~x45 )
						begin
							y42 = 1'b1;	
							nx_state = s65;
						end
					else if( ~x43 )
						begin
							y41 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s94;
				s95 : if( 1'b1 )
						begin
							y165 = 1'b1;	y166 = 1'b1;	y167 = 1'b1;	
							y168 = 1'b1;	y169 = 1'b1;	
							nx_state = s121;
						end
					else nx_state = s95;
				s96 : if( 1'b1 )
						begin
							y165 = 1'b1;	y166 = 1'b1;	y167 = 1'b1;	
							y168 = 1'b1;	y169 = 1'b1;	
							nx_state = s122;
						end
					else nx_state = s96;
				s97 : if( x48 && x45 && x47 )
						begin
							y41 = 1'b1;	
							nx_state = s1;
						end
					else if( x48 && x45 && ~x47 )
						begin
							y42 = 1'b1;	
							nx_state = s10;
						end
					else if( x48 && ~x45 )
						begin
							y42 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x48 )
						nx_state = s97;
					else nx_state = s97;
				s98 : if( x16 && x19 )
						begin
							y20 = 1'b1;	y108 = 1'b1;	y110 = 1'b1;	
							nx_state = s123;
						end
					else if( x16 && ~x19 && x58 )
						begin
							y20 = 1'b1;	y109 = 1'b1;	y111 = 1'b1;	
							nx_state = s11;
						end
					else if( x16 && ~x19 && ~x58 )
						nx_state = s98;
					else if( ~x16 )
						begin
							y98 = 1'b1;	
							nx_state = s70;
						end
					else nx_state = s98;
				s99 : if( x16 && x49 )
						begin
							y20 = 1'b1;	y106 = 1'b1;	y109 = 1'b1;	
							nx_state = s40;
						end
					else if( x16 && ~x49 )
						nx_state = s99;
					else if( ~x16 && x44 )
						begin
							y148 = 1'b1;	
							nx_state = s124;
						end
					else if( ~x16 && ~x44 )
						begin
							y98 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s99;
				s100 : if( x16 )
						begin
							y20 = 1'b1;	y108 = 1'b1;	y110 = 1'b1;	
							nx_state = s123;
						end
					else if( ~x16 )
						begin
							y98 = 1'b1;	
							nx_state = s73;
						end
					else nx_state = s100;
				s101 : if( x64 && x30 )
						begin
							y23 = 1'b1;	
							nx_state = s125;
						end
					else if( x64 && ~x30 )
						begin
							y104 = 1'b1;	y105 = 1'b1;	
							nx_state = s126;
						end
					else if( ~x64 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s101;
						end
					else nx_state = s101;
				s102 : if( x16 && x36 && x55 && x2 && x1 )
						begin
							y119 = 1'b1;	y195 = 1'b1;	y202 = 1'b1;	
							nx_state = s127;
						end
					else if( x16 && x36 && x55 && x2 && ~x1 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( x16 && x36 && x55 && ~x2 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( x16 && x36 && ~x55 )
						begin
							y46 = 1'b1;	
							nx_state = s129;
						end
					else if( x16 && ~x36 )
						begin
							y161 = 1'b1;	y162 = 1'b1;	y195 = 1'b1;	
							y200 = 1'b1;	
							nx_state = s130;
						end
					else if( ~x16 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	y201 = 1'b1;	
							nx_state = s102;
						end
					else nx_state = s102;
				s103 : if( 1'b1 )
						begin
							y12 = 1'b1;	y86 = 1'b1;	y92 = 1'b1;	
							y95 = 1'b1;	y161 = 1'b1;	y195 = 1'b1;	
							nx_state = s131;
						end
					else nx_state = s103;
				s104 : if( 1'b1 )
						begin
							y98 = 1'b1;	y100 = 1'b1;	
							nx_state = s19;
						end
					else nx_state = s104;
				s105 : if( x7 )
						begin
							y86 = 1'b1;	y92 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y199 = 1'b1;	
							nx_state = s43;
						end
					else if( ~x7 )
						begin
							y86 = 1'b1;	y92 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y199 = 1'b1;	
							nx_state = s132;
						end
					else nx_state = s105;
				s106 : if( x20 )
						begin
							y138 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x20 )
						nx_state = s106;
					else nx_state = s106;
				s107 : if( x16 )
						begin
							y98 = 1'b1;	y99 = 1'b1;	
							nx_state = s18;
						end
					else if( ~x16 )
						begin
							y20 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s107;
				s108 : if( x16 )
						begin
							y98 = 1'b1;	y100 = 1'b1;	
							nx_state = s19;
						end
					else if( ~x16 )
						begin
							y20 = 1'b1;	
							nx_state = s12;
						end
					else nx_state = s108;
				s109 : if( 1'b1 )
						begin
							y120 = 1'b1;	y162 = 1'b1;	
							nx_state = s134;
						end
					else nx_state = s109;
				s110 : if( 1'b1 )
						begin
							y120 = 1'b1;	y162 = 1'b1;	
							nx_state = s135;
						end
					else nx_state = s110;
				s111 : if( 1'b1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y50 = 1'b1;	
							y88 = 1'b1;	
							nx_state = s136;
						end
					else nx_state = s111;
				s112 : if( x16 && x7 && x10 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s138;
						end
					else if( x16 && x7 && ~x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y18 = 1'b1;	
							y19 = 1'b1;	
							nx_state = s137;
						end
					else if( x16 && ~x7 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x16 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s139;
						end
					else nx_state = s112;
				s113 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	y3 = 1'b1;	
							y4 = 1'b1;	y5 = 1'b1;	y6 = 1'b1;	
							y7 = 1'b1;	y8 = 1'b1;	y9 = 1'b1;	
							y10 = 1'b1;	
							nx_state = s90;
						end
					else nx_state = s113;
				s114 : if( 1'b1 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s114;
				s115 : if( 1'b1 )
						begin
							y6 = 1'b1;	y51 = 1'b1;	
							nx_state = s140;
						end
					else nx_state = s115;
				s116 : if( 1'b1 )
						begin
							y82 = 1'b1;	y84 = 1'b1;	
							nx_state = s141;
						end
					else nx_state = s116;
				s117 : if( 1'b1 )
						begin
							y6 = 1'b1;	y51 = 1'b1;	
							nx_state = s142;
						end
					else nx_state = s117;
				s118 : if( x40 )
						nx_state = s118;
					else if( ~x40 )
						begin
							y74 = 1'b1;	y152 = 1'b1;	y154 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s118;
				s119 : if( 1'b1 )
						begin
							y75 = 1'b1;	
							nx_state = s144;
						end
					else nx_state = s119;
				s120 : if( 1'b1 )
						begin
							y159 = 1'b1;	y166 = 1'b1;	y168 = 1'b1;	
							y171 = 1'b1;	y180 = 1'b1;	y182 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s145;
						end
					else nx_state = s120;
				s121 : if( x48 && x45 && x47 )
						begin
							y41 = 1'b1;	
							nx_state = s1;
						end
					else if( x48 && x45 && ~x47 )
						begin
							y42 = 1'b1;	
							nx_state = s10;
						end
					else if( x48 && ~x45 )
						begin
							y42 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x48 )
						nx_state = s121;
					else nx_state = s121;
				s122 : if( x48 )
						begin
							y42 = 1'b1;	
							nx_state = s146;
						end
					else if( ~x48 )
						nx_state = s122;
					else nx_state = s122;
				s123 : if( 1'b1 )
						begin
							y98 = 1'b1;	
							nx_state = s147;
						end
					else nx_state = s123;
				s124 : if( 1'b1 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	y207 = 1'b1;	
							y208 = 1'b1;	
							nx_state = s148;
						end
					else nx_state = s124;
				s125 : if( x60 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x60 && x63 && x23 )
						begin
							y23 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x60 && x63 && ~x23 )
						begin
							y28 = 1'b1;	y35 = 1'b1;	y81 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x60 && ~x63 && x23 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x60 && ~x63 && ~x23 )
						begin
							y28 = 1'b1;	y35 = 1'b1;	y81 = 1'b1;	
							nx_state = s150;
						end
					else nx_state = s125;
				s126 : if( 1'b1 )
						begin
							y57 = 1'b1;	y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s151;
						end
					else nx_state = s126;
				s127 : if( x16 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y120 = 1'b1;	y121 = 1'b1;	y122 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x16 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s127;
				s128 : if( 1'b1 )
						begin
							y113 = 1'b1;	
							nx_state = s152;
						end
					else nx_state = s128;
				s129 : if( 1'b1 )
						begin
							y45 = 1'b1;	
							nx_state = s153;
						end
					else nx_state = s129;
				s130 : if( x16 )
						begin
							y47 = 1'b1;	
							nx_state = s154;
						end
					else if( ~x16 )
						begin
							y161 = 1'b1;	y162 = 1'b1;	y195 = 1'b1;	
							y196 = 1'b1;	y200 = 1'b1;	
							nx_state = s155;
						end
					else nx_state = s130;
				s131 : if( x16 )
						begin
							y66 = 1'b1;	
							nx_state = s105;
						end
					else if( ~x16 )
						begin
							y12 = 1'b1;	y18 = 1'b1;	y19 = 1'b1;	
							y85 = 1'b1;	
							nx_state = s156;
						end
					else nx_state = s131;
				s132 : if( x16 )
						begin
							y63 = 1'b1;	
							nx_state = s157;
						end
					else if( ~x16 )
						begin
							y19 = 1'b1;	y86 = 1'b1;	y93 = 1'b1;	
							nx_state = s158;
						end
					else nx_state = s132;
				s133 : if( x20 )
						begin
							y138 = 1'b1;	
							nx_state = s133;
						end
					else if( ~x20 )
						begin
							y58 = 1'b1;	
							nx_state = s159;
						end
					else nx_state = s133;
				s134 : if( 1'b1 )
						begin
							y123 = 1'b1;	y162 = 1'b1;	
							nx_state = s160;
						end
					else nx_state = s134;
				s135 : if( 1'b1 )
						begin
							y123 = 1'b1;	y162 = 1'b1;	
							nx_state = s161;
						end
					else nx_state = s135;
				s136 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s162;
						end
					else nx_state = s136;
				s137 : if( 1'b1 )
						begin
							y157 = 1'b1;	y158 = 1'b1;	
							nx_state = s163;
						end
					else nx_state = s137;
				s138 : if( 1'b1 )
						begin
							y4 = 1'b1;	y6 = 1'b1;	y50 = 1'b1;	
							y88 = 1'b1;	
							nx_state = s164;
						end
					else nx_state = s138;
				s139 : if( 1'b1 )
						begin
							y4 = 1'b1;	
							nx_state = s165;
						end
					else nx_state = s139;
				s140 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s166;
						end
					else nx_state = s140;
				s141 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s167;
						end
					else nx_state = s141;
				s142 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s168;
						end
					else nx_state = s142;
				s143 : if( x54 )
						begin
							y153 = 1'b1;	
							nx_state = s169;
						end
					else if( ~x54 )
						nx_state = s143;
					else nx_state = s143;
				s144 : if( x4 )
						begin
							y73 = 1'b1;	
							nx_state = s118;
						end
					else if( ~x4 )
						nx_state = s144;
					else nx_state = s144;
				s145 : if( 1'b1 )
						begin
							y166 = 1'b1;	y168 = 1'b1;	y171 = 1'b1;	
							y175 = 1'b1;	y180 = 1'b1;	y181 = 1'b1;	
							y183 = 1'b1;	
							nx_state = s94;
						end
					else nx_state = s145;
				s146 : if( 1'b1 )
						begin
							y157 = 1'b1;	y159 = 1'b1;	y165 = 1'b1;	
							y166 = 1'b1;	y167 = 1'b1;	y168 = 1'b1;	
							y169 = 1'b1;	y175 = 1'b1;	y179 = 1'b1;	
							y180 = 1'b1;	y181 = 1'b1;	y182 = 1'b1;	
							nx_state = s170;
						end
					else nx_state = s146;
				s147 : if( 1'b1 )
						begin
							y157 = 1'b1;	y159 = 1'b1;	y175 = 1'b1;	
							y195 = 1'b1;	
							nx_state = s171;
						end
					else nx_state = s147;
				s148 : if( x16 )
						begin
							y20 = 1'b1;	y106 = 1'b1;	y109 = 1'b1;	
							nx_state = s40;
						end
					else if( ~x16 )
						begin
							y98 = 1'b1;	
							nx_state = s71;
						end
					else nx_state = s148;
				s149 : if( 1'b1 )
						begin
							y57 = 1'b1;	y81 = 1'b1;	y162 = 1'b1;	
							y195 = 1'b1;	
							nx_state = s172;
						end
					else nx_state = s149;
				s150 : if( 1'b1 )
						begin
							y57 = 1'b1;	y81 = 1'b1;	y162 = 1'b1;	
							y195 = 1'b1;	
							nx_state = s173;
						end
					else nx_state = s150;
				s151 : if( x16 )
						begin
							y32 = 1'b1;	
							nx_state = s174;
						end
					else if( ~x16 )
						begin
							y103 = 1'b1;	
							nx_state = s174;
						end
					else nx_state = s151;
				s152 : if( 1'b1 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	
							nx_state = s175;
						end
					else nx_state = s152;
				s153 : if( x2 && x1 )
						begin
							y119 = 1'b1;	y195 = 1'b1;	y202 = 1'b1;	
							nx_state = s127;
						end
					else if( x2 && ~x1 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x2 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else nx_state = s153;
				s154 : if( x55 && x2 && x1 )
						begin
							y119 = 1'b1;	y195 = 1'b1;	y202 = 1'b1;	
							nx_state = s127;
						end
					else if( x55 && x2 && ~x1 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( x55 && ~x2 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x55 )
						begin
							y46 = 1'b1;	
							nx_state = s129;
						end
					else nx_state = s154;
				s155 : if( x16 )
						nx_state = s176;
					else if( ~x16 && x55 && x2 && x1 )
						begin
							y119 = 1'b1;	y195 = 1'b1;	y202 = 1'b1;	
							nx_state = s127;
						end
					else if( ~x16 && x55 && x2 && ~x1 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x16 && x55 && ~x2 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( ~x16 && ~x55 )
						begin
							y46 = 1'b1;	
							nx_state = s129;
						end
					else nx_state = s155;
				s156 : if( 1'b1 )
						begin
							y147 = 1'b1;	
							nx_state = s177;
						end
					else nx_state = s156;
				s157 : if( 1'b1 )
						begin
							y85 = 1'b1;	y146 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s157;
				s158 : if( 1'b1 )
						begin
							y147 = 1'b1;	
							nx_state = s178;
						end
					else nx_state = s158;
				s159 : if( 1'b1 )
						begin
							y123 = 1'b1;	y195 = 1'b1;	y196 = 1'b1;	
							nx_state = s179;
						end
					else nx_state = s159;
				s160 : if( 1'b1 )
						begin
							y119 = 1'b1;	y162 = 1'b1;	
							nx_state = s180;
						end
					else nx_state = s160;
				s161 : if( 1'b1 )
						begin
							y119 = 1'b1;	y162 = 1'b1;	
							nx_state = s181;
						end
					else nx_state = s161;
				s162 : if( 1'b1 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y89 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s182;
						end
					else nx_state = s162;
				s163 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s183;
						end
					else nx_state = s163;
				s164 : if( 1'b1 )
						begin
							y63 = 1'b1;	
							nx_state = s184;
						end
					else nx_state = s164;
				s165 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s185;
						end
					else nx_state = s165;
				s166 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s186;
						end
					else nx_state = s166;
				s167 : if( 1'b1 )
						begin
							y81 = 1'b1;	y82 = 1'b1;	y84 = 1'b1;	
							nx_state = s187;
						end
					else nx_state = s167;
				s168 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s188;
						end
					else nx_state = s168;
				s169 : if( x54 )
						nx_state = s169;
					else if( ~x54 )
						nx_state = s189;
					else nx_state = s169;
				s170 : if( x48 && x45 && x47 )
						begin
							y41 = 1'b1;	
							nx_state = s1;
						end
					else if( x48 && x45 && ~x47 )
						begin
							y42 = 1'b1;	
							nx_state = s10;
						end
					else if( x48 && ~x45 )
						begin
							y42 = 1'b1;	
							nx_state = s69;
						end
					else if( ~x48 )
						nx_state = s170;
					else nx_state = s170;
				s171 : if( x16 && x3 )
						begin
							y20 = 1'b1;	y106 = 1'b1;	y107 = 1'b1;	
							nx_state = s37;
						end
					else if( x16 && ~x3 )
						begin
							y20 = 1'b1;	y107 = 1'b1;	y108 = 1'b1;	
							nx_state = s190;
						end
					else if( ~x16 )
						begin
							y98 = 1'b1;	
							nx_state = s147;
						end
					else nx_state = s171;
				s172 : if( x16 )
						begin
							y31 = 1'b1;	
							nx_state = s191;
						end
					else if( ~x16 )
						begin
							y101 = 1'b1;	
							nx_state = s191;
						end
					else nx_state = s172;
				s173 : if( x16 )
						begin
							y31 = 1'b1;	
							nx_state = s192;
						end
					else if( ~x16 )
						begin
							y101 = 1'b1;	
							nx_state = s192;
						end
					else nx_state = s173;
				s174 : if( 1'b1 )
						begin
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s193;
						end
					else nx_state = s174;
				s175 : if( x16 )
						nx_state = s1;
					else if( ~x16 )
						begin
							y120 = 1'b1;	y161 = 1'b1;	y162 = 1'b1;	
							y195 = 1'b1;	
							nx_state = s194;
						end
					else nx_state = s175;
				s176 : if( 1'b1 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	
							nx_state = s195;
						end
					else nx_state = s176;
				s177 : if( 1'b1 )
						begin
							y63 = 1'b1;	y65 = 1'b1;	
							nx_state = s196;
						end
					else nx_state = s177;
				s178 : if( 1'b1 )
						begin
							y85 = 1'b1;	y95 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y199 = 1'b1;	y200 = 1'b1;	
							nx_state = s197;
						end
					else nx_state = s178;
				s179 : if( x16 )
						begin
							y135 = 1'b1;	y136 = 1'b1;	y137 = 1'b1;	
							nx_state = s198;
						end
					else if( ~x16 )
						begin
							y190 = 1'b1;	y191 = 1'b1;	y192 = 1'b1;	
							nx_state = s199;
						end
					else nx_state = s179;
				s180 : if( 1'b1 )
						begin
							y120 = 1'b1;	y123 = 1'b1;	
							nx_state = s200;
						end
					else nx_state = s180;
				s181 : if( 1'b1 )
						begin
							y120 = 1'b1;	y123 = 1'b1;	
							nx_state = s201;
						end
					else nx_state = s181;
				s182 : if( 1'b1 )
						begin
							y17 = 1'b1;	
							nx_state = s202;
						end
					else nx_state = s182;
				s183 : if( 1'b1 )
						begin
							y158 = 1'b1;	y159 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s183;
				s184 : if( 1'b1 )
						begin
							y8 = 1'b1;	y10 = 1'b1;	y89 = 1'b1;	
							y90 = 1'b1;	
							nx_state = s203;
						end
					else nx_state = s184;
				s185 : if( 1'b1 )
						begin
							y6 = 1'b1;	y51 = 1'b1;	
							nx_state = s204;
						end
					else nx_state = s185;
				s186 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s205;
						end
					else nx_state = s186;
				s187 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s206;
						end
					else nx_state = s187;
				s188 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s207;
						end
					else nx_state = s188;
				s189 : if( 1'b1 )
						begin
							y72 = 1'b1;	
							nx_state = s208;
						end
					else nx_state = s189;
				s190 : if( 1'b1 )
						begin
							y98 = 1'b1;	
							nx_state = s209;
						end
					else nx_state = s190;
				s191 : if( 1'b1 )
						begin
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s210;
						end
					else nx_state = s191;
				s192 : if( 1'b1 )
						begin
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s211;
						end
					else nx_state = s192;
				s193 : if( x16 )
						begin
							y102 = 1'b1;	
							nx_state = s125;
						end
					else if( ~x16 && x60 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x16 && ~x60 && x63 && x23 )
						begin
							y23 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x16 && ~x60 && x63 && ~x23 )
						begin
							y28 = 1'b1;	y35 = 1'b1;	y81 = 1'b1;	
							nx_state = s149;
						end
					else if( ~x16 && ~x60 && ~x63 && x23 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s101;
						end
					else if( ~x16 && ~x60 && ~x63 && ~x23 )
						begin
							y28 = 1'b1;	y35 = 1'b1;	y81 = 1'b1;	
							nx_state = s150;
						end
					else nx_state = s193;
				s194 : if( x16 )
						begin
							y16 = 1'b1;	y84 = 1'b1;	y114 = 1'b1;	
							y115 = 1'b1;	y116 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x16 )
						begin
							y113 = 1'b1;	
							nx_state = s152;
						end
					else nx_state = s194;
				s195 : if( x16 )
						nx_state = s212;
					else if( ~x16 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	
							nx_state = s195;
						end
					else nx_state = s195;
				s196 : if( 1'b1 )
						begin
							y147 = 1'b1;	
							nx_state = s213;
						end
					else nx_state = s196;
				s197 : if( x16 )
						begin
							y65 = 1'b1;	
							nx_state = s78;
						end
					else if( ~x16 )
						begin
							y66 = 1'b1;	
							nx_state = s105;
						end
					else nx_state = s197;
				s198 : if( 1'b1 )
						begin
							y139 = 1'b1;	
							nx_state = s214;
						end
					else nx_state = s198;
				s199 : if( 1'b1 )
						begin
							y194 = 1'b1;	
							nx_state = s215;
						end
					else nx_state = s199;
				s200 : if( 1'b1 )
						begin
							y123 = 1'b1;	y161 = 1'b1;	y162 = 1'b1;	
							nx_state = s201;
						end
					else nx_state = s200;
				s201 : if( x50 )
						nx_state = s216;
					else if( ~x50 )
						begin
							y160 = 1'b1;	
							nx_state = s217;
						end
					else nx_state = s201;
				s202 : if( 1'b1 )
						begin
							y5 = 1'b1;	y16 = 1'b1;	y51 = 1'b1;	
							y162 = 1'b1;	y195 = 1'b1;	
							nx_state = s112;
						end
					else nx_state = s202;
				s203 : if( x7 )
						begin
							y17 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x7 && x8 && x9 )
						begin
							y17 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x7 && x8 && ~x9 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x7 && ~x8 && x9 && x11 )
						begin
							y17 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x7 && ~x8 && x9 && ~x11 && x12 )
						begin
							y17 = 1'b1;	
							nx_state = s218;
						end
					else if( ~x7 && ~x8 && x9 && ~x11 && ~x12 )
						begin
							y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && ~x8 && ~x9 && x10 )
						begin
							y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && ~x8 && ~x9 && ~x10 )
						begin
							y17 = 1'b1;	
							nx_state = s218;
						end
					else nx_state = s203;
				s204 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s219;
						end
					else nx_state = s204;
				s205 : if( 1'b1 )
						begin
							y10 = 1'b1;	
							nx_state = s220;
						end
					else nx_state = s205;
				s206 : if( 1'b1 )
						begin
							y1 = 1'b1;	y81 = 1'b1;	y82 = 1'b1;	
							nx_state = s59;
						end
					else nx_state = s206;
				s207 : if( 1'b1 )
						begin
							y10 = 1'b1;	
							nx_state = s221;
						end
					else nx_state = s207;
				s208 : if( x54 && x12 )
						begin
							y74 = 1'b1;	
							nx_state = s208;
						end
					else if( x54 && ~x12 )
						begin
							y72 = 1'b1;	y73 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x54 && x12 )
						begin
							y72 = 1'b1;	y73 = 1'b1;	
							nx_state = s222;
						end
					else if( ~x54 && ~x12 )
						begin
							y74 = 1'b1;	
							nx_state = s208;
						end
					else nx_state = s208;
				s209 : if( 1'b1 )
						begin
							y159 = 1'b1;	y175 = 1'b1;	y195 = 1'b1;	
							nx_state = s223;
						end
					else nx_state = s209;
				s210 : if( x16 )
						begin
							y34 = 1'b1;	
							nx_state = s224;
						end
					else if( ~x16 && x23 )
						begin
							y23 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x16 && ~x23 )
						begin
							y28 = 1'b1;	y35 = 1'b1;	y81 = 1'b1;	
							nx_state = s149;
						end
					else nx_state = s210;
				s211 : if( x16 )
						begin
							y34 = 1'b1;	
							nx_state = s74;
						end
					else if( ~x16 )
						begin
							y25 = 1'b1;	y26 = 1'b1;	
							nx_state = s101;
						end
					else nx_state = s211;
				s212 : if( 1'b1 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	y201 = 1'b1;	
							nx_state = s225;
						end
					else nx_state = s212;
				s213 : if( 1'b1 )
						begin
							y18 = 1'b1;	y86 = 1'b1;	y92 = 1'b1;	
							y95 = 1'b1;	y161 = 1'b1;	y195 = 1'b1;	
							y199 = 1'b1;	y200 = 1'b1;	
							nx_state = s226;
						end
					else nx_state = s213;
				s214 : if( 1'b1 )
						begin
							y119 = 1'b1;	y124 = 1'b1;	y195 = 1'b1;	
							nx_state = s227;
						end
					else nx_state = s214;
				s215 : if( 1'b1 )
						begin
							y119 = 1'b1;	y125 = 1'b1;	y195 = 1'b1;	
							nx_state = s228;
						end
					else nx_state = s215;
				s216 : if( 1'b1 )
						begin
							y160 = 1'b1;	
							nx_state = s217;
						end
					else nx_state = s216;
				s217 : if( x24 )
						begin
							y163 = 1'b1;	y164 = 1'b1;	
							nx_state = s2;
						end
					else if( ~x24 )
						nx_state = s1;
					else nx_state = s217;
				s218 : if( x7 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x7 && x8 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x7 && ~x8 && x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x7 && ~x8 && ~x9 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s218;
				s219 : if( 1'b1 )
						begin
							y8 = 1'b1;	
							nx_state = s229;
						end
					else nx_state = s219;
				s220 : if( x7 )
						begin
							y17 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x7 && x9 && x12 )
						begin
							y17 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x7 && x9 && ~x12 && x8 )
						begin
							y17 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x7 && x9 && ~x12 && ~x8 && x11 )
						begin
							y17 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x7 && x9 && ~x12 && ~x8 && ~x11 )
						begin
							y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && ~x9 && x8 && x39 )
						begin
							y17 = 1'b1;	
							nx_state = s230;
						end
					else if( ~x7 && ~x9 && x8 && ~x39 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x7 && ~x9 && ~x8 && x10 )
						begin
							y37 = 1'b1;	
							nx_state = s59;
						end
					else if( ~x7 && ~x9 && ~x8 && ~x10 )
						begin
							y17 = 1'b1;	
							nx_state = s230;
						end
					else nx_state = s220;
				s221 : if( x7 && x10 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( x7 && ~x10 )
						begin
							y13 = 1'b1;	
							nx_state = s231;
						end
					else if( ~x7 && x8 && x9 )
						begin
							y67 = 1'b1;	y68 = 1'b1;	
							nx_state = s232;
						end
					else if( ~x7 && x8 && ~x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x7 && ~x8 && x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x7 && ~x8 && ~x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else nx_state = s221;
				s222 : if( x40 && x29 )
						begin
							y71 = 1'b1;	
							nx_state = s233;
						end
					else if( x40 && ~x29 )
						nx_state = s222;
					else if( ~x40 )
						begin
							y74 = 1'b1;	y152 = 1'b1;	y154 = 1'b1;	
							nx_state = s143;
						end
					else nx_state = s222;
				s223 : if( x16 )
						nx_state = s1;
					else if( ~x16 )
						begin
							y98 = 1'b1;	
							nx_state = s209;
						end
					else nx_state = s223;
				s224 : if( x23 )
						begin
							y23 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x23 )
						begin
							y28 = 1'b1;	y35 = 1'b1;	y81 = 1'b1;	
							nx_state = s149;
						end
					else nx_state = s224;
				s225 : if( x16 && x55 && x2 && x1 )
						begin
							y119 = 1'b1;	y195 = 1'b1;	y202 = 1'b1;	
							nx_state = s127;
						end
					else if( x16 && x55 && x2 && ~x1 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( x16 && x55 && ~x2 )
						begin
							y117 = 1'b1;	y118 = 1'b1;	y119 = 1'b1;	
							y121 = 1'b1;	y122 = 1'b1;	y123 = 1'b1;	
							y124 = 1'b1;	y125 = 1'b1;	
							nx_state = s128;
						end
					else if( x16 && ~x55 )
						begin
							y46 = 1'b1;	
							nx_state = s129;
						end
					else if( ~x16 )
						begin
							y120 = 1'b1;	y195 = 1'b1;	y201 = 1'b1;	
							nx_state = s225;
						end
					else nx_state = s225;
				s226 : if( x16 )
						begin
							y85 = 1'b1;	y146 = 1'b1;	
							nx_state = s234;
						end
					else if( ~x16 )
						begin
							y156 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s226;
				s227 : if( x16 )
						begin
							y134 = 1'b1;	
							nx_state = s235;
						end
					else if( ~x16 )
						begin
							y139 = 1'b1;	
							nx_state = s214;
						end
					else nx_state = s227;
				s228 : if( x16 )
						begin
							y189 = 1'b1;	
							nx_state = s236;
						end
					else if( ~x16 )
						begin
							y194 = 1'b1;	
							nx_state = s215;
						end
					else nx_state = s228;
				s229 : if( 1'b1 )
						begin
							y83 = 1'b1;	
							nx_state = s237;
						end
					else nx_state = s229;
				s230 : if( x39 && x7 && x10 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s138;
						end
					else if( x39 && x7 && ~x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y18 = 1'b1;	
							y19 = 1'b1;	
							nx_state = s137;
						end
					else if( x39 && ~x7 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x39 && x7 && x10 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else if( ~x39 && x7 && ~x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y18 = 1'b1;	
							y19 = 1'b1;	
							nx_state = s137;
						end
					else if( ~x39 && ~x7 && x9 )
						begin
							y11 = 1'b1;	y12 = 1'b1;	y13 = 1'b1;	
							y14 = 1'b1;	y15 = 1'b1;	
							nx_state = s113;
						end
					else if( ~x39 && ~x7 && ~x9 && x8 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s138;
						end
					else if( ~x39 && ~x7 && ~x9 && ~x8 )
						begin
							y1 = 1'b1;	y2 = 1'b1;	
							nx_state = s57;
						end
					else nx_state = s230;
				s231 : if( x37 )
						begin
							y17 = 1'b1;	y93 = 1'b1;	y95 = 1'b1;	
							nx_state = s55;
						end
					else if( ~x37 )
						begin
							y2 = 1'b1;	y16 = 1'b1;	
							nx_state = s56;
						end
					else nx_state = s231;
				s232 : if( 1'b1 )
						nx_state = s59;
					else nx_state = s232;
				s233 : if( x12 )
						begin
							y69 = 1'b1;	y70 = 1'b1;	y79 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x12 )
						begin
							y69 = 1'b1;	y70 = 1'b1;	
							nx_state = s1;
						end
					else nx_state = s233;
				s234 : if( 1'b1 )
						begin
							y12 = 1'b1;	y86 = 1'b1;	y93 = 1'b1;	
							y209 = 1'b1;	
							nx_state = s238;
						end
					else nx_state = s234;
				s235 : if( x20 )
						begin
							y138 = 1'b1;	
							nx_state = s239;
						end
					else if( ~x20 )
						nx_state = s235;
					else nx_state = s235;
				s236 : if( x17 )
						begin
							y193 = 1'b1;	
							nx_state = s240;
						end
					else if( ~x17 )
						nx_state = s236;
					else nx_state = s236;
				s237 : if( 1'b1 )
						begin
							y10 = 1'b1;	
							nx_state = s241;
						end
					else nx_state = s237;
				s238 : if( 1'b1 )
						begin
							y12 = 1'b1;	y19 = 1'b1;	y86 = 1'b1;	
							nx_state = s242;
						end
					else nx_state = s238;
				s239 : if( x20 )
						begin
							y138 = 1'b1;	
							nx_state = s239;
						end
					else if( ~x20 )
						begin
							y58 = 1'b1;	
							nx_state = s243;
						end
					else nx_state = s239;
				s240 : if( x17 )
						begin
							y193 = 1'b1;	
							nx_state = s240;
						end
					else if( ~x17 )
						begin
							y145 = 1'b1;	
							nx_state = s244;
						end
					else nx_state = s240;
				s241 : if( 1'b1 )
						begin
							y94 = 1'b1;	
							nx_state = s245;
						end
					else nx_state = s241;
				s242 : if( 1'b1 )
						begin
							y18 = 1'b1;	y86 = 1'b1;	y146 = 1'b1;	
							nx_state = s246;
						end
					else nx_state = s242;
				s243 : if( 1'b1 )
						begin
							y131 = 1'b1;	
							nx_state = s247;
						end
					else nx_state = s243;
				s244 : if( 1'b1 )
						begin
							y60 = 1'b1;	y61 = 1'b1;	y140 = 1'b1;	
							y143 = 1'b1;	
							nx_state = s248;
						end
					else nx_state = s244;
				s245 : if( 1'b1 )
						begin
							y12 = 1'b1;	y17 = 1'b1;	y18 = 1'b1;	
							y86 = 1'b1;	
							nx_state = s249;
						end
					else nx_state = s245;
				s246 : if( 1'b1 )
						begin
							y156 = 1'b1;	
							nx_state = s76;
						end
					else nx_state = s246;
				s247 : if( 1'b1 )
						begin
							y123 = 1'b1;	y195 = 1'b1;	y200 = 1'b1;	
							y203 = 1'b1;	y204 = 1'b1;	
							nx_state = s250;
						end
					else nx_state = s247;
				s248 : if( 1'b1 )
						begin
							y12 = 1'b1;	y85 = 1'b1;	y133 = 1'b1;	
							nx_state = s251;
						end
					else nx_state = s248;
				s249 : if( x7 && x10 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s138;
						end
					else if( x7 && ~x10 )
						begin
							y3 = 1'b1;	y4 = 1'b1;	y5 = 1'b1;	
							y6 = 1'b1;	y7 = 1'b1;	y8 = 1'b1;	
							y9 = 1'b1;	y10 = 1'b1;	y18 = 1'b1;	
							y19 = 1'b1;	
							nx_state = s137;
						end
					else if( ~x7 )
						begin
							y18 = 1'b1;	y19 = 1'b1;	
							nx_state = s138;
						end
					else nx_state = s249;
				s250 : if( x16 )
						begin
							y12 = 1'b1;	y85 = 1'b1;	y86 = 1'b1;	
							y133 = 1'b1;	
							nx_state = s252;
						end
					else if( ~x16 )
						begin
							y123 = 1'b1;	y195 = 1'b1;	y200 = 1'b1;	
							y203 = 1'b1;	
							nx_state = s253;
						end
					else nx_state = s250;
				s251 : if( 1'b1 )
						begin
							y187 = 1'b1;	y188 = 1'b1;	
							nx_state = s254;
						end
					else nx_state = s251;
				s252 : if( 1'b1 )
						begin
							y187 = 1'b1;	y188 = 1'b1;	
							nx_state = s255;
						end
					else nx_state = s252;
				s253 : if( x16 )
						begin
							y18 = 1'b1;	y85 = 1'b1;	y93 = 1'b1;	
							y133 = 1'b1;	
							nx_state = s252;
						end
					else if( ~x16 )
						begin
							y123 = 1'b1;	y195 = 1'b1;	y200 = 1'b1;	
							nx_state = s256;
						end
					else nx_state = s253;
				s254 : if( 1'b1 )
						begin
							y18 = 1'b1;	y93 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y196 = 1'b1;	y199 = 1'b1;	
							nx_state = s257;
						end
					else nx_state = s254;
				s255 : if( 1'b1 )
						begin
							y18 = 1'b1;	y93 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y196 = 1'b1;	y199 = 1'b1;	
							nx_state = s258;
						end
					else nx_state = s255;
				s256 : if( x16 )
						begin
							y12 = 1'b1;	y85 = 1'b1;	y133 = 1'b1;	
							nx_state = s252;
						end
					else if( ~x16 )
						begin
							y132 = 1'b1;	
							nx_state = s259;
						end
					else nx_state = s256;
				s257 : if( x16 )
						begin
							y186 = 1'b1;	
							nx_state = s260;
						end
					else if( ~x16 )
						begin
							y185 = 1'b1;	
							nx_state = s261;
						end
					else nx_state = s257;
				s258 : if( x16 )
						begin
							y186 = 1'b1;	
							nx_state = s262;
						end
					else if( ~x16 )
						begin
							y185 = 1'b1;	
							nx_state = s263;
						end
					else nx_state = s258;
				s259 : if( x59 )
						begin
							y59 = 1'b1;	y60 = 1'b1;	y61 = 1'b1;	
							y62 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x59 )
						begin
							y135 = 1'b1;	y136 = 1'b1;	y137 = 1'b1;	
							nx_state = s198;
						end
					else nx_state = s259;
				s260 : if( 1'b1 )
						begin
							y12 = 1'b1;	y93 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y196 = 1'b1;	y199 = 1'b1;	
							nx_state = s264;
						end
					else nx_state = s260;
				s261 : if( 1'b1 )
						begin
							y186 = 1'b1;	
							nx_state = s260;
						end
					else nx_state = s261;
				s262 : if( 1'b1 )
						begin
							y12 = 1'b1;	y93 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y196 = 1'b1;	y199 = 1'b1;	
							nx_state = s265;
						end
					else nx_state = s262;
				s263 : if( 1'b1 )
						begin
							y186 = 1'b1;	
							nx_state = s262;
						end
					else nx_state = s263;
				s264 : if( x16 )
						begin
							y18 = 1'b1;	y93 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y196 = 1'b1;	y199 = 1'b1;	
							nx_state = s257;
						end
					else if( ~x16 )
						begin
							y190 = 1'b1;	y191 = 1'b1;	y192 = 1'b1;	
							nx_state = s266;
						end
					else nx_state = s264;
				s265 : if( x16 )
						begin
							y18 = 1'b1;	y93 = 1'b1;	y161 = 1'b1;	
							y195 = 1'b1;	y196 = 1'b1;	y199 = 1'b1;	
							nx_state = s258;
						end
					else if( ~x16 && x59 )
						begin
							y59 = 1'b1;	y60 = 1'b1;	y61 = 1'b1;	
							y62 = 1'b1;	
							nx_state = s1;
						end
					else if( ~x16 && ~x59 )
						begin
							y135 = 1'b1;	y136 = 1'b1;	y137 = 1'b1;	
							nx_state = s198;
						end
					else nx_state = s265;
				s266 : if( 1'b1 )
						begin
							y194 = 1'b1;	
							nx_state = s267;
						end
					else nx_state = s266;
				s267 : if( 1'b1 )
						begin
							y119 = 1'b1;	y125 = 1'b1;	y195 = 1'b1;	
							nx_state = s268;
						end
					else nx_state = s267;
				s268 : if( x16 )
						begin
							y189 = 1'b1;	
							nx_state = s269;
						end
					else if( ~x16 )
						begin
							y194 = 1'b1;	
							nx_state = s267;
						end
					else nx_state = s268;
				s269 : if( x17 )
						begin
							y193 = 1'b1;	
							nx_state = s270;
						end
					else if( ~x17 )
						nx_state = s269;
					else nx_state = s269;
				s270 : if( x17 )
						begin
							y193 = 1'b1;	
							nx_state = s270;
						end
					else if( ~x17 )
						begin
							y144 = 1'b1;	
							nx_state = s271;
						end
					else nx_state = s270;
				s271 : if( 1'b1 )
						begin
							y205 = 1'b1;	
							nx_state = s272;
						end
					else nx_state = s271;
				s272 : if( 1'b1 )
						begin
							y123 = 1'b1;	y195 = 1'b1;	y198 = 1'b1;	
							y204 = 1'b1;	y206 = 1'b1;	
							nx_state = s273;
						end
					else nx_state = s272;
				s273 : if( x16 )
						begin
							y140 = 1'b1;	y141 = 1'b1;	y142 = 1'b1;	
							y143 = 1'b1;	
							nx_state = s274;
						end
					else if( ~x16 )
						begin
							y60 = 1'b1;	y61 = 1'b1;	y140 = 1'b1;	
							y143 = 1'b1;	
							nx_state = s248;
						end
					else nx_state = s273;
				s274 : if( 1'b1 )
						begin
							y135 = 1'b1;	y136 = 1'b1;	y137 = 1'b1;	
							nx_state = s21;
						end
					else nx_state = s274;

			default : nx_state = 0;
		endcase
	end
endmodule
