estados= "01,Aguascalientes,37,38,31,46,50,15,22,21,28,mx-ag 
02,Baja California,209,779,484,540,323,364,375,316,539,mx-bc
03,Baja California Sur,6,2,1,10,13,5,19,33,89,mx-bs
04,Campeche,8,7,6,10,10,11,11,11,17,mx-cm
05,Coahuila,18,78,179,384,715,879,568,743,147,mx-co
06,Colima,2,12,33,101,105,128,88,78,108,mx-cl
07,Chiapas,57,82,88,77,84,85,124,76,47,mx-cs
08,Chihuahua,244,2118,3345,4426,2799,1934,1214,724,591,mx-ch
09,Distrito Federal,182,144,135,191,158,238,289,169,136,mx-df
10,Durango,108,276,674,834,834,583,324,170,88,mx-dg
11,Guanajuato,51,79,234,152,192,150,326,369,477,mx-gj
12,Guerrero,299,412,879,1132,1752,1609,1212,964,1270,mx-gr
13,Hidalgo,43,38,34,52,47,64,61,52,27,mx-hg
14,Jalisco,70,148,261,593,864,864,927,416,444,mx-ja
15,México,111,364,440,623,673,569,625,458,351,mx-mx
16,Michoacán,328,289,590,519,666,682,592,514,662,mx-mi
17,Morelos,32,48,114,335,319,415,507,305,279,mx-mo
18,Nayarit,11,28,37,377,404,106,87,23,22,mx-na
19,Nuevo León,130,105,112,620,1438,1332,599,172,139,mx-nl
20,Oaxaca,62,121,87,167,130,191,233,171,207,mx-oa
21,Puebla,6,22,28,51,72,97,149,115,125,mx-pu
22,Querétaro,5,6,13,13,17,10,33,21,24,mx-qt
23,Quintana Roo,26,29,32,64,63,49,89,33,40,mx-qr
24,San Luis Potosí,10,34,8,135,151,202,147,96,155,mx-sl
25,Sinaloa,426,1084,1059,1815,1452,1438,1104,640,701,mx-si
26,Sonora,141,252,365,495,278,279,346,332,292,mx-so
27,Tabasco,27,35,65,73,94,25,88,85,131,mx-tb
28,Tamaulipas,80,96,90,1209,1169,459,341,379,316,mx-tm
29,Tlaxcala,0,3,6,4,11,6,15,16,8,mx-tl
30,Veracruz,75,65,133,179,723,503,429,420,551,mx-ve
31,Yucatán,4,18,1,2,1,13,15,6,13,mx-yu
32,Zacatecas,18,25,50,37,161,370,310,76,98,mx-za"



estadosArr = []
estados.each_line{|l| line = l.split(","); estadosArr.push(line)}
estadosArr.each{|x|x.each{|y|y.strip!}}

estadosArr.each{|x| State.create(clave_estado:x[0], estado:x[1], iso_code:x[11])}