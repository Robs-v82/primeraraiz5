areasArr = []
areas.each_line{|l| line = l.split(","); areasArr.push(line)}
areasArr.each{|x|x.each{|y|y.strip!}}

areasArr.each{|x| Area.create(zip:x[0], name:x[1], district:x[2])}

areas = "01000,San �ngel,�lvaro Obreg�n
01010,Los Alpes,�lvaro Obreg�n
01020,Guadalupe Inn,�lvaro Obreg�n
01029,INFONAVIT,�lvaro Obreg�n
01030,Florida,�lvaro Obreg�n
01030,Axotla,�lvaro Obreg�n
01040,Campestre,�lvaro Obreg�n
01048,Las �guilas,�lvaro Obreg�n
01049,Tlacopac,�lvaro Obreg�n
01050,Ex-Hacienda de Guadalupe Chimalistac,�lvaro Obreg�n
01060,San �ngel Inn,�lvaro Obreg�n
01060,Altavista,�lvaro Obreg�n
01070,Chimalistac,�lvaro Obreg�n
01080,Progreso Tizapan,�lvaro Obreg�n
01089,Ermita Tizapan,�lvaro Obreg�n
01090,Loreto,�lvaro Obreg�n
01090,Tizapan,�lvaro Obreg�n
01090,La Otra Banda,�lvaro Obreg�n
01100,P�lvora,�lvaro Obreg�n
01100,Lomas de Santo Domingo,�lvaro Obreg�n
01109,La Conchita,�lvaro Obreg�n
01110,Ampliaci�n El Capul�n,�lvaro Obreg�n
01110,Liberales de 1857,�lvaro Obreg�n
01110,Bel�m de las Flores,�lvaro Obreg�n
01110,El Capul�n,�lvaro Obreg�n
01120,Acueducto,�lvaro Obreg�n
01120,Sears Roebuck,�lvaro Obreg�n
01120,Cove,�lvaro Obreg�n
01120,Las Am�ricas,�lvaro Obreg�n
01120,Hidalgo,�lvaro Obreg�n
01125,Ampliaci�n Acueducto,�lvaro Obreg�n
01130,Molino de Santo Domingo,�lvaro Obreg�n
01130,Real del Monte,�lvaro Obreg�n
01130,Molino de Santo Domingo,�lvaro Obreg�n
01130,Para�so,�lvaro Obreg�n
01139,Reacomodo Pino Su�rez,�lvaro Obreg�n
01140,Jos� Maria Pino Su�rez,�lvaro Obreg�n
01140,Bellavista,�lvaro Obreg�n
01150,Cristo Rey,�lvaro Obreg�n
01150,Tolteca,�lvaro Obreg�n
01159,Delegaci�n Pol�tica �lvaro Obreg�n,�lvaro Obreg�n
01160,Bosque,�lvaro Obreg�n
01160,Maria G. de Garc�a Ruiz,�lvaro Obreg�n
01160,1a Victoria,�lvaro Obreg�n
01160,Isidro Fabela,�lvaro Obreg�n
01170,Abraham M. Gonz�lez,�lvaro Obreg�n
01170,Santa Fe IMSS,�lvaro Obreg�n
01180,8 de Agosto,�lvaro Obreg�n
01180,Carola,�lvaro Obreg�n
01180,San Pedro de los Pinos,�lvaro Obreg�n
01184,Nelli Campo Bello,�lvaro Obreg�n
01200,Arturo Mart�nez,�lvaro Obreg�n
01210,Santa Fe,�lvaro Obreg�n
01219,Lomas de Santa Fe,�lvaro Obreg�n
01220,M�rtires de Tacubaya,�lvaro Obreg�n
01220,Zen�n Delgado,�lvaro Obreg�n
01220,Bonanza,�lvaro Obreg�n
01220,Cuevitas,�lvaro Obreg�n
01220,El Cuernito,�lvaro Obreg�n
01220,La Estrella,�lvaro Obreg�n
01230,Campo de Tiro los Gamitos,�lvaro Obreg�n
01230,El Piru Santa Fe,�lvaro Obreg�n
01230,Tlapechico,�lvaro Obreg�n
01230,El Piru 2a Ampliaci�n,�lvaro Obreg�n
01230,Los Gamitos,�lvaro Obreg�n
01239,La Huerta,�lvaro Obreg�n
01240,Pueblo Nuevo,�lvaro Obreg�n
01250,Margarita Maza de Ju�rez,�lvaro Obreg�n
01250,Tecolalco,�lvaro Obreg�n
01250,El �rbol,�lvaro Obreg�n
01250,Ladera,�lvaro Obreg�n
01250,Lomas de Nuevo M�xico,�lvaro Obreg�n
01259,Ampliaci�n La Cebada,�lvaro Obreg�n
01259,La Mexicana 2a Ampliaci�n,�lvaro Obreg�n
01260,Ampliaci�n La Mexicana,�lvaro Obreg�n
01260,La Palmita,�lvaro Obreg�n
01260,La Mexicana,�lvaro Obreg�n
01260,Calzada Jalalpa,�lvaro Obreg�n
01260,Liberaci�n Proletaria,�lvaro Obreg�n
01269,2a Secci�n Ca�ada,�lvaro Obreg�n
01269,1a Secci�n Ca�ada,�lvaro Obreg�n
01270,El Tejocote,�lvaro Obreg�n
01270,Lomas de Capula,�lvaro Obreg�n
01270,Golondrinas 1a Secci�n,�lvaro Obreg�n
01270,La Presa,�lvaro Obreg�n
01270,Golondrinas,�lvaro Obreg�n
01270,Golondrinas 2a Secci�n,�lvaro Obreg�n
01275,Villa Solidaridad,�lvaro Obreg�n
01276,El Pirul,�lvaro Obreg�n
01278,Desarrollo Urbano,�lvaro Obreg�n
01279,Lomas de Becerra,�lvaro Obreg�n
01280,La Joya,�lvaro Obreg�n
01280,Arvide,�lvaro Obreg�n
01280,El Pocito,�lvaro Obreg�n
01280,Francisco Villa,�lvaro Obreg�n
01280,Lomas de Becerra,�lvaro Obreg�n
01285,El Rodeo,�lvaro Obreg�n
01289,Reacomodo El Cuernito,�lvaro Obreg�n
01290,Presidentes,�lvaro Obreg�n
01290,Piloto Adolfo L�pez Mateos,�lvaro Obreg�n
01296,Jalalpa Tepito 2a Ampliaci�n,�lvaro Obreg�n
01296,Jalalpa Tepito,�lvaro Obreg�n
01296,Ampliaci�n Jalalpa,�lvaro Obreg�n
01298,Ampliaci�n Piloto Adolfo L�pez Mateos,�lvaro Obreg�n
01299,2a Ampliaci�n Presidentes,�lvaro Obreg�n
01299,1a Ampliaci�n Presidentes,�lvaro Obreg�n
01310,San Gabriel,�lvaro Obreg�n
01320,Carlos A. Madrazo,�lvaro Obreg�n
01330,Paseo de las Lomas,�lvaro Obreg�n
01340,Bejero del Pueblo Santa Fe,�lvaro Obreg�n
01376,Santa Fe,�lvaro Obreg�n
01376,Santa Fe La Loma,�lvaro Obreg�n
01376,Santa Fe Centro Ciudad,�lvaro Obreg�n
01376,Santa Fe Pe�a Blanca,�lvaro Obreg�n
01377,Jalalpa El Grande,�lvaro Obreg�n
01379,Antonio Carrillo Flores,�lvaro Obreg�n
01389,Santa Fe Tlayapaca,�lvaro Obreg�n
01400,Olivar del Conde 1a Secci�n,�lvaro Obreg�n
01400,Preconcreto,�lvaro Obreg�n
01407,Galeana,�lvaro Obreg�n
01408,Olivar del Conde 2a Secci�n,�lvaro Obreg�n
01410,Barrio Norte,�lvaro Obreg�n
01410,Palmas,�lvaro Obreg�n
01419,Minas Cristo Rey,�lvaro Obreg�n
01420,Sacramento,�lvaro Obreg�n
01420,Santa Mar�a Nonoalco,�lvaro Obreg�n
01430,Colina del Sur,�lvaro Obreg�n
01440,Abeto,�lvaro Obreg�n
01450,Unidad Popular Emiliano Zapata,�lvaro Obreg�n
01450,Hogar y Redenci�n,�lvaro Obreg�n
01450,Ca�ada del Olivar,�lvaro Obreg�n
01450,Batall�n de San Patricio,�lvaro Obreg�n
01460,Alfonso XIII,�lvaro Obreg�n
01470,Alfalfar,�lvaro Obreg�n
01470,Molino de Rosas,�lvaro Obreg�n
01480,Lomas de Plateros,�lvaro Obreg�n
01490,La Cascada,�lvaro Obreg�n
01490,Torres de Mixcoac,�lvaro Obreg�n
01500,Santa Luc�a,�lvaro Obreg�n
01500,Miguel Gaona Armenta,�lvaro Obreg�n
01509,Santa Luc�a Chantepec,�lvaro Obreg�n
01510,Garcimarrero,�lvaro Obreg�n
01510,Los Cedros,�lvaro Obreg�n
01510,La Ara�a,�lvaro Obreg�n
01520,Estado de Hidalgo,�lvaro Obreg�n
01520,Piru Santa Luc�a,�lvaro Obreg�n
01520,Ampliaci�n Los Pirules,�lvaro Obreg�n
01520,Ampliaci�n Estado de Hidalgo,�lvaro Obreg�n
01520,El Politoco,�lvaro Obreg�n
01530,Corpus Christy,�lvaro Obreg�n
01537,Universal,�lvaro Obreg�n
01538,Tepopotla,�lvaro Obreg�n
01539,Cooperativa Uni�n Olivos,�lvaro Obreg�n
01539,Acuilotla,�lvaro Obreg�n
01540,Cehuaya,�lvaro Obreg�n
01540,Providencia,�lvaro Obreg�n
01540,Balcones de Cehuayo,�lvaro Obreg�n
01540,Llano Redondo,�lvaro Obreg�n
01540,Punta de Cehuaya,�lvaro Obreg�n
01548,Villa Progresista,�lvaro Obreg�n
01549,Dos R�os del Pueblo Santa Luc�a,�lvaro Obreg�n
01550,Tepeaca,�lvaro Obreg�n
01550,Ampliaci�n Tepeaca,�lvaro Obreg�n
01550,Rinconada Las Cuevitas,�lvaro Obreg�n
01560,Canutillo,�lvaro Obreg�n
01560,Canutillo 3a Secci�n,�lvaro Obreg�n
01560,Ave Real,�lvaro Obreg�n
01560,Canutillo 2a Secci�n,�lvaro Obreg�n
01566,Hueytlale,�lvaro Obreg�n
01567,Tepeaca,�lvaro Obreg�n
01569,Reacomodo Valent�n G�mez Far�as,�lvaro Obreg�n
01588,Tarango,�lvaro Obreg�n
01590,El Rinc�n,�lvaro Obreg�n
01600,Sociedad Cooperativa Uni�n Poder Popular,�lvaro Obreg�n
01600,Merced G�mez,�lvaro Obreg�n
01610,Profesor J. Arturo L�pez Mart�nez,�lvaro Obreg�n
01610,Colinas de Tarango,�lvaro Obreg�n
01618,Arcos Centenario,�lvaro Obreg�n
01618,Ex-Hacienda de Tarango,�lvaro Obreg�n
01619,Rinconada de Tarango,�lvaro Obreg�n
01619,La Martinica,�lvaro Obreg�n
01620,Lomas de Tarango,�lvaro Obreg�n
01630,Los Juristas,�lvaro Obreg�n
01630,Lomas de Puerta Grande,�lvaro Obreg�n
01630,Bel�m de las Flores,�lvaro Obreg�n
01630,Puerta Grande,�lvaro Obreg�n
01640,Her�n Proal,�lvaro Obreg�n
01645,Ponciano Arriaga,�lvaro Obreg�n
01650,Ampliaci�n Tlacuitlapa,�lvaro Obreg�n
01650,2o Reacomodo Tlacuitlapa,�lvaro Obreg�n
01650,Santa Luc�a Chantepec,�lvaro Obreg�n
01650,La Milagrosa,�lvaro Obreg�n
01650,Palmas Axotitla,�lvaro Obreg�n
01650,Tlacuitlapa,�lvaro Obreg�n
01650,El Ruedo,�lvaro Obreg�n
01700,2a Del Moral del Pueblo de Tetelpan,�lvaro Obreg�n
01700,San Agust�n del Pueblo Tetelpan,�lvaro Obreg�n
01700,La Joyita del Pueblo Tetelpan,�lvaro Obreg�n
01700,Ocotillos del Pueblo Tetelpan,�lvaro Obreg�n
01700,Tetelpan,�lvaro Obreg�n
01700,Tecalcapa del Pueblo Tetelpan,�lvaro Obreg�n
01708,El Mirador del Pueblo Tetelpan,�lvaro Obreg�n
01708,El Encino del Pueblo Tetelpan,�lvaro Obreg�n
01710,Las �guilas,�lvaro Obreg�n
01710,Ampliaci�n Alpes,�lvaro Obreg�n
01720,Lomas de Guadalupe,�lvaro Obreg�n
01729,Alcantarilla,�lvaro Obreg�n
01730,Lomas de las �guilas,�lvaro Obreg�n
01730,Puente Colorado,�lvaro Obreg�n
01740,La Pe�ita del Pueblo Tetelpan,�lvaro Obreg�n
01740,San Clemente Norte,�lvaro Obreg�n
01740,San Clemente Sur,�lvaro Obreg�n
01750,Las �guilas 2o Parque,�lvaro Obreg�n
01750,Las �guilas 3er Parque,�lvaro Obreg�n
01750,Las �guilas 1a Secci�n,�lvaro Obreg�n
01759,Ampliaci�n Las �guilas,�lvaro Obreg�n
01760,Flor de Mar�a,�lvaro Obreg�n
01760,Atlamaya,�lvaro Obreg�n
01760,La Herradura del Pueblo Tetelpan,�lvaro Obreg�n
01770,La Angostura,�lvaro Obreg�n
01770,San Jos� del Olivar,�lvaro Obreg�n
01780,Tizampampano del Pueblo Tetelpan,�lvaro Obreg�n
01780,Olivar de los Padres,�lvaro Obreg�n
01788,El Olivarito,�lvaro Obreg�n
01789,Miguel Hidalgo,�lvaro Obreg�n
01790,Lomas de los �ngeles del Pueblo Tetelpan,�lvaro Obreg�n
01790,Lomas de San �ngel Inn,�lvaro Obreg�n
01800,San Bartolo Ameyalco,�lvaro Obreg�n
01807,Rancho San Francisco Pueblo San Bartolo Ameyalco,�lvaro Obreg�n
01810,Villa Verd�n,�lvaro Obreg�n
01820,Ejido San Mateo,�lvaro Obreg�n
01820,Lomas Axomiatla,�lvaro Obreg�n
01830,Santa Rosa Xochiac,�lvaro Obreg�n
01840,Torres de Potrero,�lvaro Obreg�n
01849,Rinc�n de la Bolsa,�lvaro Obreg�n
01849,Rancho del Carmen del Pueblo San Bartolo Ameyalco,�lvaro Obreg�n
01856,Paraje del Caballito,�lvaro Obreg�n
01857,Lomas de Chamontoya,�lvaro Obreg�n
01859,Tlacoyaque,�lvaro Obreg�n
01860,Lomas de La Era,�lvaro Obreg�n
01863,Lomas del Capul�n,�lvaro Obreg�n
01870,Lomas de los Cedros,�lvaro Obreg�n
01900,Jardines del Pedregal,�lvaro Obreg�n
01904,San Jer�nimo Aculco,�lvaro Obreg�n
01940,Rancho Anzaldo y Contreras,�lvaro Obreg�n
01990,Pedregal,�lvaro Obreg�n
02000,Centro de Azcapotzalco,Azcapotzalco
02008,Delegaci�n Pol�tica Azcapotzalco,Azcapotzalco
02010,Nuevo Barrio San Rafael,Azcapotzalco
02010,Los Reyes,Azcapotzalco
02010,San Rafael,Azcapotzalco
02020,Santo Tom�s,Azcapotzalco
02020,San Marcos,Azcapotzalco
02040,Del Maestro,Azcapotzalco
02040,San Sebasti�n,Azcapotzalco
02050,Santa Mar�a Malinalco,Azcapotzalco
02050,Libertad,Azcapotzalco
02050,Wake,Azcapotzalco
02060,Un Hogar Para Cada Trabajador,Azcapotzalco
02060,Sindicato Mexicano de Electricistas,Azcapotzalco
02070,Azcapotzalco,Azcapotzalco
02070,Del Recreo,Azcapotzalco
02070,Nextengo,Azcapotzalco
02070,Palestina,Azcapotzalco
02070,Nextengo,Azcapotzalco
02080,Sector Naval,Azcapotzalco
02080,Claver�a,Azcapotzalco
02090,San �lvaro,Azcapotzalco
02099,�ngel Zimbr�n,Azcapotzalco
02100,El Rosario,Azcapotzalco
02100,Los Oyameles,Azcapotzalco
02109,Manuel Rivera Anaya CROC 1,Azcapotzalco
02109,CROC 6 Olimpia,Azcapotzalco
02120,San Mart�n Xochinahuac,Azcapotzalco
02128,Nueva El Rosario,Azcapotzalco
02129,Nueva Espa�a,Azcapotzalco
02130,Tierra Nueva,Azcapotzalco
02140,Santa In�s,Azcapotzalco
02150,Pasteros,Azcapotzalco
02150,Azcapotzalco Pasteros,Azcapotzalco
02160,Santo Domingo,Azcapotzalco
02169,Villas de Azcapotzalco,Azcapotzalco
02200,Reynosa Tamaulipas,Azcapotzalco
02230,Santa B�rbara,Azcapotzalco
02240,San Andr�s,Azcapotzalco
02240,Ticoman,Azcapotzalco
02240,San Andr�s,Azcapotzalco
02240,San Andr�s Fase II,Azcapotzalco
02250,Santa Catarina,Azcapotzalco
02260,Pitolaca,Azcapotzalco
02300,Industrial Vallejo,Azcapotzalco
02310,Ferrer�a,Azcapotzalco
02320,San Andr�s de las Salinas,Azcapotzalco
02330,Huautla de las Salinas,Azcapotzalco
02340,Santa Cruz de las Salinas,Azcapotzalco
02350,Jardines de Ceyl�n,Azcapotzalco
02360,Las Salinas,Azcapotzalco
02400,Rinconada el Olivar,Azcapotzalco
02400,San Juan Tlihuaca,Azcapotzalco
02400,San Juan Tlihuaca,Azcapotzalco
02409,Rosendo Salazar,Azcapotzalco
02410,Prados del Rosario,Azcapotzalco
02419,Trabajadores de PEMEX,Azcapotzalco
02420,Francisco Villa,Azcapotzalco
02420,Ex-Hacienda El Rosario,Azcapotzalco
02430,Presidente Madero,Azcapotzalco
02440,Providencia,Azcapotzalco
02450,Las Trancas,Azcapotzalco
02450,Miguel Hidalgo,Azcapotzalco
02459,Tezozomoc,Azcapotzalco
02460,La Preciosa,Azcapotzalco
02460,Axolahua,Azcapotzalco
02470,Ampliaci�n Petrolera,Azcapotzalco
02479,L�zaro C�rdenas,Azcapotzalco
02480,Petrolera,Azcapotzalco
02490,Kervin,Azcapotzalco
02490,San Mateo,Azcapotzalco
02500,Unidad Cuitlahuac,Azcapotzalco
02510,El Jag�ey,Azcapotzalco
02510,Pantaco,Azcapotzalco
02519,El Jag�ey,Azcapotzalco
02520,Estaci�n Pantaco,Azcapotzalco
02525,Granjas Pantaco Campamento Ferrocarrilero,Azcapotzalco
02530,Jard�n Azpeitia,Azcapotzalco
02540,Hogares Ferrocarrileros,Azcapotzalco
02600,Pro-Hogar,Azcapotzalco
02630,Coltongo,Azcapotzalco
02630,Coltongo,Azcapotzalco
02640,Monte Alto,Azcapotzalco
02650,Trabajadores de Hierro,Azcapotzalco
02660,Euzkadi,Azcapotzalco
02670,Cosmopolita,Azcapotzalco
02680,Potrero del Llano,Azcapotzalco
02700,San Miguel Amantla,Azcapotzalco
02710,San Pedro Xalpa,Azcapotzalco
02710,San Isidro,Azcapotzalco
02718,Las Armas,Azcapotzalco
02719,Ampliaci�n San Pedro Xalpa,Azcapotzalco
02720,San Antonio,Azcapotzalco
02720,San Bartolo Cahualtongo,Azcapotzalco
02729,Campo Encantado,Azcapotzalco
02730,San Francisco Tetecala,Azcapotzalco
02739,Miguel Lerdo de Tejada,Azcapotzalco
02750,Santiago Ahuizotla,Azcapotzalco
02750,La Escuadra,Azcapotzalco
02750,La Providencia,Azcapotzalco
02760,Santa Luc�a,Azcapotzalco
02760,Industrial San Antonio,Azcapotzalco
02770,Santa Cruz Acayucan,Azcapotzalco
02780,Plenitud,Azcapotzalco
02790,Santa Apolonia,Azcapotzalco
02800,Nueva Santa Mar�a,Azcapotzalco
02810,Ignacio Allende,Azcapotzalco
02810,Victoria de las Democracias,Azcapotzalco
02830,Toronja,Azcapotzalco
02830,San Bernab�,Azcapotzalco
02840,Obrero Popular,Azcapotzalco
02840,Cobre de M�xico,Azcapotzalco
02850,Tlatilco,Azcapotzalco
02860,Tlatilco,Azcapotzalco
02870,San Salvador Xochimanca,Azcapotzalco
02900,Aguilera,Azcapotzalco
02910,Aldana,Azcapotzalco
02920,Ampliaci�n Cosmopolita,Azcapotzalco
02930,Liberaci�n,Azcapotzalco
02940,Porvenir,Azcapotzalco
02950,Del Gas,Azcapotzalco
02960,San Francisco Xocotitla,Azcapotzalco
02970,Ampliaci�n Del Gas,Azcapotzalco
02980,Arenal,Azcapotzalco
02980,Patrimonio Familiar,Azcapotzalco
02990,La Raza,Azcapotzalco
03000,Piedad Narvarte,Benito Ju�rez
03010,Atenor Salas,Benito Ju�rez
03020,Esperanza,Benito Ju�rez
03020,Narvarte Poniente,Benito Ju�rez
03023,Narvarte Oriente,Benito Ju�rez
03023,Unidad Narvarte IMSS,Benito Ju�rez
03028,Secretaria de Comunicaciones y Transportes,Benito Ju�rez
03100,Del Valle Centro,Benito Ju�rez
03100,Insurgentes San Borja,Benito Ju�rez
03103,Del Valle Norte,Benito Ju�rez
03104,Del Valle Sur,Benito Ju�rez
03109,Partido Acci�n Nacional,Benito Ju�rez
03199,C�mara Nacional de la Industria del Hierro y Acero,Benito Ju�rez
03200,Tlacoquem�catl,Benito Ju�rez
03220,Centro Urbano Presidente Miguel Alem�n,Benito Ju�rez
03229,Centro Hospitalario 20 de Noviembre,Benito Ju�rez
03230,Actipan,Benito Ju�rez
03240,Acacias,Benito Ju�rez
03300,Portales Sur,Benito Ju�rez
03303,Portales Norte,Benito Ju�rez
03310,Santa Cruz Atoyac,Benito Ju�rez
03313,Modulo Social las Flores,Benito Ju�rez
03319,Delegaci�n Pol�tica Benito Ju�rez,Benito Ju�rez
03320,Residencial Emperadores,Benito Ju�rez
03330,Xoco,Benito Ju�rez
03340,General Pedro Mar�a Anaya,Benito Ju�rez
03400,�lamos,Benito Ju�rez
03410,Postal,Benito Ju�rez
03420,Miguel Alem�n,Benito Ju�rez
03430,Josefa Ortiz de Dom�nguez,Benito Ju�rez
03440,Ni�os H�roes,Benito Ju�rez
03500,Nativitas,Benito Ju�rez
03510,Moderna,Benito Ju�rez
03520,Iztaccihuatl,Benito Ju�rez
03530,Villa de Cortes,Benito Ju�rez
03540,Del Carmen,Benito Ju�rez
03550,Zacahuitzco,Benito Ju�rez
03560,Albert,Benito Ju�rez
03570,Portales Oriente,Benito Ju�rez
03580,Miravalle,Benito Ju�rez
03590,Ermita,Benito Ju�rez
03600,V�rtiz Narvarte,Benito Ju�rez
03610,Am�ricas Unidas,Benito Ju�rez
03620,Periodista,Benito Ju�rez
03630,Independencia,Benito Ju�rez
03640,Del Lago,Benito Ju�rez
03650,Letr�n Valle,Benito Ju�rez
03660,San Sim�n Ticumac,Benito Ju�rez
03700,Santa Mar�a Nonoalco,Benito Ju�rez
03710,Ciudad de los Deportes,Benito Ju�rez
03720,Nochebuena,Benito Ju�rez
03730,San Juan,Benito Ju�rez
03740,Extremadura Insurgentes,Benito Ju�rez
03800,San Pedro de los Pinos,Benito Ju�rez
03810,N�poles,Benito Ju�rez
03820,8 de Agosto,Benito Ju�rez
03840,Ampliaci�n N�poles,Benito Ju�rez
03849,C�mara Nacional de la Industria de Transformaci�n,Benito Ju�rez
03900,San Jos� Insurgentes,Benito Ju�rez
03910,Mixcoac,Benito Ju�rez
03920,Insurgentes Mixcoac,Benito Ju�rez
03930,Merced G�mez,Benito Ju�rez
03940,Cr�dito Constructor,Benito Ju�rez
04000,Villa Coyoac�n,Coyoac�n
04009,Delegaci�n Pol�tica Coyoac�n,Coyoac�n
04010,Barrio Santa Catarina,Coyoac�n
04020,Barrio La Concepci�n,Coyoac�n
04030,Barrio San Lucas,Coyoac�n
04040,Parque San Andr�s,Coyoac�n
04100,Del Carmen,Coyoac�n
04110,Viveros de Coyoac�n,Coyoac�n
04120,San Diego Churubusco,Coyoac�n
04120,San Mateo,Coyoac�n
04129,C�mara Nacional de la Industria Editorial,Coyoac�n
04200,Campestre Churubusco,Coyoac�n
04210,Churubusco Country Club,Coyoac�n
04230,Prado Churubusco,Coyoac�n
04239,Ermita Churubusco,Coyoac�n
04240,Hermosillo,Coyoac�n
04250,Paseos de Taxque�a,Coyoac�n
04259,20 de Agosto,Coyoac�n
04260,San Francisco Culhuac�n Barrio de San Juan,Coyoac�n
04260,San Francisco Culhuac�n Barrio de La Magdalena,Coyoac�n
04260,San Francisco Culhuac�n Barrio de Santa Ana,Coyoac�n
04260,San Francisco Culhuac�n Barrio de San Francisco,Coyoac�n
04270,Santa Martha del Sur Quetzalcoatl,Coyoac�n
04280,Taxque�a,Coyoac�n
04300,Ajusco,Coyoac�n
04307,Ajusco Montserrat,Coyoac�n
04309,Pedregal de Monserrat,Coyoac�n
04310,Monte de Piedad,Coyoac�n
04310,Romero de Terreros,Coyoac�n
04317,ISSSTE,Coyoac�n
04318,Barrio Oxtopulco Universidad,Coyoac�n
04319,Torres de Chimalistac,Coyoac�n
04319,Fort�n de Chimalistac,Coyoac�n
04320,Romero de Terreros,Coyoac�n
04320,Cuadrante de San Francisco,Coyoac�n
04320,Pedregal de San Francisco,Coyoac�n
04326,Villa de San Francisco,Coyoac�n
04327,Rinc�n de Guanajuato,Coyoac�n
04330,Barrio del Ni�o Jes�s,Coyoac�n
04330,Pedregal de Coyoac�n,Coyoac�n
04330,El Rosedal,Coyoac�n
04330,Pueblo de los Reyes,Coyoac�n
04330,Pacifico,Coyoac�n
04330,Rosedal,Coyoac�n
04330,Rinconada de los Reyes,Coyoac�n
04336,Zapata,Coyoac�n
04337,Montserrat,Coyoac�n
04338,Mariana,Coyoac�n
04340,Copilco Universidad ISSSTE,Coyoac�n
04340,Insurgentes San �ngel,Coyoac�n
04340,Copilco El Bajo,Coyoac�n
04350,Integraci�n Latinoamericana,Coyoac�n
04350,Villas Copilco,Coyoac�n
04350,Altillo Universidad,Coyoac�n
04350,Copilco,Coyoac�n
04350,Acasulco,Coyoac�n
04359,Empleados Federales,Coyoac�n
04360,Copilco El Alto,Coyoac�n
04360,Copilco Universidad,Coyoac�n
04368,Residencial la Cantera,Coyoac�n
04369,Pedregal de Santo Domingo,Coyoac�n
04370,Ciudad Jard�n,Coyoac�n
04370,Xotepingo 101,Coyoac�n
04370,Atl�ntida,Coyoac�n
04380,El Rosario,Coyoac�n
04380,Pueblo La Candelaria,Coyoac�n
04390,Nueva D�az Ordaz,Coyoac�n
04390,Huayamilpas,Coyoac�n
04400,Educaci�n,Coyoac�n
04410,Tlalpan FOVISSSTE,Coyoac�n
04410,Petrolera Taxque�a,Coyoac�n
04420,Ex-Ejido de San Francisco Culhuac�n,Coyoac�n
04440,Culhuac�n CTM Secci�n I,Coyoac�n
04440,Culhuac�n CTM Secci�n V,Coyoac�n
04440,Culhuac�n CTM Secci�n II,Coyoac�n
04450,El Centinela,Coyoac�n
04460,Avante,Coyoac�n
04470,Presidentes Ejidales 2a Secci�n,Coyoac�n
04470,Presidentes Ejidales 1a Secci�n,Coyoac�n
04480,Culhuac�n CTM Secci�n X-A,Coyoac�n
04480,Culhuac�n CTM CROC,Coyoac�n
04480,Culhuac�n CTM Secci�n III,Coyoac�n
04480,Culhuac�n CTM Secci�n VI,Coyoac�n
04489,Culhuac�n CTM Secci�n VII,Coyoac�n
04490,Culhuac�n CTM Canal Nacional,Coyoac�n
04490,Culhuac�n CTM Secci�n Piloto,Coyoac�n
04500,Jardines del Pedregal de San �ngel,Coyoac�n
04510,Universidad Nacional Aut�noma de M�xico,Coyoac�n
04519,La Otra Banda,Coyoac�n
04530,Insurgentes Cuicuilco,Coyoac�n
04535,Torres del Maurel,Coyoac�n
04600,Pedregal de Santa �rsula,Coyoac�n
04610,Xotepingo,Coyoac�n
04620,Pueblo de San Pablo Tepetlapa,Coyoac�n
04630,Adolfo Ruiz Cort�nes,Coyoac�n
04640,El Reloj,Coyoac�n
04650,Los Fresnos,Coyoac�n
04650,Pueblo de Santa �rsula Coapa,Coyoac�n
04660,Joyas del Pedregal,Coyoac�n
04660,Pedregal de La Zorra,Coyoac�n
04700,Villa Panamericana,Coyoac�n
04700,Pedregal de Carrasco,Coyoac�n
04710,Ol�mpica,Coyoac�n
04718,Vistas del Maurel,Coyoac�n
04719,Pedregal del Sur,Coyoac�n
04719,Villas del Pedregal,Coyoac�n
04720,Pedregal del Maurel,Coyoac�n
04729,Rinconada las Playas INFONAVIT,Coyoac�n
04730,Bosques de Tetlameya,Coyoac�n
04730,Cantil del Pedregal,Coyoac�n
04738,Modulo Social Im�n,Coyoac�n
04738,Villas del Im�n,Coyoac�n
04739,El Caracol,Coyoac�n
04800,Alianza Popular Revolucionaria,Coyoac�n
04800,Los Cedros,Coyoac�n
04810,Prados de Coyoac�n,Coyoac�n
04815,Emiliano Zapata,Coyoac�n
04830,Los Cipreses,Coyoac�n
04830,Los Ciruelos,Coyoac�n
04840,Ex-Ejido de San Pablo Tepetlapa,Coyoac�n
04843,Secretaria de Marina Armada de M�xico,Coyoac�n
04849,Sector Marina,Coyoac�n
04850,Fuentes de Coyoac�n,Coyoac�n
04870,Los Robles,Coyoac�n
04870,Espartaco,Coyoac�n
04890,Los Olivos,Coyoac�n
04890,Jardines de Coyoac�n,Coyoac�n
04890,Los Olivos,Coyoac�n
04899,El Parque de Coyoac�n,Coyoac�n
04908,La Virgen,Coyoac�n
04909,Culhuac�n CTM Secci�n IX-A,Coyoac�n
04909,Culhuac�n CTM Secci�n IX-B,Coyoac�n
04909,Culhuac�n CTM Secci�n VIII,Coyoac�n
04910,Carmen Serd�n,Coyoac�n
04918,Cafetales,Coyoac�n
04919,Emiliano Zapata Fraccionamiento Popular,Coyoac�n
04920,Los Girasoles,Coyoac�n
04929,Las Campanas,Coyoac�n
04930,Santa Cecilia,Coyoac�n
04938,Campestre Coyoac�n,Coyoac�n
04939,Culhuac�n CTM Secci�n X,Coyoac�n
04940,Los Sauces,Coyoac�n
04950,El Mirador,Coyoac�n
04960,Villa Quietud,Coyoac�n
04970,Haciendas de Coyoac�n,Coyoac�n
04980,Viejo Ejido de Santa �rsula Coapa,Coyoac�n
04980,Ex-Hacienda Coapa,Coyoac�n
04980,Ex-Ejido de Santa �rsula Coapa,Coyoac�n
05000,Cuajimalpa,Cuajimalpa de Morelos
05009,Delegaci�n Pol�tica Cuajimalpa de Morelos,Cuajimalpa de Morelos
05010,Zentlapatl,Cuajimalpa de Morelos
05020,Loma del Padre,Cuajimalpa de Morelos
05030,San Pedro,Cuajimalpa de Morelos
05030,La Manzanita,Cuajimalpa de Morelos
05039,Ahuatenco,Cuajimalpa de Morelos
05050,San Pablo Chimalpa,Cuajimalpa de Morelos
05060,Jos� Mar�a Castorena,Cuajimalpa de Morelos
05100,Lomas de Vista Hermosa,Cuajimalpa de Morelos
05110,Cooperativa Palo Alto,Cuajimalpa de Morelos
05118,Granjas Palo Alto,Cuajimalpa de Morelos
05119,Campestre Palo Alto,Cuajimalpa de Morelos
05120,Bosques de las Lomas,Cuajimalpa de Morelos
05126,Villas Marbella,Cuajimalpa de Morelos
05128,Cumbres Reforma,Cuajimalpa de Morelos
05129,Lomas del Chamizal,Cuajimalpa de Morelos
05130,Rinc�n de las Lomas,Cuajimalpa de Morelos
05200,San Jos� de los Cedros,Cuajimalpa de Morelos
05214,Club de Golf Bosques,Cuajimalpa de Morelos
05219,Granjas Navidad,Cuajimalpa de Morelos
05220,Tepetongo,Cuajimalpa de Morelos
05230,El �bano,Cuajimalpa de Morelos
05238,Nueva Rosita,Cuajimalpa de Morelos
05240,El Molino,Cuajimalpa de Morelos
05249,Jardines de la Palma,Cuajimalpa de Morelos
05260,Jes�s del Monte,Cuajimalpa de Morelos
05268,Villas de Cuajimalpa,Cuajimalpa de Morelos
05269,Amado Nervo,Cuajimalpa de Morelos
05270,Manzanastitla,Cuajimalpa de Morelos
05280,Adolfo L�pez Mateos,Cuajimalpa de Morelos
05310,El Molinito,Cuajimalpa de Morelos
05320,El Yaqui,Cuajimalpa de Morelos
05330,Ampliaci�n el Yaqui,Cuajimalpa de Morelos
05330,Ampliaci�n Memetla,Cuajimalpa de Morelos
05330,Lomas de Memetla,Cuajimalpa de Morelos
05330,Memetla,Cuajimalpa de Morelos
05348,Santa Fe Cuajimalpa,Cuajimalpa de Morelos
05349,Cruz Manca,Cuajimalpa de Morelos
05360,Locaxco,Cuajimalpa de Morelos
05370,Las Tinajas,Cuajimalpa de Morelos
05379,Lomas de San Pedro,Cuajimalpa de Morelos
05400,El Tianguillo,Cuajimalpa de Morelos
05410,1� de Mayo,Cuajimalpa de Morelos
05410,San Lorenzo Acopilco,Cuajimalpa de Morelos
05500,Contadero,Cuajimalpa de Morelos
05520,La Venta,Cuajimalpa de Morelos
05530,Abd�as Garc�a Soto,Cuajimalpa de Morelos
05600,San Mateo Tlaltenango,Cuajimalpa de Morelos
05610,Santa Rosa Xochiac,Cuajimalpa de Morelos
05619,Prados de la Monta�a,Cuajimalpa de Morelos
05620,Prados de la Monta�a,Cuajimalpa de Morelos
05700,Cruz Blanca,Cuajimalpa de Morelos
05710,Las Maromas,Cuajimalpa de Morelos
05730,Xalpa,Cuajimalpa de Morelos
05750,La Pila,Cuajimalpa de Morelos
05760,Las Lajas,Cuajimalpa de Morelos
05780,Agua Bendita,Cuajimalpa de Morelos
06000,Centro (�rea 1),Cuauht�moc
06010,Centro (�rea 2),Cuauht�moc
06018,H C�mara de Senadores,Cuauht�moc
06020,Centro (�rea 3),Cuauht�moc
06030,Tabacalera,Cuauht�moc
06038,Banorte,Cuauht�moc
06039,ISSSTE,Cuauht�moc
06040,Centro (�rea 4),Cuauht�moc
06050,Centro (�rea 5),Cuauht�moc
06058,Procuradur�a General de La Rep�blica,Cuauht�moc
06060,Centro (�rea 6),Cuauht�moc
06065,Suprema Corte de Justicia,Cuauht�moc
06066,Secretaria de Hacienda y Cr�dito Publico,Cuauht�moc
06067,Presidencia de La Rep�blica,Cuauht�moc
06070,Centro (�rea 7),Cuauht�moc
06079,Confederaci�n de C�maras Nacionales de Comercio,Cuauht�moc
06080,Centro (�rea 8),Cuauht�moc
06090,Centro (�rea 9),Cuauht�moc
06100,Hip�dromo,Cuauht�moc
06140,Condesa,Cuauht�moc
06170,Hip�dromo Condesa,Cuauht�moc
06171,Instituto Mexicano de Comercio Exterior,Cuauht�moc
06179,Secretaria de Econom�a,Cuauht�moc
06200,Morelos,Cuauht�moc
06200,Plan Tepito,Cuauht�moc
06220,Peralvillo,Cuauht�moc
06240,Valle G�mez,Cuauht�moc
06250,Ex-Hip�dromo de Peralvillo,Cuauht�moc
06270,Maza,Cuauht�moc
06280,Felipe Pescador,Cuauht�moc
06300,Guerrero,Cuauht�moc
06309,Direcci�n General de Recaudaci�n de la SHCP,Cuauht�moc
06350,Buenavista,Cuauht�moc
06357,Delegaci�n Pol�tica Cuauht�moc,Cuauht�moc
06400,Santa Mar�a la Ribera,Cuauht�moc
06430,Santa Mar�a Insurgentes,Cuauht�moc
06450,Atlampa,Cuauht�moc
06470,San Rafael,Cuauht�moc
06479,Hemphill Schools,Cuauht�moc
06500,Cuauht�moc,Cuauht�moc
06589,C�mara Nacional de Aerotransportes,Cuauht�moc
06598,Comisi�n Federal de Electricidad,Cuauht�moc
06599,Tel�fonos de M�xico S.A. de CV,Cuauht�moc
06600,Ju�rez,Cuauht�moc
06609,C�mara Nacional de Comercio de la Ciudad de M�xico,Cuauht�moc
06693,C�mara Nacional de Transportes y Comunicaci�n,Cuauht�moc
06696,Secretaria de Salud,Cuauht�moc
06698,IMSS,Cuauht�moc
06699,Secretaria de Gobernaci�n,Cuauht�moc
06700,Roma Norte,Cuauht�moc
06707,Secretaria de Transportes y Vialidad,Cuauht�moc
06720,Doctores,Cuauht�moc
06725,Centro Medico Siglo XXI,Cuauht�moc
06727,Tesorer�a del Distrito Federal,Cuauht�moc
06728,Unidad Soldominio,Cuauht�moc
06729,Hospital General de M�xico,Cuauht�moc
06740,Centro Urbano Benito Ju�rez,Cuauht�moc
06760,Roma Sur,Cuauht�moc
06780,Buenos Aires,Cuauht�moc
06796,C�mara Nacional de la Industria Cinematogr�fica,Cuauht�moc
06798,Partido de La Revoluci�n Democr�tica,Cuauht�moc
06800,Obrera,Cuauht�moc
06820,Tr�nsito,Cuauht�moc
06840,Esperanza,Cuauht�moc
06850,Asturias,Cuauht�moc
06860,Vista Alegre,Cuauht�moc
06870,Paulino Navarro,Cuauht�moc
06880,Algarin,Cuauht�moc
06890,Ampliaci�n Asturias,Cuauht�moc
06900,Nonoalco Tlatelolco,Cuauht�moc
06920,San Sim�n Toln�huac,Cuauht�moc
06995,Secretaria de Relaciones Exteriores,Cuauht�moc
10000,Lomas Quebradas,Magdalena Contreras
10010,San Bartolo Ameyalco,Magdalena Contreras
10010,La Malinche,Magdalena Contreras
10020,Cuauht�moc,Magdalena Contreras
10100,Unidad Independencia IMSS,Magdalena Contreras
10110,Puente Sierra,Magdalena Contreras
10130,Batan Viejo,Magdalena Contreras
10200,San Jer�nimo L�dice,Magdalena Contreras
10210,Los Capulines,Magdalena Contreras
10290,Bosques de La Magdalena,Magdalena Contreras
10300,San Bernab� Ocotepec,Magdalena Contreras
10309,El Oasis de San Bernab�,Magdalena Contreras
10320,El Tanque,Magdalena Contreras
10330,Las Cruces,Magdalena Contreras
10340,Los Padres,Magdalena Contreras
10350,Lomas de San Bernab�,Magdalena Contreras
10360,Huayatla,Magdalena Contreras
10368,Ampliaci�n Potrerillo,Magdalena Contreras
10369,Ampliaci�n Lomas de San Bernab�,Magdalena Contreras
10369,Tierra Unida,Magdalena Contreras
10370,Palmas,Magdalena Contreras
10378,Atacaxco,Magdalena Contreras
10379,Vista Hermosa,Magdalena Contreras
10380,Barros Sierra,Magdalena Contreras
10400,San Jer�nimo Aculco,Magdalena Contreras
10500,Barrio San Francisco,Magdalena Contreras
10580,Barranca Seca,Magdalena Contreras
10589,Delegaci�n Pol�tica Magdalena Contreras,Magdalena Contreras
10600,El Rosal,Magdalena Contreras
10610,El Toro,Magdalena Contreras
10620,Potrerillo,Magdalena Contreras
10630,El Ocotal,Magdalena Contreras
10640,La Carbonera,Magdalena Contreras
10640,Pueblo Nuevo Alto,Magdalena Contreras
10640,Pueblo Nuevo Bajo,Magdalena Contreras
10650,Rancho Pachita,Magdalena Contreras
10660,El Ermita�o,Magdalena Contreras
10700,H�roes de Padierna,Magdalena Contreras
10710,Santa Teresa,Magdalena Contreras
10720,Pedregal 2,Magdalena Contreras
10730,Santa Teresa,Magdalena Contreras
10740,Santa Teresa,Magdalena Contreras
10800,La Cruz,Magdalena Contreras
10810,San Francisco,Magdalena Contreras
10820,La Guadalupe,Magdalena Contreras
10830,La Concepci�n,Magdalena Contreras
10840,Plazuela del Pedregal,Magdalena Contreras
10840,Las Calles,Magdalena Contreras
10900,San Nicol�s Totolapan,Magdalena Contreras
10910,La Magdalena,Magdalena Contreras
10920,Las Huertas,Magdalena Contreras
10926,Tierra Colorada,Magdalena Contreras
11000,Lomas de Chapultepec I Secci�n,Miguel Hidalgo
11000,Lomas de Chapultepec III Secci�n,Miguel Hidalgo
11000,Lomas de Chapultepec VIII Secci�n,Miguel Hidalgo
11000,Lomas de Chapultepec VI Secci�n,Miguel Hidalgo
11000,Lomas de Chapultepec II Secci�n,Miguel Hidalgo
11000,Lomas de Chapultepec IV Secci�n,Miguel Hidalgo
11000,Lomas de Chapultepec V Secci�n,Miguel Hidalgo
11000,Lomas de Chapultepec VII Secci�n,Miguel Hidalgo
11040,Molino del Rey,Miguel Hidalgo
11100,Bosque de Chapultepec III Secci�n,Miguel Hidalgo
11100,Bosque de Chapultepec II Secci�n,Miguel Hidalgo
11109,Residencia Oficial de los Pinos,Miguel Hidalgo
11200,Lomas de Sotelo,Miguel Hidalgo
11200,Lomas Hermosa,Miguel Hidalgo
11210,San Lorenzo Tlaltenango,Miguel Hidalgo
11220,Hermanos Serd�n,Miguel Hidalgo
11220,Periodista,Miguel Hidalgo
11230,Argentina Poniente,Miguel Hidalgo
11239,M�xico Tacuba,Miguel Hidalgo
11240,Ignacio Manuel Altamirano,Miguel Hidalgo
11250,10 de Abril,Miguel Hidalgo
11259,L�zaro Tata,Miguel Hidalgo
11260,San Joaqu�n,Miguel Hidalgo
11260,M�xico Nuevo,Miguel Hidalgo
11270,Argentina Antigua,Miguel Hidalgo
11280,Torre Blanca,Miguel Hidalgo
11289,Ampliaci�n Torre Blanca,Miguel Hidalgo
11290,San Diego Ocoyoacac,Miguel Hidalgo
11290,Hu�chapan,Miguel Hidalgo
11300,Ver�nica Anzures,Miguel Hidalgo
11310,Mariano Escobedo,Miguel Hidalgo
11320,An�huac I Secci�n,Miguel Hidalgo
11320,An�huac II Secci�n,Miguel Hidalgo
11330,Un Hogar Para Nosotros,Miguel Hidalgo
11340,Santo Tomas,Miguel Hidalgo
11350,Plutarco El�as Calles,Miguel Hidalgo
11360,Agricultura,Miguel Hidalgo
11370,Tlaxpana,Miguel Hidalgo
11400,Popotla,Miguel Hidalgo
11410,Tacuba,Miguel Hidalgo
11410,Legaria,Miguel Hidalgo
11420,Nextitla,Miguel Hidalgo
11430,Ventura P�rez de Alva,Miguel Hidalgo
11430,Pensil Norte,Miguel Hidalgo
11440,San Juanico,Miguel Hidalgo
11440,Reforma Pensil,Miguel Hidalgo
11450,Modelo Pensil,Miguel Hidalgo
11450,Peralitos,Miguel Hidalgo
11450,Ahuehuetes An�huac,Miguel Hidalgo
11460,Lago Norte,Miguel Hidalgo
11460,Dos Lagos,Miguel Hidalgo
11460,Los Manzanos,Miguel Hidalgo
11460,Lago Sur,Miguel Hidalgo
11470,Deportivo Pensil,Miguel Hidalgo
11470,5 de Mayo,Miguel Hidalgo
11479,Unidad Legaria IMSS,Miguel Hidalgo
11480,Francisco I Madero,Miguel Hidalgo
11480,Popo,Miguel Hidalgo
11489,Ampliaci�n Popo,Miguel Hidalgo
11490,Cuauht�moc Pensil,Miguel Hidalgo
11490,Pensil Sur,Miguel Hidalgo
11500,Irrigaci�n,Miguel Hidalgo
11510,Polanco I Secci�n,Miguel Hidalgo
11520,Granada,Miguel Hidalgo
11529,Ampliaci�n Granada,Miguel Hidalgo
11530,Polanco II Secci�n,Miguel Hidalgo
11540,Polanco III Secci�n,Miguel Hidalgo
11550,Polanco IV Secci�n,Miguel Hidalgo
11560,Polanco V Secci�n,Miguel Hidalgo
11580,Bosque de Chapultepec I Secci�n,Miguel Hidalgo
11587,Secretaria de Turismo,Miguel Hidalgo
11590,Anzures,Miguel Hidalgo
11600,Residencial Militar,Miguel Hidalgo
11610,Manuel Avila Camacho,Miguel Hidalgo
11619,Campo Militar 1,Miguel Hidalgo
11619,Guardias Presidenciales,Miguel Hidalgo
11640,Secretaria de la Defensa Nacional,Miguel Hidalgo
11649,Hospital Central Militar,Miguel Hidalgo
11650,Reforma Social,Miguel Hidalgo
11700,Bosque de las Lomas,Miguel Hidalgo
11800,Escand�n I Secci�n,Miguel Hidalgo
11800,Escand�n II Secci�n,Miguel Hidalgo
11810,16 de Septiembre,Miguel Hidalgo
11820,Am�rica,Miguel Hidalgo
11830,Daniel Garza,Miguel Hidalgo
11840,Ampliaci�n Daniel Garza,Miguel Hidalgo
11850,San Miguel Chapultepec I Secci�n,Miguel Hidalgo
11850,San Miguel Chapultepec II Secci�n,Miguel Hidalgo
11860,Observatorio,Miguel Hidalgo
11869,Delegaci�n Pol�tica Miguel Hidalgo,Miguel Hidalgo
11870,Tacubaya,Miguel Hidalgo
11910,Lomas de Bezares,Miguel Hidalgo
11920,Real de las Lomas,Miguel Hidalgo
11930,Lomas de Reforma,Miguel Hidalgo
11950,Lomas Altas,Miguel Hidalgo
14000,Tlalpan,Tlalpan
14000,Tlalpan Centro,Tlalpan
14009,Delegaci�n Pol�tica Tlalpan,Tlalpan
14010,Parque del Pedregal,Tlalpan
14017,C�mara Nacional de la Industria de la Construcci�n,Tlalpan
14020,Villa Ol�mpica,Tlalpan
14030,Isidro Fabela,Tlalpan
14038,Luis Donaldo Colosio,Tlalpan
14038,Zapote 1,Tlalpan
14039,Ampliaci�n Isidro Fabela,Tlalpan
14039,Cuitlahuac,Tlalpan
14040,Cantera Puente de Piedra,Tlalpan
14040,Pueblo Quieto,Tlalpan
14049,Comuneros de Santa �rsula,Tlalpan
14050,Toriello Guerra,Tlalpan
14060,Pe�a Pobre,Tlalpan
14070,San Pedro Ap�stol,Tlalpan
14070,Barrio San Fernando,Tlalpan
14070,R�mulo S�nchez Mireles,Tlalpan
14070,Paseos de Mendoza,Tlalpan
14080,Belisario Dom�nguez Secci�n XVI,Tlalpan
14080,Barrio del Ni�o Jes�s,Tlalpan
14090,La Joya,Tlalpan
14098,Torres Tlalpan FOVISSSTE,Tlalpan
14100,Pedregal de San Nicol�s 3A Secci�n,Tlalpan
14100,Pedregal de San Nicol�s 4A Secci�n,Tlalpan
14100,Pedregal de San Nicol�s 2A Secci�n,Tlalpan
14100,Pedregal de San Nicol�s 5A Secci�n,Tlalpan
14100,Pedregal de San Nicol�s 1A Secci�n,Tlalpan
14108,Chichicaspatl,Tlalpan
14108,Pedregal Chichicaspatl,Tlalpan
14110,Pedregal del Lago,Tlalpan
14110,Ampliaci�n Fuentes del Pedregal,Tlalpan
14120,Rinc�n del Pedregal,Tlalpan
14129,Residencial Pedregal Picacho,Tlalpan
14140,Fuentes del Pedregal,Tlalpan
14148,Retornos del Pedregal,Tlalpan
14150,Lomas del Pedregal Framboyanes,Tlalpan
14160,Popular Santa Teresa,Tlalpan
14200,H�roes de Padierna,Tlalpan
14200,Jardines del Ajusco,Tlalpan
14208,Colinas del Ajusco,Tlalpan
14209,Torres de Padierna,Tlalpan
14210,Jardines en la Monta�a,Tlalpan
14219,Six Flags (Reino Aventura),Tlalpan
14219,Parque Nacional Bosque del Pedregal,Tlalpan
14220,Cuchilla de Padierna,Tlalpan
14220,Lomas del Pedregal,Tlalpan
14230,Cultura Maya,Tlalpan
14239,Los Encinos,Tlalpan
14240,Lomas de Padierna,Tlalpan
14240,Lomas Hidalgo,Tlalpan
14248,Cruz del Farol,Tlalpan
14250,Miguel Hidalgo 3A Secci�n,Tlalpan
14250,Miguel Hidalgo 2A Secci�n,Tlalpan
14250,Miguel Hidalgo 4A Secci�n,Tlalpan
14250,Miguel Hidalgo,Tlalpan
14260,Barrio El Capul�n,Tlalpan
14260,Miguel Hidalgo 1A Secci�n,Tlalpan
14266,Zacayucan Pe�a Pobre,Tlalpan
14267,Barrio de Caramag�ey,Tlalpan
14268,Barrio La Lonja,Tlalpan
14269,Barrio La Fama,Tlalpan
14270,Primavera,Tlalpan
14273,Solidaridad,Tlalpan
14275,Paraje 38,Tlalpan
14276,Verano,Tlalpan
14300,Residencial Acoxpa,Tlalpan
14300,Residencial Miramontes,Tlalpan
14300,Nueva Oriental Coapa,Tlalpan
14307,Villa del Sur,Tlalpan
14308,Ex Hacienda Coapa,Tlalpan
14308,Real del Sur,Tlalpan
14309,3 Fuentes,Tlalpan
14310,Vergel Tlalpan,Tlalpan
14310,Belisario Dom�nguez,Tlalpan
14310,Floresta Coyoac�n,Tlalpan
14320,Vergel Coapa,Tlalpan
14325,Rinconada Coapa 2A Secci�n,Tlalpan
14326,Tenorios INFONAVIT,Tlalpan
14326,Tenorios,Tlalpan
14327,Tenorios 2,Tlalpan
14328,Loter�a Nacional,Tlalpan
14328,Villa Valbadena,Tlalpan
14329,Tenorios FOVISSSTE,Tlalpan
14330,Residencial Hacienda Coapa,Tlalpan
14330,Granjas Coapa,Tlalpan
14330,Rinconada Coapa 1A Secci�n,Tlalpan
14334,Sauzales Cebadales,Tlalpan
14335,Perif�rico,Tlalpan
14335,Villa del Puente,Tlalpan
14336,Villa Cuemanco INFONAVIT,Tlalpan
14337,Urbano Coapa,Tlalpan
14338,Fuerza Armada de M�xico,Tlalpan
14338,FOVISSSTE Perif�rico,Tlalpan
14339,Dr. Ignacio Ch�vez INFONAVIT,Tlalpan
14340,Vergel de Coyoac�n,Tlalpan
14340,Vergel del Sur,Tlalpan
14350,Prado Coapa 1A Secci�n,Tlalpan
14356,Jardines Villa Coapa,Tlalpan
14357,Prado Coapa 2A Secci�n,Tlalpan
14357,Prado Coapa 3A Secci�n,Tlalpan
14358,Residencial Villa Prado Coapa,Tlalpan
14360,Villa Cuemanco,Tlalpan
14360,Magisterial Coapa,Tlalpan
14360,Magisterial,Tlalpan
14370,Villa L�zaro C�rdenas,Tlalpan
14370,Residencial Chimali,Tlalpan
14370,Hacienda de San Juan de Tlalpan 2a Secci�n,Tlalpan
14370,San Lorenzo Huipulco,Tlalpan
14376,Arboledas del Sur,Tlalpan
14377,Hacienda San Juan,Tlalpan
14378,Rinc�n de San Juan,Tlalpan
14380,A.M.S.A,Tlalpan
14380,San Bartolo El Chico,Tlalpan
14386,Rancho los Colorines,Tlalpan
14387,Ex Hacienda San Juan de Dios,Tlalpan
14388,Guadalupe,Tlalpan
14389,Arenal de Guadalupe,Tlalpan
14390,Narciso Mendoza,Tlalpan
14390,Residencial Villa Coapa,Tlalpan
14390,Villa Coapa,Tlalpan
14390,Rinconada Las Hadas,Tlalpan
14399,Villa Royale,Tlalpan
14400,San Andr�s Totoltepec,Tlalpan
14406,Divisadero,Tlalpan
14408,Nuevo Renacimiento de Axalco,Tlalpan
14409,Tecorral,Tlalpan
14410,Fuentes Brotantes,Tlalpan
14420,Cumbres de Tepetongo,Tlalpan
14420,Santa �rsula Xitla,Tlalpan
14420,Mesa de los Hornos,Tlalpan
14426,Tlaxcaltenco la Mesa,Tlalpan
14426,Texcaltenco,Tlalpan
14427,San Juan Tepeximilpa,Tlalpan
14427,Tepeximilpa la Paz,Tlalpan
14428,Cantera,Tlalpan
14429,Sant�sima Trinidad,Tlalpan
14430,Tlalcoligia,Tlalpan
14430,Barrio El Truenito,Tlalpan
14438,Pedregal de Santa �rsula Xitla,Tlalpan
14439,Pedregal de las �guilas,Tlalpan
14440,Los Volcanes,Tlalpan
14449,El Mirador 2A Secci�n,Tlalpan
14449,El Mirador 1A Secci�n,Tlalpan
14449,El Mirador 3A Secci�n,Tlalpan
14450,Jardines de Xitle,Tlalpan
14456,Atocpa,Tlalpan
14460,Tlalpuente,Tlalpan
14470,Tepetitla,Tlalpan
14470,Plan de Ayala,Tlalpan
14476,La Palma,Tlalpan
14479,Viveros Coatectl�n,Tlalpan
14480,La Magdalena Petlacalco,Tlalpan
14490,San Miguel Xicalco,Tlalpan
14500,San Miguel Topilejo,Tlalpan
14520,La Quinta,Tlalpan
14529,Estaci�n Ajusco,Tlalpan
14550,Estrella Mora,Tlalpan
14600,Valle Escondido,Tlalpan
14608,Colinas del Bosque,Tlalpan
14609,Las T�rtolas,Tlalpan
14610,Arenal Tepepan,Tlalpan
14620,Club de Golf M�xico,Tlalpan
14629,San Buenaventura,Tlalpan
14630,Chimalcoyoc,Tlalpan
14630,Villa Tlalpan,Tlalpan
14639,San Pedro M�rtir FOVISSSTE,Tlalpan
14640,Ejidos de San Pedro M�rtir,Tlalpan
14643,Fuentes de Tepepan,Tlalpan
14646,Valle de Tepepan,Tlalpan
14647,Juventud Unida,Tlalpan
14647,Rinconada El Mirador,Tlalpan
14647,Movimiento Organizado de Tlalpan,Tlalpan
14650,San Pedro M�rtir,Tlalpan
14653,Her�ico Colegio Militar,Tlalpan
14654,La Magueyera,Tlalpan
14654,Dolores Tlali,Tlalpan
14655,Valle Verde o Lomas Verdes,Tlalpan
14657,Tlalmille,Tlalpan
14658,Mirador del Valle,Tlalpan
14659,Mar�a Esther Zuno de Echeverr�a,Tlalpan
14700,San Miguel Ajusco,Tlalpan
14710,Santo Tomas Ajusco,Tlalpan
14720,Belvedere Ajusco,Tlalpan
14730,Lomas de Cuilotepec,Tlalpan
14734,Zacat�n,Tlalpan
14735,San Nicol�s 2,Tlalpan
14735,Lomas de Tepemecatl,Tlalpan
14737,Vistas del Pedregal,Tlalpan
14738,Bosques del Pedregal,Tlalpan
14739,2 de Octubre,Tlalpan
14740,Lomas de Padierna Sur,Tlalpan
14748,Mirador I,Tlalpan
14748,Mirador II,Tlalpan
14749,Chimilli,Tlalpan
14750,Rancho Viejo,Tlalpan
14760,H�roes de 1910,Tlalpan
14780,El Charco,Tlalpan
14790,San Jorge,Tlalpan
14900,Parres El Guarda,Tlalpan
52760,Huixquilucan de Degollado Centro,Huixquilucan
52760,San Juan Bautista,Huixquilucan
52760,San Ram�n,Huixquilucan
52760,Santa Mar�a,Huixquilucan
52760,El Cerrito,Huixquilucan
52760,San Melchor,Huixquilucan
52760,San Miguel,Huixquilucan
52760,San Mart�n,Huixquilucan
52760,El Retiro,Huixquilucan
52760,El Plan,Huixquilucan
52763,Hacienda de las Palmas,Huixquilucan
52763,Villa Florence,Huixquilucan
52764,Jes�s del Monte,Huixquilucan
52764,La Retama,Huixquilucan
52765,Esfuerzo Obrero,Huixquilucan
52765,San Fernando,Huixquilucan
52765,Industria Militar y Cove,Huixquilucan
52765,San Fernando,Huixquilucan
52766,El Mirasol,Huixquilucan
52766,San Jacinto,Huixquilucan
52766,Zacamulpa,Huixquilucan
52766,Santiago Yancuitlalpan,Huixquilucan
52767,El Palacio,Huixquilucan
52767,Ignacio Allende,Huixquilucan
52767,El Xiguiro,Huixquilucan
52768,San Juan Yautepec,Huixquilucan
52769,La Ca�ada,Huixquilucan
52769,Agua de Santo,Huixquilucan
52769,La Cima,Huixquilucan
52770,Las Canteras,Huixquilucan
52770,Paseos del Bosque,Huixquilucan
52773,El Escobal,Huixquilucan
52773,El Rayo,Huixquilucan
52773,La Capilla,Huixquilucan
52773,Magdalena Chichicaspa (Las Campanitas),Huixquilucan
52773,El Manzano,Huixquilucan
52773,Del Rio,Huixquilucan
52773,La Magdalena Chichicaspa,Huixquilucan
52773,La Manzana (La Rinconada),Huixquilucan
52774,Bosque Real,Huixquilucan
52774,El Pedregal,Huixquilucan
52774,El Arenal,Huixquilucan
52775,Constituyentes de 1917,Huixquilucan
52775,Tierra y Libertad,Huixquilucan
52776,Loma del Carmen,Huixquilucan
52776,La Unidad,Huixquilucan
52777,Federal Burocr�tica,Huixquilucan
52777,Paradice,Huixquilucan
52777,El Bosque,Huixquilucan
52778,Ampliaci�n Palo Solo,Huixquilucan
52778,Palo Solo,Huixquilucan
52779,Mont�n Cuarteles,Huixquilucan
52779,Green House,Huixquilucan
52779,Pirules,Huixquilucan
52779,Lomas Country Club,Huixquilucan
52780,Lomas de Tecamachalco Secci�n Cumbres,Huixquilucan
52780,Lomas de Tecamachalco Secci�n Bosques I y II,Huixquilucan
52783,Rinconada de la Herradura,Huixquilucan
52783,Bosques de la Herradura,Huixquilucan
52784,La Herradura Secci�n II,Huixquilucan
52784,La Herradura Secci�n I,Huixquilucan
52784,La Herradura Secci�n III,Huixquilucan
52784,La Herradura,Huixquilucan
52785,Balcones de la Herradura,Huixquilucan
52785,Galard�n,Huixquilucan
52785,Lomas de La Herradura,Huixquilucan
52785,Jardines de la Herradura,Huixquilucan
52786,Lomas An�huac,Huixquilucan
52786,Magnocentro,Huixquilucan
52786,Parques de la Herradura,Huixquilucan
52787,Paseo de las Palmas,Huixquilucan
52787,Valle de las Palmas,Huixquilucan
52787,Bosques de las Palmas,Huixquilucan
52787,Villa de las Lomas,Huixquilucan
52787,Interlomas,Huixquilucan
52787,Palmas Altas,Huixquilucan
52788,Frondoso Torres,Huixquilucan
52788,Lomas de las Palmas,Huixquilucan
52788,Conjunto Urbano El Bosque,Huixquilucan
52788,Lomas del Olivo,Huixquilucan
52789,El Olivo,Huixquilucan
52789,Lomas del Sol,Huixquilucan
52790,San Francisco Dos R�os,Huixquilucan
52790,La Pera,Huixquilucan
52793,San Bartolom� Coatepec,Huixquilucan
52793,El Mirador,Huixquilucan
52793,El Obraje,Huixquilucan
52793,Trejo,Huixquilucan
52794,El Guarda,Huixquilucan
52794,La Glorieta,Huixquilucan
52794,El Hielo,Huixquilucan
52795,Santa Cruz Ayotuxco,Huixquilucan
52795,Canales,Huixquilucan
52796,San Crist�bal Texcalucan,Huixquilucan
52797,San Jos� Huiloteapan,Huixquilucan
52798,San Francisco Ayotuxco,Huixquilucan
52798,Cerro de San Francisco,Huixquilucan
52799,Llano Grande,Huixquilucan
52799,Agua Bendita,Huixquilucan
52799,Agua Blanca,Huixquilucan
52799,El Laurel,Huixquilucan
52799,Piedra Grande,Huixquilucan
53000,San Bartolo Naucalpan (Naucalpan Centro),Naucalpan
53010,Conjunto San Miguel,Naucalpan
53030,Bosque de los Remedios,Naucalpan
53040,Las Am�ricas,Naucalpan
53050,El Mirador,Naucalpan
53060,Loma Taurina,Naucalpan
53070,Unidad Morelos,Naucalpan
53070,Adolfo L�pez Mateos,Naucalpan
53100,Club Cuicacalli,Naucalpan
53100,Ciudad Sat�lite,Naucalpan
53110,Santa Cruz del Monte,Naucalpan
53110,Fontana Residencial,Naucalpan
53110,Bugambilias,Naucalpan
53115,Lomas de Las Fuentes,Naucalpan
53116,La Alteza,Naucalpan
53117,Crist�bal Col�n,Naucalpan
53117,El Sauzalito,Naucalpan
53119,Colonial Sat�lite,Naucalpan
53120,Lomas Verdes 1a Secci�n,Naucalpan
53120,Lomas Verdes (Conjunto Lomas Verdes),Naucalpan
53124,Petroqu�mica Lomas Verdes,Naucalpan
53124,La Cuspide,Naucalpan
53124,Bosque Alto,Naucalpan
53125,Lomas Verdes 4a Secci�n,Naucalpan
53125,Lomas Verdes 3a Secci�n,Naucalpan
53126,Lomas Verdes 5a Secci�n (La Concordia),Naucalpan
53126,Lomas Verdes 6a Secci�n,Naucalpan
53127,La Alte�a I,Naucalpan
53127,La Alte�a III,Naucalpan
53127,Lomas de Santa Cruz,Naucalpan
53127,La Alte�a II,Naucalpan
53128,Residencial Santa Cruz,Naucalpan
53128,Conjunto la Ronda,Naucalpan
53129,Unidad Comercial Heliplaza,Naucalpan
53129,Jardines de Sat�lite,Naucalpan
53129,Telefonistas,Naucalpan
53130,Jardines de la Florida,Naucalpan
53138,Hacienda de Cristo (Exhacienda de Cristo),Naucalpan
53140,Misiones,Naucalpan
53140,Ampliaci�n Misiones,Naucalpan
53140,Boulevares,Naucalpan
53140,Jardines de Boulevares,Naucalpan
53150,Santa Cruz Acatl�n,Naucalpan
53160,La Florida,Naucalpan
53170,Loma de Cristy,Naucalpan
53177,Rinconada Diligencias,Naucalpan
53178,La Soledad,Naucalpan
53179,Lomas Verdes INFONAVIT,Naucalpan
53200,La Atalaya,Naucalpan
53200,Lomas de San Mateo,Naucalpan
53215,La Barranquilla,Naucalpan
53215,Casas Viejas (La Era),Naucalpan
53215,La Huerta San Mateo,Naucalpan
53216,Santiago Tepatlaxco,Naucalpan
53217,Santa Rosa,Naucalpan
53217,El Tejocote 2da. Secci�n,Naucalpan
53217,La Presa (Tejocote),Naucalpan
53217,El Tejocote,Naucalpan
53218,Colinas de San Mateo,Naucalpan
53218,Rancho Colorado,Naucalpan
53219,Rinc�n Verde,Naucalpan
53220,La Joya II,Naucalpan
53220,La Joyita,Naucalpan
53220,Rinc�n de Las Fuentes,Naucalpan
53220,La Joya I,Naucalpan
53220,Rinconada de los Parques,Naucalpan
53220,San Mateo Nopala,Naucalpan
53220,Real San Mateo,Naucalpan
53224,San Mateo Nopala Zona Norte,Naucalpan
53227,San Mateo Nopala Zona Sur,Naucalpan
53227,Izcalli San Mateo,Naucalpan
53227,Pedregal de San Mateo,Naucalpan
53227,Rinconada San Mateo,Naucalpan
53227,Cumbres de San Mateo,Naucalpan
53228,El Risco,Naucalpan
53228,Praderas de San Mateo,Naucalpan
53228,Laderas de la Colmena,Naucalpan
53228,La Luna (San Mateo Nopala),Naucalpan
53228,Los Emperadores,Naucalpan
53229,Puente de Piedra,Naucalpan
53229,Tito,Naucalpan
53229,Del Tejocote,Naucalpan
53229,Cipreses (Las Julianas),Naucalpan
53229,La Hiedra,Naucalpan
53229,El Puerto,Naucalpan
53229,Minas el Capul�n,Naucalpan
53229,El Cobradero,Naucalpan
53229,Juan G�mez,Naucalpan
53229,La Cuesta,Naucalpan
53229,Agua Buena,Naucalpan
53229,San Mateo Nopala,Naucalpan
53229,Las �nimas,Naucalpan
53229,El Cristo,Naucalpan
53229,C�rdoba,Naucalpan
53229,La Rosa,Naucalpan
53229,Jardines Ojo de Agua,Naucalpan
53229,Las Arenillas,Naucalpan
53229,Pinos II,Naucalpan
53229,Las Pe�itas,Naucalpan
53229,Rancho Viejo,Naucalpan
53230,Los �lamos,Naucalpan
53237,Los Fresnos,Naucalpan
53239,Ampliaci�n Los Fresnos,Naucalpan
53240,Alcanfores,Naucalpan
53240,Jardines de San Mateo,Naucalpan
53240,Valle de San Mateo,Naucalpan
53240,Prado San Mateo,Naucalpan
53240,Anexo Jardines de San Mateo,Naucalpan
53240,Jardines de San Mateo Secci�n Colinas,Naucalpan
53247,Lomas de Occipaco,Naucalpan
53248,Laderas de San Mateo,Naucalpan
53250,La Palma,Naucalpan
53250,Santiago Occipaco,Naucalpan
53260,M�xico 68,Naucalpan
53270,Las Papas,Naucalpan
53270,San Juan Totoltepec,Naucalpan
53278,Izcalli del Bosque,Naucalpan
53279,Tercer Mundo,Naucalpan
53279,Bosques de Moctezuma,Naucalpan
53280,Ciudad Brisa,Naucalpan
53283,Pedregal de Echegaray,Naucalpan
53283,Tiahui,Naucalpan
53290,Vista del Valle Secci�n Electricistas,Naucalpan
53290,Balcones de San Mateo,Naucalpan
53296,Xalpa de La Huerta,Naucalpan
53296,Vista del Valle Secci�n Bosques,Naucalpan
53297,Paseos del Bosque,Naucalpan
53297,Ex-Ejido Santiago Occipaco,Naucalpan
53298,Cumbres de Himalaya,Naucalpan
53300,Col�n Echegaray,Naucalpan
53300,Hacienda de Echegaray,Naucalpan
53309,Rinc�n Echegaray,Naucalpan
53310,Bosque de Echegaray,Naucalpan
53310,Bosque de Echegaray Secci�n Electricistas,Naucalpan
53320,Diez de Abril,Naucalpan
53329,Rivera de Echegaray,Naucalpan
53330,Cervecera Modelo,Naucalpan
53338,Santa Mar�a Nativitas,Naucalpan
53338,Conjunto la Huerta,Naucalpan
53339,Rinc�n del Bosque de Echegaray,Naucalpan
53340,La Perla,Naucalpan
53340,Los Pastores,Naucalpan
53348,Industrial La Perla,Naucalpan
53350,Rancho Atenco,Naucalpan
53370,Naucalpan,Naucalpan
53370,Industrial Alce Blanco,Naucalpan
53378,Ahuizotla (Santiago Ahuizotla),Naucalpan
53390,Lomas de Sotelo,Naucalpan
53398,El Parque,Naucalpan
53400,Los Remedios,Naucalpan
53410,Ampliaci�n Los Remedios (El Beato),Naucalpan
53410,Padre Figueroa,Naucalpan
53410,Uni�n Popular,Naucalpan
53420,Loma Colorada 1ra. Secci�n,Naucalpan
53425,El Corralito,Naucalpan
53425,La Universal,Naucalpan
53426,Los Cuartos II,Naucalpan
53426,San Lorenzo Totolinga,Naucalpan
53426,Casa Blanca,Naucalpan
53426,Cuartos III,Naucalpan
53426,Cuartos II 1a Secci�n,Naucalpan
53426,Emiliano Zapata,Naucalpan
53426,La Ca�ada - San Lorenzo Totolinga,Naucalpan
53426,San Lorenzo Totolinga 2a Secci�n,Naucalpan
53426,La Raquelito,Naucalpan
53426,San Lorenzo Totolinga 1a Secci�n,Naucalpan
53427,Loma Colorada 2da. Secci�n,Naucalpan
53427,Las Huertas 1a Secc,Naucalpan
53427,Luisa Isabel Campos de Jim�nez Cant� (Cuartos I),Naucalpan
53427,Las Caballerizas,Naucalpan
53427,Las Huertas 2a Secci�n,Naucalpan
53427,Las Huertas 3a Secci�n,Naucalpan
53427,El Porvenir,Naucalpan
53427,Lomas de los Remedios,Naucalpan
53428,M�xico 86 (La Chacona),Naucalpan
53430,Los Arcos,Naucalpan
53430,Reubicaci�n el Torito,Naucalpan
53440,Sierra Nevada,Naucalpan
53440,Uni�n Popular,Naucalpan
53440,Predio el Zapote,Naucalpan
53450,Ciudad de los Ni�os,Naucalpan
53458,Bosque de los Remedios,Naucalpan
53459,Ampliaci�n Ciudad de los Ni�os,Naucalpan
53460,Los Arcos,Naucalpan
53460,Barrio el Torito,Naucalpan
53460,La Rivera,Naucalpan
53470,Loma de Canteras (Lomas de Cantera),Naucalpan
53489,Parque Industrial Naucalpan,Naucalpan
53490,Santa Lilia Chamapa,Naucalpan
53490,Lomas de San Agust�n,Naucalpan
53490,Las Tinajas (Predio Las Tinajas),Naucalpan
53490,La Monera,Naucalpan
53500,San Andr�s Atoto,Naucalpan
53500,El Conde,Naucalpan
53519,Industrial Atoto,Naucalpan
53520,Rosa de Castilla,Naucalpan
53520,El Olivar,Naucalpan
53529,Industrial Tlatilco,Naucalpan
53530,Nuevo Molinito,Naucalpan
53530,El Molinito,Naucalpan
53530,Jardines del Molinito,Naucalpan
53533,Campo Militar 1,Naucalpan
53550,San Esteban Huitzilacasco,Naucalpan
53550,Unidad San Esteban,Naucalpan
53550,Ampliaci�n San Esteban,Naucalpan
53560,L�zaro C�rdenas,Naucalpan
53569,San Francisco Cuautlalpan,Naucalpan
53570,La Ca�ada,Naucalpan
53570,Lomas de la Ca�ada,Naucalpan
53570,San Antonio Zomeyucan,Naucalpan
53570,San Antonio Zomeyucan (Zona Urbana),Naucalpan
53580,Ampliaci�n Loma Linda,Naucalpan
53580,Reforma San Lu�s,Naucalpan
53580,La Esperanza,Naucalpan
53580,Loma Linda,Naucalpan
53580,San Lu�s Tlatilco,Naucalpan
53580,Piedras Negras,Naucalpan
53598,Estado de M�xico (El Tambor),Naucalpan
53598,Hidalgo,Naucalpan
53640,Nueva San Rafael,Naucalpan
53640,Bosques de Chamapa,Naucalpan
53650,Cielito,Naucalpan
53650,Upeny de Gora,Naucalpan
53650,Dudy,Naucalpan
53650,La Ca�ada de Boche,Naucalpan
53650,Donity,Naucalpan
53650,Dayu,Naucalpan
53650,Chixtu,Naucalpan
53650,La Mora,Naucalpan
53650,San Francisco Chimalpa,Naucalpan
53650,Mojonera,Naucalpan
53650,Yongua,Naucalpan
53653,Xoyu,Naucalpan
53653,Boxisda,Naucalpan
53653,Depeny,Naucalpan
53653,Las Trenzonas,Naucalpan
53653,Dongu,Naucalpan
53653,Shido,Naucalpan
53654,Gora,Naucalpan
53654,Moni,Naucalpan
53654,La Mora,Naucalpan
53654,Shindo,Naucalpan
53654,Juando,Naucalpan
53654,Yongua Bosques,Naucalpan
53654,Panthe,Naucalpan
53654,Bandhi,Naucalpan
53654,Boito,Naucalpan
53654,Chivato,Naucalpan
53654,Arenillas (La Capilla),Naucalpan
53654,De Dorani,Naucalpan
53655,Salinas,Naucalpan
53658,La Magnolia,Naucalpan
53658,Las Cruces,Naucalpan
53658,La Viga (Cerro Loco),Naucalpan
53658,Paraje las Rosas,Naucalpan
53658,Minas del Tecolote,Naucalpan
53658,Las Torres,Naucalpan
53658,La Palma (Pie de la Palma),Naucalpan
53658,La Cebada (Barrio la Cebada),Naucalpan
53658,El Castillo,Naucalpan
53658,Llano de las Flores (Barrio del Hueso),Naucalpan
53659,La Magueyera,Naucalpan
53659,El Guardita,Naucalpan
53659,Villa Alpina,Naucalpan
53659,San Miguel Dorami,Naucalpan
53659,Luis Donaldo Colosio (Piedra de Alesna),Naucalpan
53659,Chimalpa Viejo,Naucalpan
53659,Batha,Naucalpan
53659,Valle Tranquilo,Naucalpan
53659,Las Mesas,Naucalpan
53659,Tres Piedras (La Loma),Naucalpan
53659,San Jos� Tejamanil,Naucalpan
53660,San Rafael Chamapa,Naucalpan
53660,La Presa Chamapa,Naucalpan
53664,Cuartos Constituci�n (San Rafael Chamapa I),Naucalpan
53664,San Rafael Chamapa (Tabiquera 6),Naucalpan
53664,San Rafael Chamapa II,Naucalpan
53664,San Rafael Chamapa (Tabiquera 3),Naucalpan
53664,San Rafael Chamapa I,Naucalpan
53664,San Rafael Chamapa (Tabiquera 7),Naucalpan
53664,San Rafael Chamapa (Tabiquera 4),Naucalpan
53664,San Rafael Chamapa (Tabiquera 5),Naucalpan
53664,San Rafael Chamapa (Tabiquera 8),Naucalpan
53664,San Rafael Chamapa (Tabiquera 2),Naucalpan
53670,Los Cuartos (San Rafael Chamapa I),Naucalpan
53680,San Rafael Chamapa IV,Naucalpan
53680,San Rafael Chamapa (Tabiquera 9),Naucalpan
53687,San Rafael Chamapa (Tabiquera 1),Naucalpan
53687,Poetas Mexiquenses ( Tabiquera 10 ),Naucalpan
53688,Las Colonias (Predio Las Colonias),Naucalpan
53689,Izcalli Chamapa,Naucalpan
53689,Isidro Fabela (Tabiqueras 11 y 12),Naucalpan
53690,Olimpiada 68 (San Rafael Chamapa III),Naucalpan
53690,Ol�mpica (San Rafael Chamapa V),Naucalpan
53690,Lomas de Chamapa,Naucalpan
53690,Valle Dorado (San Rafael Chamapa VI),Naucalpan
53690,Ampliaci�n Ol�mpica (San Rafael Chamapa VII),Naucalpan
53694,Minas El Coyote,Naucalpan
53695,Minas San Mart�n,Naucalpan
53695,La Palma,Naucalpan
53696,Mina Palacios (Minas Palacio),Naucalpan
53697,Minas El Tecolote,Naucalpan
53697,3 de Mayo,Naucalpan
53697,Jardines de San Jos�,Naucalpan
53697,El Capul�n,Naucalpan
53698,San Jos� Poza Honda,Naucalpan
53698,Ol�mpica Radio 2a Secci�n (El Caracol),Naucalpan
53698,Ol�mpica Radio 1a Secci�n (San Rafael Chamapa),Naucalpan
53700,Altamira,Naucalpan
53700,Torres Zomeyucan (San Antonio Zomeyucan),Naucalpan
53700,Ampliaci�n Altamira,Naucalpan
53708,Balcones de Chamapa,Naucalpan
53708,Tierra y Libertad,Naucalpan
53710,Plan de Ayala,Naucalpan
53713,Vicente Guerrero,Naucalpan
53714,La Mancha III,Naucalpan
53716,La Punta,Naucalpan
53716,Alfredo del Mazo V�lez,Naucalpan
53717,La Mancha II,Naucalpan
53717,La Mancha I,Naucalpan
53718,Alfredo V. Bonfil,Naucalpan
53719,Lomas del Cadete,Naucalpan
53730,Capul�n Soledad,Naucalpan
53730,San Jos� de los Leones 2a Secci�n,Naucalpan
53730,San Jos� de los Leones 1a Secci�n,Naucalpan
53730,Unidad y Progreso,Naucalpan
53760,San Jos� de los Leones 3a Secci�n,Naucalpan
53770,El Chamizal,Naucalpan
53780,M�rtires de R�o Blanco,Naucalpan
53787,Ampliaci�n M�rtires de R�o Blanco,Naucalpan
53788,La Tolva,Naucalpan
53790,Benito Ju�rez,Naucalpan
53798,La Radio Benito Ju�rez,Naucalpan
53799,Ampliaci�n Benito Ju�rez,Naucalpan
53800,Lomas del R�o,Naucalpan
53800,Buenavista,Naucalpan
53809,Miramar,Naucalpan
53810,San Jos� R�o Hondo (R�o Hondo),Naucalpan
53819,Progreso,Naucalpan
53820,Ricardo Flores Mag�n,Naucalpan
53830,La Guadalupana,Naucalpan
53830,Independencia,Naucalpan
53839,Rincones del Bosque,Naucalpan
53840,Lomas del Huizachal,Naucalpan
53900,Lomas Hip�dromo,Naucalpan
53909,Explanada de las Fuentes,Naucalpan
53910,Lomas Manuel �vila Camacho,Naucalpan
53930,Country Club,Naucalpan
53940,R�o Escondido,Naucalpan
53950,Lomas de Tecamachalco,Naucalpan
53960,Reforma Social (Lomas de San Isidro),Naucalpan
53970,San Miguel Tecamachalco,Naucalpan"