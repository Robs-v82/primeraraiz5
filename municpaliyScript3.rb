dataArr=[]
rawData.each_line{|l| line = l.split(","); dataArr.push(line)}
dataArr.each{|x|x.each{|y|y.strip!}}

rawData="01001,230
01002,4
01003,11
01004,6
01005,33
01006,10
01007,12
01008,3
01009,3
01010,6
01011,6
02001,326
02002,511
02003,143
02004,4211
02005,290
03001,31
03002,20
03003,530
03008,443
03009,12
04001,1
04002,30
04003,55
04004,4
04005,1
04006,2
04007,0
04008,0
04009,5
04010,4
04011,18
05001,0
05002,74
05003,47
05004,39
05005,0
05006,6
05007,1
05008,3
05009,26
05010,12
05011,3
05012,55
05013,52
05014,47
05015,1
05016,0
05017,109
05018,171
05019,54
05020,13
05021,2
05022,61
05023,0
05024,13
05025,189
05026,1
05027,60
05028,16
05029,0
05030,410
05031,6
05032,10
05033,103
05034,1
05035,2318
05036,23
05037,46
05038,50
06001,136
06002,423
06003,23
06004,39
06005,43
06006,3
06007,554
06008,7
06009,525
06010,135
07001,1
07002,0
07003,3
07004,0
07005,0
07006,1
07007,1
07008,3
07009,12
07010,0
07011,0
07012,7
07013,0
07014,1
07015,6
07016,1
07017,13
07018,0
07019,45
07020,1
07021,1
07022,0
07023,6
07024,0
07025,0
07026,1
07027,10
07028,0
07029,0
07030,3
07031,3
07032,3
07033,1
07034,34
07035,11
07036,0
07037,7
07038,0
07039,5
07040,10
07041,2
07042,0
07043,1
07044,2
07045,0
07046,8
07047,0
07048,4
07049,0
07050,0
07051,25
07052,2
07053,1
07054,2
07055,0
07056,0
07057,6
07058,0
07059,4
07060,0
07061,16
07062,3
07063,0
07064,0
07065,24
07066,5
07067,0
07068,1
07069,9
07070,0
07071,1
07072,21
07073,0
07074,17
07075,0
07076,0
07077,1
07078,13
07079,0
07080,1
07081,5
07082,0
07083,4
07084,1
07085,0
07086,3
07087,45
07088,0
07089,103
07090,0
07091,0
07092,3
07093,2
07094,3
07096,3
07097,25
07098,0
07099,29
07100,0
07101,129
07102,29
07103,2
07104,3
07105,1
07106,6
07107,14
07108,10
07109,3
07110,0
07111,1
07112,0
07113,0
07114,16
07115,0
07116,12
07117,0
07118,0
07119,0
08001,73
08002,56
08003,25
08004,63
08005,135
08006,19
08007,85
08008,40
08009,150
08010,29
08011,276
08012,25
08013,39
08014,6
08015,2
08016,12
08017,231
08018,52
08019,3659
08020,29
08021,292
08022,5
08023,12
08024,17
08025,15
08026,28
08027,182
08028,196
08029,452
08030,35
08031,81
08032,558
08033,1
08034,20
08035,35
08036,231
08037,10192
08038,16
08039,21
08040,223
08041,12
08042,0
08043,2
08044,65
08045,270
08046,29
08047,48
08048,40
08049,2
08050,167
08051,38
08052,74
08053,104
08054,49
08055,90
08056,4
08057,1
08058,18
08059,7
08060,13
08061,22
08062,70
08063,50
08064,1
08065,122
08066,71
08067,24
09002,77
09003,81
09004,36
09005,339
09006,81
09007,333
09008,8
09009,11
09010,76
09011,83
09012,122
09013,52
09014,44
09015,239
09016,93
09017,167
10001,53
10002,6
10003,15
10004,60
10005,1107
10006,2
10007,1103
10008,24
10009,32
10010,1
10011,10
10012,372
10013,36
10014,77
10015,6
10016,31
10017,39
10018,58
10019,17
10020,11
10021,2
10022,51
10023,211
10024,18
10025,10
10026,139
10027,0
10028,5
10029,0
10030,1
10031,6
10032,227
10033,9
10034,65
10035,50
10036,32
10037,8
10038,70
10039,23
11001,43
11002,194
11003,48
11004,139
11005,165
11006,0
11007,574
11008,15
11009,41
11010,20
11011,102
11012,26
11013,0
11014,37
11015,71
11016,9
11017,322
11018,27
11019,70
11020,801
11021,45
11022,6
11023,338
11024,4
11025,25
11026,36
11027,316
11028,224
11029,2
11030,26
11031,93
11032,13
11033,69
11034,0
11035,136
11036,18
11037,148
11038,25
11039,73
11040,0
11041,61
11042,64
11043,0
11044,79
11045,3
11046,93
12001,5813
12002,11
12003,145
12004,6
12005,6
12006,75
12007,94
12008,7
12009,1
12010,14
12011,303
12012,81
12013,12
12014,32
12015,33
12016,37
12017,48
12018,19
12019,7
12020,31
12021,350
12022,237
12023,75
12024,0
12025,5
12026,11
12027,37
12028,407
12029,1114
12030,12
12031,19
12032,131
12033,5
12034,48
12035,527
12036,20
12037,16
12038,263
12039,47
12040,115
12041,3
12042,20
12043,7
12044,11
12045,8
12046,101
12047,7
12048,194
12049,26
12050,231
12051,63
12052,24
12053,90
12054,214
12055,265
12056,18
12057,284
12058,160
12059,83
12060,12
12061,73
12062,27
12063,8
12064,23
12065,0
12066,66
12067,38
12068,145
12069,6
12070,2
12071,4
12072,31
12073,78
12074,105
12075,176
12076,1
12077,16
12078,5
12079,0
12080,9
12081,0
13001,6
13002,7
13003,10
13004,1
13005,0
13006,4
13007,0
13008,4
13009,4
13010,5
13011,0
13012,9
13013,24
13014,1
13015,0
13016,8
13017,0
13018,0
13019,2
13020,0
13021,2
13022,7
13023,1
13024,3
13025,1
13026,0
13027,3
13028,27
13029,6
13030,12
13031,2
13032,0
13033,1
13034,0
13035,1
13036,0
13037,1
13038,3
13039,3
13040,3
13041,3
13042,0
13043,0
13044,2
13045,1
13046,4
13047,0
13048,79
13049,0
13050,1
13051,26
13052,5
13053,3
13054,2
13055,1
13056,7
13057,5
13058,2
13059,0
13060,2
13061,10
13062,0
13063,20
13064,3
13065,1
13066,5
13067,20
13068,0
13069,42
13070,2
13071,0
13072,1
13073,6
13074,5
13075,3
13076,35
13077,42
13078,0
13079,0
13080,3
13081,2
13082,7
13083,11
13084,0
14001,5
14002,18
14003,10
14004,5
14005,7
14006,8
14007,2
14008,19
14009,15
14010,4
14011,0
14012,2
14013,44
14014,3
14015,21
14016,36
14017,6
14018,111
14019,3
14020,4
14021,17
14022,43
14023,39
14024,12
14025,13
14026,1
14027,13
14028,0
14029,1
14030,31
14031,23
14032,0
14033,17
14034,7
14035,32
14036,1
14037,7
14038,10
14039,1037
14040,15
14041,7
14042,7
14043,19
14044,80
14045,18
14046,4
14047,13
14048,9
14049,56
14050,58
14051,15
14052,0
14053,111
14054,0
14055,33
14056,10
14057,3
14058,13
14059,10
14060,2
14061,8
14062,0
14063,52
14064,11
14065,36
14066,12
14067,151
14068,2
14069,15
14070,154
14071,10
14072,0
14073,13
14074,4
14075,0
14076,10
14077,8
14078,24
14079,14
14080,32
14081,1
14082,23
14083,37
14084,13
14085,24
14086,13
14087,44
14088,6
14089,1
14090,4
14091,15
14092,12
14093,28
14094,46
14095,16
14096,35
14097,427
14098,530
14099,5
14100,34
14101,303
14102,13
14103,5
14104,1
14105,25
14106,0
14107,4
14108,28
14109,10
14110,0
14111,3
14112,2
14113,4
14114,5
14115,4
14116,2
14117,3
14118,15
14119,24
14120,957
14121,12
14122,8
14123,12
14124,22
15001,3
15002,50
15003,7
15004,4
15005,34
15006,0
15007,1
15008,5
15009,13
15010,5
15011,7
15012,54
15013,58
15014,6
15015,3
15016,28
15017,3
15018,6
15019,0
15020,112
15021,4
15022,6
15023,23
15024,14
15025,212
15026,0
15027,0
15028,5
15029,53
15030,1
15031,168
15032,7
15033,902
15034,4
15035,29
15036,0
15037,69
15038,5
15039,144
15040,5
15041,1
15042,8
15043,3
15044,12
15045,15
15046,13
15047,4
15048,4
15049,1
15050,12
15051,18
15052,1
15053,16
15054,31
15055,2
15056,0
15057,339
15058,648
15059,17
15060,78
15061,14
15062,41
15063,7
15064,1
15065,13
15066,5
15067,19
15068,12
15069,0
15070,134
15071,7
15072,0
15073,0
15074,0
15075,6
15076,9
15077,1
15078,3
15079,4
15080,19
15081,126
15082,37
15083,0
15084,5
15085,6
15086,11
15087,9
15088,21
15089,4
15090,2
15091,14
15092,30
15093,25
15094,3
15095,35
15096,14
15097,1
15098,0
15099,71
15100,9
15101,4
15102,0
15103,58
15104,299
15105,32
15106,164
15107,10
15108,46
15109,149
15110,30
15111,1
15112,3
15113,4
15114,20
15115,3
15116,2
15117,2
15118,53
15119,3
15120,39
15121,148
15122,153
15123,79
15124,2
15125,10
16001,21
16002,62
16003,12
16004,15
16005,1
16006,587
16007,6
16008,65
16009,54
16010,64
16011,47
16012,132
16013,13
16014,43
16015,39
16016,5
16017,14
16018,13
16019,25
16020,28
16021,4
16022,32
16023,5
16024,15
16025,18
16026,18
16027,6
16028,20
16029,31
16030,58
16031,4
16032,5
16033,53
16034,64
16035,73
16036,11
16037,4
16038,69
16039,15
16040,10
16041,7
16042,38
16043,87
16044,8
16045,85
16046,10
16047,12
16048,11
16049,18
16050,32
16051,24
16052,493
16053,1068
16054,6
16055,121
16056,14
16057,13
16058,9
16059,11
16060,13
16061,14
16062,24
16063,2
16064,90
16065,42
16066,80
16067,7
16068,23
16069,166
16070,9
16071,33
16072,4
16073,14
16074,23
16075,85
16076,159
16077,44
16078,16
16079,53
16080,5
16081,14
16082,56
16083,79
16084,24
16085,34
16086,90
16087,16
16088,81
16089,67
16090,17
16091,23
16092,54
16093,4
16094,15
16095,20
16096,52
16097,25
16098,15
16099,29
16100,7
16101,20
16102,565
16103,52
16104,22
16105,55
16106,122
16107,34
16108,462
16109,2
16110,31
16111,52
16112,116
16113,5
17001,59
17002,32
17003,27
17004,72
17005,31
17006,212
17007,804
17008,144
17009,71
17010,20
17011,288
17012,138
17013,8
17014,24
17015,66
17016,7
17017,187
17018,287
17019,12
17020,61
17021,36
17022,5
17023,8
17024,138
17025,51
17026,18
17027,4
17028,177
17029,173
17030,48
17031,63
17032,1
17033,15
18001,63
18002,4
18003,1
18004,20
18005,23
18006,14
18007,2
18008,139
18009,23
18010,26
18011,54
18012,55
18013,3
18014,14
18015,38
18016,41
18017,837
18018,29
18019,6
18020,56
19001,1
19002,9
19003,14
19004,46
19005,28
19006,375
19007,0
19008,8
19009,360
19010,15
19011,32
19012,39
19013,69
19014,17
19015,14
19016,8
19017,8
19018,157
19019,86
19020,28
19021,172
19022,32
19023,23
19024,0
19025,20
19026,410
19027,15
19028,1
19029,4
19030,0
19031,336
19032,8
19033,65
19034,16
19035,1
19036,1
19037,35
19038,70
19039,1926
19040,7
19041,53
19042,14
19043,0
19044,42
19045,69
19046,212
19047,5
19048,212
19049,110
19050,53
19051,3
20001,0
20002,45
20003,0
20004,0
20005,12
20006,3
20007,1
20008,0
20009,1
20010,3
20011,0
20012,3
20013,0
20014,12
20015,2
20016,0
20017,0
20018,0
20019,0
20020,5
20021,24
20022,2
20023,2
20024,0
20025,18
20026,1
20027,0
20028,7
20029,4
20030,11
20031,0
20032,0
20033,0
20034,3
20035,0
20036,3
20037,6
20038,0
20039,32
20040,0
20041,2
20042,2
20043,153
20044,80
20045,3
20046,1
20047,0
20048,0
20049,0
20050,0
20051,0
20052,0
20053,3
20054,0
20055,3
20056,3
20057,30
20058,7
20059,45
20060,0
20061,0
20062,0
20063,0
20064,0
20065,0
20066,0
20067,165
20068,20
20069,0
20070,2
20071,0
20072,1
20073,56
20074,0
20075,0
20076,1
20077,3
20078,0
20079,57
20080,0
20081,1
20082,3
20083,2
20084,2
20085,12
20086,0
20087,4
20088,0
20089,1
20090,4
20091,3
20092,1
20093,0
20094,0
20095,0
20096,0
20097,0
20098,0
20099,0
20100,0
20101,0
20102,3
20103,3
20104,0
20105,0
20106,0
20107,11
20108,0
20109,0
20110,0
20111,1
20112,0
20113,2
20114,0
20115,4
20116,0
20117,5
20118,0
20119,0
20120,0
20121,0
20122,0
20123,0
20124,10
20125,1
20126,1
20127,0
20128,0
20129,0
20130,0
20131,2
20132,0
20133,0
20134,11
20135,0
20136,0
20137,0
20138,0
20139,0
20140,0
20141,2
20142,1
20143,8
20144,0
20145,1
20146,0
20147,0
20148,0
20149,0
20150,2
20151,0
20152,1
20153,1
20154,0
20155,0
20156,0
20157,18
20158,0
20159,1
20160,0
20161,0
20162,0
20163,0
20164,0
20165,0
20166,1
20167,0
20168,0
20169,1
20170,0
20171,5
20172,0
20173,0
20174,2
20175,0
20176,0
20177,1
20178,3
20179,1
20180,3
20181,0
20182,0
20183,1
20184,259
20185,7
20186,0
20187,0
20188,0
20189,0
20190,24
20191,0
20192,0
20193,2
20194,0
20195,0
20196,0
20197,0
20198,3
20199,0
20200,0
20201,0
20202,1
20203,0
20204,0
20205,2
20206,0
20207,1
20208,10
20209,1
20210,0
20211,0
20212,0
20213,2
20214,0
20215,0
20216,0
20217,2
20218,0
20219,0
20220,0
20221,2
20222,0
20223,0
20224,0
20225,4
20226,0
20227,2
20228,0
20229,1
20230,0
20231,1
20232,1
20233,0
20234,0
20235,1
20236,0
20237,1
20238,1
20239,0
20240,1
20241,0
20242,1
20243,0
20244,0
20245,0
20246,0
20247,0
20248,0
20249,0
20250,0
20251,0
20252,0
20253,3
20254,0
20255,0
20256,0
20257,0
20258,0
20259,0
20260,0
20261,0
20262,0
20263,0
20264,0
20265,1
20266,2
20267,0
20268,0
20269,0
20270,0
20271,0
20272,2
20273,0
20274,0
20275,0
20276,1
20277,5
20278,34
20279,1
20280,0
20281,0
20282,0
20283,0
20284,2
20285,1
20286,0
20287,0
20288,0
20289,0
20290,0
20291,6
20292,0
20293,6
20294,0
20295,0
20296,0
20297,0
20298,3
20299,0
20300,3
20301,0
20302,3
20303,0
20304,0
20305,0
20306,0
20307,2
20308,0
20309,2
20310,3
20311,0
20312,5
20313,0
20314,0
20315,0
20316,5
20317,0
20318,52
20319,0
20320,0
20321,0
20322,0
20323,0
20324,18
20325,0
20326,0
20327,16
20328,2
20329,0
20330,0
20331,0
20332,0
20333,14
20334,31
20335,0
20336,0
20337,0
20338,5
20339,0
20340,1
20341,0
20342,4
20343,0
20344,0
20345,0
20346,0
20347,0
20348,5
20349,0
20350,6
20351,0
20352,0
20353,1
20354,0
20355,0
20356,0
20357,0
20358,0
20359,0
20360,0
20361,0
20362,0
20363,0
20364,9
20365,0
20366,1
20367,1
20368,0
20369,0
20370,0
20371,0
20372,0
20373,0
20374,3
20375,1
20376,0
20377,3
20378,1
20379,3
20380,0
20381,1
20382,0
20383,0
20384,1
20385,29
20386,0
20387,0
20388,1
20389,0
20390,17
20391,0
20392,2
20393,0
20394,0
20395,0
20396,0
20397,11
20398,0
20399,12
20400,0
20401,11
20402,1
20403,3
20404,0
20405,0
20406,1
20407,0
20408,0
20409,6
20410,0
20411,0
20412,0
20413,19
20414,2
20415,1
20416,0
20417,2
20418,4
20419,0
20420,0
20421,2
20422,0
20423,0
20424,1
20425,0
20426,0
20427,5
20428,0
20429,3
20430,0
20431,0
20432,0
20433,1
20434,0
20435,0
20436,0
20437,0
20438,0
20439,13
20440,0
20441,1
20442,0
20443,0
20444,0
20445,0
20446,0
20447,6
20448,0
20449,5
20450,13
20451,0
20452,0
20453,0
20454,0
20455,0
20456,0
20457,0
20458,0
20459,0
20460,2
20461,0
20462,0
20463,0
20464,0
20465,0
20466,4
20467,42
20468,0
20469,21
20470,0
20471,0
20472,4
20473,0
20474,2
20475,1
20476,1
20477,1
20478,0
20479,0
20480,0
20481,0
20482,68
20483,4
20484,2
20485,0
20486,0
20487,2
20488,0
20489,5
20490,0
20491,0
20492,1
20493,0
20494,0
20495,0
20496,0
20497,1
20498,7
20499,0
20500,1
20501,0
20502,0
20503,0
20504,0
20505,1
20506,0
20507,0
20508,1
20509,4
20510,0
20511,0
20512,0
20513,0
20514,0
20515,40
20516,0
20517,0
20518,0
20519,0
20520,2
20521,0
20522,0
20523,0
20524,0
20525,6
20526,1
20527,0
20528,0
20529,0
20530,1
20531,0
20532,1
20533,0
20534,2
20535,0
20536,0
20537,5
20538,0
20539,0
20540,0
20541,1
20542,0
20543,2
20544,0
20545,7
20546,0
20547,0
20548,0
20549,1
20550,0
20551,12
20552,0
20553,13
20554,0
20555,1
20556,0
20557,6
20558,0
20559,0
20560,0
20561,0
20562,0
20563,0
20564,1
20565,7
20566,0
20567,2
20568,0
20569,0
20570,18
21001,8
21002,10
21003,7
21004,22
21005,0
21006,0
21007,0
21008,2
21009,0
21010,4
21011,0
21012,1
21013,1
21014,0
21015,22
21016,0
21017,1
21018,0
21019,40
21020,0
21021,1
21022,0
21023,2
21024,0
21025,1
21026,15
21027,0
21028,0
21029,0
21030,0
21031,0
21032,0
21033,2
21034,9
21035,3
21036,2
21037,0
21038,6
21039,1
21040,2
21041,31
21042,1
21043,3
21044,1
21045,14
21046,0
21047,9
21048,3
21049,3
21050,1
21051,18
21052,0
21053,7
21054,6
21055,2
21056,0
21057,1
21058,1
21059,0
21060,0
21061,1
21062,0
21063,20
21064,6
21065,6
21066,5
21067,3
21068,1
21069,9
21070,0
21071,30
21072,0
21073,0
21074,21
21075,0
21076,3
21077,0
21078,2
21079,0
21080,0
21081,0
21082,0
21083,3
21084,0
21085,42
21086,14
21087,4
21088,0
21089,0
21090,4
21091,2
21092,2
21093,0
21094,3
21095,1
21096,0
21097,0
21098,1
21099,8
21100,1
21101,0
21102,3
21103,5
21104,5
21105,0
21106,12
21107,0
21108,3
21109,1
21110,44
21111,9
21112,5
21113,2
21114,280
21115,36
21116,3
21117,0
21118,2
21119,28
21120,1
21121,0
21122,1
21123,0
21124,1
21125,4
21126,1
21127,0
21128,0
21129,0
21130,0
21131,0
21132,27
21133,0
21134,7
21135,0
21136,4
21137,1
21138,4
21139,0
21140,35
21141,0
21142,4
21143,4
21144,3
21145,0
21146,0
21147,0
21148,6
21149,8
21150,7
21151,0
21152,0
21153,2
21154,37
21155,0
21156,66
21157,4
21158,1
21159,0
21160,1
21161,2
21162,0
21163,0
21164,14
21165,0
21166,4
21167,0
21168,4
21169,1
21170,9
21171,0
21172,3
21173,0
21174,11
21175,2
21176,5
21177,14
21178,1
21179,1
21180,5
21181,7
21182,0
21183,1
21184,0
21185,2
21186,2
21187,2
21188,3
21189,2
21190,1
21191,5
21192,0
21193,1
21194,36
21195,5
21196,0
21197,34
21198,0
21199,3
21200,0
21201,2
21202,2
21203,0
21204,0
21205,13
21206,3
21207,1
21208,11
21209,0
21210,0
21211,3
21212,0
21213,7
21214,0
21215,0
21216,1
21217,5
22001,14
22002,0
22003,1
22004,0
22005,3
22006,15
22007,3
22008,3
22009,4
22010,0
22011,26
22012,5
22013,0
22014,128
22015,0
22016,51
22017,12
22018,2
23001,20
23002,4
23003,14
23004,59
23005,602
23006,2
23007,0
23008,111
23009,4
23010,4
23011,17
24001,9
24002,1
24003,14
24004,0
24005,1
24006,3
24007,13
24008,9
24009,7
24010,24
24011,21
24012,8
24013,146
24014,5
24015,3
24016,42
24017,7
24018,6
24019,1
24020,63
24021,29
24022,6
24023,7
24024,46
24025,1
24026,2
24027,7
24028,571
24029,2
24030,1
24031,4
24032,12
24033,4
24034,11
24035,177
24036,10
24037,22
24038,0
24039,6
24040,31
24041,4
24042,16
24043,2
24044,3
24045,1
24046,15
24047,1
24048,1
24049,10
24050,27
24051,3
24052,4
24053,3
24054,4
24055,23
24056,7
24057,1
24058,18
25001,885
25002,150
25003,226
25004,142
25005,89
25006,4702
25007,225
25008,90
25009,73
25010,381
25011,526
25012,1319
25013,281
25014,180
25015,382
25016,179
25017,359
25018,857
26001,5
26002,88
26003,66
26004,39
26005,1
26006,4
26007,1
26008,0
26009,1
26010,1
26011,0
26012,37
26013,0
26014,4
26015,0
26016,3
26017,154
26018,669
26019,44
26020,2
26021,3
26022,8
26023,4
26024,2
26025,58
26026,16
26027,1
26028,0
26029,144
26030,558
26031,1
26032,0
26033,56
26034,0
26035,25
26036,48
26037,1
26038,1
26039,9
26040,1
26041,0
26042,85
26043,651
26044,5
26045,0
26046,0
26047,7
26048,54
26049,3
26050,0
26051,22
26052,11
26053,0
26054,0
26055,90
26056,7
26057,6
26058,6
26059,7
26060,42
26061,1
26062,0
26063,0
26064,7
26065,14
26066,9
26067,0
26068,0
26069,47
26070,161
26071,25
26072,14
27001,16
27002,165
27003,22
27004,293
27005,33
27006,60
27007,9
27008,166
27009,4
27010,7
27011,2
27012,51
27013,18
27014,31
27015,6
27016,3
27017,55
28001,47
28002,14
28003,108
28004,0
28005,4
28006,0
28007,80
28008,11
28009,94
28010,5
28011,12
28012,53
28013,20
28014,95
28015,50
28016,95
28017,0
28018,30
28019,12
28020,1
28021,95
28022,463
28023,5
28024,161
28025,187
28026,0
28027,646
28028,1
28029,2
28030,56
28031,0
28032,1039
28033,143
28034,4
28035,545
28036,0
28037,37
28038,269
28039,0
28040,197
28041,609
28042,8
28043,10
29001,1
29002,2
29003,1
29004,4
29005,8
29006,12
29007,4
29008,1
29009,0
29010,5
29011,1
29012,1
29013,12
29014,1
29015,9
29016,0
29017,1
29018,1
29019,2
29020,1
29021,2
29022,1
29023,5
29024,1
29025,9
29026,1
29027,5
29028,2
29029,4
29030,1
29031,2
29032,1
29033,18
29034,6
29035,1
29036,1
29037,0
29038,4
29039,1
29040,1
29041,6
29042,1
29043,2
29044,4
29045,0
29046,0
29047,0
29048,1
29049,0
29050,0
29051,1
29052,0
29053,1
29054,0
29055,0
29056,0
29057,1
29058,0
29059,1
29060,1
30001,4
30002,5
30003,106
30004,21
30005,0
30006,15
30007,9
30008,0
30009,17
30010,15
30011,108
30012,18
30013,14
30014,59
30015,7
30016,21
30017,0
30018,2
30019,1
30020,0
30021,12
30022,12
30023,16
30024,2
30025,0
30026,19
30027,1
30028,228
30029,1
30030,15
30031,4
30032,27
30033,7
30034,5
30035,0
30036,2
30037,0
30038,33
30039,268
30040,44
30041,1
30042,0
30043,1
30044,232
30045,77
30046,0
30047,6
30048,97
30049,17
30050,13
30051,4
30052,22
30053,73
30054,34
30055,2
30056,1
30057,3
30058,1
30059,8
30060,1
30061,75
30062,4
30063,2
30064,0
30065,49
30066,1
30067,5
30068,37
30069,17
30070,10
30071,24
30072,3
30073,19
30074,4
30075,4
30076,1
30077,80
30078,2
30079,5
30080,4
30081,5
30082,7
30083,6
30084,6
30085,43
30086,16
30087,272
30088,1
30089,50
30090,0
30091,28
30092,4
30093,4
30094,31
30095,2
30096,0
30097,25
30098,0
30099,16
30100,25
30101,8
30102,62
30103,0
30104,3
30105,61
30106,1
30107,1
30108,115
30109,23
30110,0
30111,12
30112,5
30113,0
30114,4
30115,29
30116,11
30117,37
30118,46
30119,19
30120,5
30121,5
30122,1
30123,165
30124,114
30125,23
30126,27
30127,9
30128,30
30129,1
30130,34
30131,129
30132,5
30133,34
30134,28
30135,11
30136,3
30137,0
30138,20
30139,3
30140,1
30141,31
30142,25
30143,15
30144,39
30145,8
30146,3
30147,2
30148,35
30149,2
30150,0
30151,2
30152,16
30153,3
30154,3
30155,22
30156,0
30157,9
30158,17
30159,2
30160,33
30161,14
30162,0
30163,0
30164,4
30165,0
30166,1
30167,3
30168,0
30169,37
30170,1
30171,0
30172,4
30173,17
30174,122
30175,74
30176,11
30177,0
30178,13
30179,0
30180,0
30181,18
30182,1
30183,17
30184,1
30185,5
30186,3
30187,1
30188,6
30189,85
30190,0
30191,12
30192,16
30193,926
30194,0
30195,0
30196,34
30197,9
30198,0
30199,2
30200,2
30201,0
30202,1
30203,0
30204,31
30205,19
30206,24
30207,102
30208,32
30209,5
30210,7
30211,16
30212,6
31001,1
31002,0
31003,0
31004,0
31005,0
31006,1
31007,1
31008,0
31009,1
31010,0
31011,0
31012,0
31013,0
31014,0
31015,0
31016,0
31017,0
31018,0
31019,0
31020,0
31021,0
31022,0
31023,0
31024,0
31025,0
31026,0
31027,0
31028,1
31029,1
31030,1
31031,0
31032,0
31033,0
31034,0
31035,0
31036,0
31037,1
31038,0
31039,0
31040,0
31041,2
31042,0
31043,0
31044,0
31045,0
31046,0
31047,0
31048,0
31049,0
31050,57
31051,0
31052,1
31053,0
31054,0
31055,0
31056,3
31057,0
31058,3
31059,8
31060,0
31061,0
31062,0
31063,0
31064,0
31065,0
31066,0
31067,0
31068,0
31069,0
31070,0
31071,0
31072,0
31073,0
31074,0
31075,0
31076,0
31077,0
31078,0
31079,0
31080,0
31081,0
31082,0
31083,1
31084,0
31085,0
31086,0
31087,0
31088,0
31089,3
31090,0
31091,1
31092,0
31093,0
31094,0
31095,0
31096,1
31097,0
31098,0
31099,0
31100,0
31101,5
31102,5
31103,0
31104,0
31105,0
31106,0
32001,2
32002,0
32003,0
32004,20
32005,97
32006,10
32007,3
32008,3
32009,14
32010,515
32011,15
32012,14
32013,25
32014,4
32015,0
32016,5
32017,278
32018,1
32019,24
32020,65
32021,8
32022,14
32023,1
32024,8
32025,4
32026,4
32027,0
32028,2
32029,11
32030,0
32031,3
32032,24
32033,0
32034,15
32035,10
32036,24
32037,32
32038,16
32039,35
32040,16
32041,0
32042,51
32043,1
32044,12
32045,1
32046,6
32047,21
32048,5
32049,80
32050,10
32051,30
32052,0
32053,11
32054,1
32055,11
32056,369
32057,41
32058,0"