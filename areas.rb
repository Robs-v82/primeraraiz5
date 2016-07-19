areasArr = []
areas.each_line{|l| line = l.split(","); areasArr.push(line)}
areasArr.each{|x|x.each{|y|y.strip!}}

areasArr.each{|x| Area.create(zip:x[0], name:x[1], district:x[2])}

areas = "01000,San Ángel,Álvaro Obregón
01010,Los Alpes,Álvaro Obregón
01020,Guadalupe Inn,Álvaro Obregón
01029,INFONAVIT,Álvaro Obregón
01030,Florida,Álvaro Obregón
01030,Axotla,Álvaro Obregón
01040,Campestre,Álvaro Obregón
01048,Las Águilas,Álvaro Obregón
01049,Tlacopac,Álvaro Obregón
01050,Ex-Hacienda de Guadalupe Chimalistac,Álvaro Obregón
01060,San Ángel Inn,Álvaro Obregón
01060,Altavista,Álvaro Obregón
01070,Chimalistac,Álvaro Obregón
01080,Progreso Tizapan,Álvaro Obregón
01089,Ermita Tizapan,Álvaro Obregón
01090,Loreto,Álvaro Obregón
01090,Tizapan,Álvaro Obregón
01090,La Otra Banda,Álvaro Obregón
01100,Pólvora,Álvaro Obregón
01100,Lomas de Santo Domingo,Álvaro Obregón
01109,La Conchita,Álvaro Obregón
01110,Ampliación El Capulín,Álvaro Obregón
01110,Liberales de 1857,Álvaro Obregón
01110,Belém de las Flores,Álvaro Obregón
01110,El Capulín,Álvaro Obregón
01120,Acueducto,Álvaro Obregón
01120,Sears Roebuck,Álvaro Obregón
01120,Cove,Álvaro Obregón
01120,Las Américas,Álvaro Obregón
01120,Hidalgo,Álvaro Obregón
01125,Ampliación Acueducto,Álvaro Obregón
01130,Molino de Santo Domingo,Álvaro Obregón
01130,Real del Monte,Álvaro Obregón
01130,Molino de Santo Domingo,Álvaro Obregón
01130,Paraíso,Álvaro Obregón
01139,Reacomodo Pino Suárez,Álvaro Obregón
01140,José Maria Pino Suárez,Álvaro Obregón
01140,Bellavista,Álvaro Obregón
01150,Cristo Rey,Álvaro Obregón
01150,Tolteca,Álvaro Obregón
01159,Delegación Política Álvaro Obregón,Álvaro Obregón
01160,Bosque,Álvaro Obregón
01160,Maria G. de García Ruiz,Álvaro Obregón
01160,1a Victoria,Álvaro Obregón
01160,Isidro Fabela,Álvaro Obregón
01170,Abraham M. González,Álvaro Obregón
01170,Santa Fe IMSS,Álvaro Obregón
01180,8 de Agosto,Álvaro Obregón
01180,Carola,Álvaro Obregón
01180,San Pedro de los Pinos,Álvaro Obregón
01184,Nelli Campo Bello,Álvaro Obregón
01200,Arturo Martínez,Álvaro Obregón
01210,Santa Fe,Álvaro Obregón
01219,Lomas de Santa Fe,Álvaro Obregón
01220,Mártires de Tacubaya,Álvaro Obregón
01220,Zenón Delgado,Álvaro Obregón
01220,Bonanza,Álvaro Obregón
01220,Cuevitas,Álvaro Obregón
01220,El Cuernito,Álvaro Obregón
01220,La Estrella,Álvaro Obregón
01230,Campo de Tiro los Gamitos,Álvaro Obregón
01230,El Piru Santa Fe,Álvaro Obregón
01230,Tlapechico,Álvaro Obregón
01230,El Piru 2a Ampliación,Álvaro Obregón
01230,Los Gamitos,Álvaro Obregón
01239,La Huerta,Álvaro Obregón
01240,Pueblo Nuevo,Álvaro Obregón
01250,Margarita Maza de Juárez,Álvaro Obregón
01250,Tecolalco,Álvaro Obregón
01250,El Árbol,Álvaro Obregón
01250,Ladera,Álvaro Obregón
01250,Lomas de Nuevo México,Álvaro Obregón
01259,Ampliación La Cebada,Álvaro Obregón
01259,La Mexicana 2a Ampliación,Álvaro Obregón
01260,Ampliación La Mexicana,Álvaro Obregón
01260,La Palmita,Álvaro Obregón
01260,La Mexicana,Álvaro Obregón
01260,Calzada Jalalpa,Álvaro Obregón
01260,Liberación Proletaria,Álvaro Obregón
01269,2a Sección Cañada,Álvaro Obregón
01269,1a Sección Cañada,Álvaro Obregón
01270,El Tejocote,Álvaro Obregón
01270,Lomas de Capula,Álvaro Obregón
01270,Golondrinas 1a Sección,Álvaro Obregón
01270,La Presa,Álvaro Obregón
01270,Golondrinas,Álvaro Obregón
01270,Golondrinas 2a Sección,Álvaro Obregón
01275,Villa Solidaridad,Álvaro Obregón
01276,El Pirul,Álvaro Obregón
01278,Desarrollo Urbano,Álvaro Obregón
01279,Lomas de Becerra,Álvaro Obregón
01280,La Joya,Álvaro Obregón
01280,Arvide,Álvaro Obregón
01280,El Pocito,Álvaro Obregón
01280,Francisco Villa,Álvaro Obregón
01280,Lomas de Becerra,Álvaro Obregón
01285,El Rodeo,Álvaro Obregón
01289,Reacomodo El Cuernito,Álvaro Obregón
01290,Presidentes,Álvaro Obregón
01290,Piloto Adolfo López Mateos,Álvaro Obregón
01296,Jalalpa Tepito 2a Ampliación,Álvaro Obregón
01296,Jalalpa Tepito,Álvaro Obregón
01296,Ampliación Jalalpa,Álvaro Obregón
01298,Ampliación Piloto Adolfo López Mateos,Álvaro Obregón
01299,2a Ampliación Presidentes,Álvaro Obregón
01299,1a Ampliación Presidentes,Álvaro Obregón
01310,San Gabriel,Álvaro Obregón
01320,Carlos A. Madrazo,Álvaro Obregón
01330,Paseo de las Lomas,Álvaro Obregón
01340,Bejero del Pueblo Santa Fe,Álvaro Obregón
01376,Santa Fe,Álvaro Obregón
01376,Santa Fe La Loma,Álvaro Obregón
01376,Santa Fe Centro Ciudad,Álvaro Obregón
01376,Santa Fe Peña Blanca,Álvaro Obregón
01377,Jalalpa El Grande,Álvaro Obregón
01379,Antonio Carrillo Flores,Álvaro Obregón
01389,Santa Fe Tlayapaca,Álvaro Obregón
01400,Olivar del Conde 1a Sección,Álvaro Obregón
01400,Preconcreto,Álvaro Obregón
01407,Galeana,Álvaro Obregón
01408,Olivar del Conde 2a Sección,Álvaro Obregón
01410,Barrio Norte,Álvaro Obregón
01410,Palmas,Álvaro Obregón
01419,Minas Cristo Rey,Álvaro Obregón
01420,Sacramento,Álvaro Obregón
01420,Santa María Nonoalco,Álvaro Obregón
01430,Colina del Sur,Álvaro Obregón
01440,Abeto,Álvaro Obregón
01450,Unidad Popular Emiliano Zapata,Álvaro Obregón
01450,Hogar y Redención,Álvaro Obregón
01450,Cañada del Olivar,Álvaro Obregón
01450,Batallón de San Patricio,Álvaro Obregón
01460,Alfonso XIII,Álvaro Obregón
01470,Alfalfar,Álvaro Obregón
01470,Molino de Rosas,Álvaro Obregón
01480,Lomas de Plateros,Álvaro Obregón
01490,La Cascada,Álvaro Obregón
01490,Torres de Mixcoac,Álvaro Obregón
01500,Santa Lucía,Álvaro Obregón
01500,Miguel Gaona Armenta,Álvaro Obregón
01509,Santa Lucía Chantepec,Álvaro Obregón
01510,Garcimarrero,Álvaro Obregón
01510,Los Cedros,Álvaro Obregón
01510,La Araña,Álvaro Obregón
01520,Estado de Hidalgo,Álvaro Obregón
01520,Piru Santa Lucía,Álvaro Obregón
01520,Ampliación Los Pirules,Álvaro Obregón
01520,Ampliación Estado de Hidalgo,Álvaro Obregón
01520,El Politoco,Álvaro Obregón
01530,Corpus Christy,Álvaro Obregón
01537,Universal,Álvaro Obregón
01538,Tepopotla,Álvaro Obregón
01539,Cooperativa Unión Olivos,Álvaro Obregón
01539,Acuilotla,Álvaro Obregón
01540,Cehuaya,Álvaro Obregón
01540,Providencia,Álvaro Obregón
01540,Balcones de Cehuayo,Álvaro Obregón
01540,Llano Redondo,Álvaro Obregón
01540,Punta de Cehuaya,Álvaro Obregón
01548,Villa Progresista,Álvaro Obregón
01549,Dos Ríos del Pueblo Santa Lucía,Álvaro Obregón
01550,Tepeaca,Álvaro Obregón
01550,Ampliación Tepeaca,Álvaro Obregón
01550,Rinconada Las Cuevitas,Álvaro Obregón
01560,Canutillo,Álvaro Obregón
01560,Canutillo 3a Sección,Álvaro Obregón
01560,Ave Real,Álvaro Obregón
01560,Canutillo 2a Sección,Álvaro Obregón
01566,Hueytlale,Álvaro Obregón
01567,Tepeaca,Álvaro Obregón
01569,Reacomodo Valentín Gómez Farías,Álvaro Obregón
01588,Tarango,Álvaro Obregón
01590,El Rincón,Álvaro Obregón
01600,Sociedad Cooperativa Unión Poder Popular,Álvaro Obregón
01600,Merced Gómez,Álvaro Obregón
01610,Profesor J. Arturo López Martínez,Álvaro Obregón
01610,Colinas de Tarango,Álvaro Obregón
01618,Arcos Centenario,Álvaro Obregón
01618,Ex-Hacienda de Tarango,Álvaro Obregón
01619,Rinconada de Tarango,Álvaro Obregón
01619,La Martinica,Álvaro Obregón
01620,Lomas de Tarango,Álvaro Obregón
01630,Los Juristas,Álvaro Obregón
01630,Lomas de Puerta Grande,Álvaro Obregón
01630,Belém de las Flores,Álvaro Obregón
01630,Puerta Grande,Álvaro Obregón
01640,Herón Proal,Álvaro Obregón
01645,Ponciano Arriaga,Álvaro Obregón
01650,Ampliación Tlacuitlapa,Álvaro Obregón
01650,2o Reacomodo Tlacuitlapa,Álvaro Obregón
01650,Santa Lucía Chantepec,Álvaro Obregón
01650,La Milagrosa,Álvaro Obregón
01650,Palmas Axotitla,Álvaro Obregón
01650,Tlacuitlapa,Álvaro Obregón
01650,El Ruedo,Álvaro Obregón
01700,2a Del Moral del Pueblo de Tetelpan,Álvaro Obregón
01700,San Agustín del Pueblo Tetelpan,Álvaro Obregón
01700,La Joyita del Pueblo Tetelpan,Álvaro Obregón
01700,Ocotillos del Pueblo Tetelpan,Álvaro Obregón
01700,Tetelpan,Álvaro Obregón
01700,Tecalcapa del Pueblo Tetelpan,Álvaro Obregón
01708,El Mirador del Pueblo Tetelpan,Álvaro Obregón
01708,El Encino del Pueblo Tetelpan,Álvaro Obregón
01710,Las Águilas,Álvaro Obregón
01710,Ampliación Alpes,Álvaro Obregón
01720,Lomas de Guadalupe,Álvaro Obregón
01729,Alcantarilla,Álvaro Obregón
01730,Lomas de las Águilas,Álvaro Obregón
01730,Puente Colorado,Álvaro Obregón
01740,La Peñita del Pueblo Tetelpan,Álvaro Obregón
01740,San Clemente Norte,Álvaro Obregón
01740,San Clemente Sur,Álvaro Obregón
01750,Las Águilas 2o Parque,Álvaro Obregón
01750,Las Águilas 3er Parque,Álvaro Obregón
01750,Las Águilas 1a Sección,Álvaro Obregón
01759,Ampliación Las Águilas,Álvaro Obregón
01760,Flor de María,Álvaro Obregón
01760,Atlamaya,Álvaro Obregón
01760,La Herradura del Pueblo Tetelpan,Álvaro Obregón
01770,La Angostura,Álvaro Obregón
01770,San José del Olivar,Álvaro Obregón
01780,Tizampampano del Pueblo Tetelpan,Álvaro Obregón
01780,Olivar de los Padres,Álvaro Obregón
01788,El Olivarito,Álvaro Obregón
01789,Miguel Hidalgo,Álvaro Obregón
01790,Lomas de los Ángeles del Pueblo Tetelpan,Álvaro Obregón
01790,Lomas de San Ángel Inn,Álvaro Obregón
01800,San Bartolo Ameyalco,Álvaro Obregón
01807,Rancho San Francisco Pueblo San Bartolo Ameyalco,Álvaro Obregón
01810,Villa Verdún,Álvaro Obregón
01820,Ejido San Mateo,Álvaro Obregón
01820,Lomas Axomiatla,Álvaro Obregón
01830,Santa Rosa Xochiac,Álvaro Obregón
01840,Torres de Potrero,Álvaro Obregón
01849,Rincón de la Bolsa,Álvaro Obregón
01849,Rancho del Carmen del Pueblo San Bartolo Ameyalco,Álvaro Obregón
01856,Paraje del Caballito,Álvaro Obregón
01857,Lomas de Chamontoya,Álvaro Obregón
01859,Tlacoyaque,Álvaro Obregón
01860,Lomas de La Era,Álvaro Obregón
01863,Lomas del Capulín,Álvaro Obregón
01870,Lomas de los Cedros,Álvaro Obregón
01900,Jardines del Pedregal,Álvaro Obregón
01904,San Jerónimo Aculco,Álvaro Obregón
01940,Rancho Anzaldo y Contreras,Álvaro Obregón
01990,Pedregal,Álvaro Obregón
02000,Centro de Azcapotzalco,Azcapotzalco
02008,Delegación Política Azcapotzalco,Azcapotzalco
02010,Nuevo Barrio San Rafael,Azcapotzalco
02010,Los Reyes,Azcapotzalco
02010,San Rafael,Azcapotzalco
02020,Santo Tomás,Azcapotzalco
02020,San Marcos,Azcapotzalco
02040,Del Maestro,Azcapotzalco
02040,San Sebastián,Azcapotzalco
02050,Santa María Malinalco,Azcapotzalco
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
02080,Clavería,Azcapotzalco
02090,San Álvaro,Azcapotzalco
02099,Ángel Zimbrón,Azcapotzalco
02100,El Rosario,Azcapotzalco
02100,Los Oyameles,Azcapotzalco
02109,Manuel Rivera Anaya CROC 1,Azcapotzalco
02109,CROC 6 Olimpia,Azcapotzalco
02120,San Martín Xochinahuac,Azcapotzalco
02128,Nueva El Rosario,Azcapotzalco
02129,Nueva España,Azcapotzalco
02130,Tierra Nueva,Azcapotzalco
02140,Santa Inés,Azcapotzalco
02150,Pasteros,Azcapotzalco
02150,Azcapotzalco Pasteros,Azcapotzalco
02160,Santo Domingo,Azcapotzalco
02169,Villas de Azcapotzalco,Azcapotzalco
02200,Reynosa Tamaulipas,Azcapotzalco
02230,Santa Bárbara,Azcapotzalco
02240,San Andrés,Azcapotzalco
02240,Ticoman,Azcapotzalco
02240,San Andrés,Azcapotzalco
02240,San Andrés Fase II,Azcapotzalco
02250,Santa Catarina,Azcapotzalco
02260,Pitolaca,Azcapotzalco
02300,Industrial Vallejo,Azcapotzalco
02310,Ferrería,Azcapotzalco
02320,San Andrés de las Salinas,Azcapotzalco
02330,Huautla de las Salinas,Azcapotzalco
02340,Santa Cruz de las Salinas,Azcapotzalco
02350,Jardines de Ceylán,Azcapotzalco
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
02470,Ampliación Petrolera,Azcapotzalco
02479,Lázaro Cárdenas,Azcapotzalco
02480,Petrolera,Azcapotzalco
02490,Kervin,Azcapotzalco
02490,San Mateo,Azcapotzalco
02500,Unidad Cuitlahuac,Azcapotzalco
02510,El Jagüey,Azcapotzalco
02510,Pantaco,Azcapotzalco
02519,El Jagüey,Azcapotzalco
02520,Estación Pantaco,Azcapotzalco
02525,Granjas Pantaco Campamento Ferrocarrilero,Azcapotzalco
02530,Jardín Azpeitia,Azcapotzalco
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
02719,Ampliación San Pedro Xalpa,Azcapotzalco
02720,San Antonio,Azcapotzalco
02720,San Bartolo Cahualtongo,Azcapotzalco
02729,Campo Encantado,Azcapotzalco
02730,San Francisco Tetecala,Azcapotzalco
02739,Miguel Lerdo de Tejada,Azcapotzalco
02750,Santiago Ahuizotla,Azcapotzalco
02750,La Escuadra,Azcapotzalco
02750,La Providencia,Azcapotzalco
02760,Santa Lucía,Azcapotzalco
02760,Industrial San Antonio,Azcapotzalco
02770,Santa Cruz Acayucan,Azcapotzalco
02780,Plenitud,Azcapotzalco
02790,Santa Apolonia,Azcapotzalco
02800,Nueva Santa María,Azcapotzalco
02810,Ignacio Allende,Azcapotzalco
02810,Victoria de las Democracias,Azcapotzalco
02830,Toronja,Azcapotzalco
02830,San Bernabé,Azcapotzalco
02840,Obrero Popular,Azcapotzalco
02840,Cobre de México,Azcapotzalco
02850,Tlatilco,Azcapotzalco
02860,Tlatilco,Azcapotzalco
02870,San Salvador Xochimanca,Azcapotzalco
02900,Aguilera,Azcapotzalco
02910,Aldana,Azcapotzalco
02920,Ampliación Cosmopolita,Azcapotzalco
02930,Liberación,Azcapotzalco
02940,Porvenir,Azcapotzalco
02950,Del Gas,Azcapotzalco
02960,San Francisco Xocotitla,Azcapotzalco
02970,Ampliación Del Gas,Azcapotzalco
02980,Arenal,Azcapotzalco
02980,Patrimonio Familiar,Azcapotzalco
02990,La Raza,Azcapotzalco
03000,Piedad Narvarte,Benito Juárez
03010,Atenor Salas,Benito Juárez
03020,Esperanza,Benito Juárez
03020,Narvarte Poniente,Benito Juárez
03023,Narvarte Oriente,Benito Juárez
03023,Unidad Narvarte IMSS,Benito Juárez
03028,Secretaria de Comunicaciones y Transportes,Benito Juárez
03100,Del Valle Centro,Benito Juárez
03100,Insurgentes San Borja,Benito Juárez
03103,Del Valle Norte,Benito Juárez
03104,Del Valle Sur,Benito Juárez
03109,Partido Acción Nacional,Benito Juárez
03199,Cámara Nacional de la Industria del Hierro y Acero,Benito Juárez
03200,Tlacoquemécatl,Benito Juárez
03220,Centro Urbano Presidente Miguel Alemán,Benito Juárez
03229,Centro Hospitalario 20 de Noviembre,Benito Juárez
03230,Actipan,Benito Juárez
03240,Acacias,Benito Juárez
03300,Portales Sur,Benito Juárez
03303,Portales Norte,Benito Juárez
03310,Santa Cruz Atoyac,Benito Juárez
03313,Modulo Social las Flores,Benito Juárez
03319,Delegación Política Benito Juárez,Benito Juárez
03320,Residencial Emperadores,Benito Juárez
03330,Xoco,Benito Juárez
03340,General Pedro María Anaya,Benito Juárez
03400,Álamos,Benito Juárez
03410,Postal,Benito Juárez
03420,Miguel Alemán,Benito Juárez
03430,Josefa Ortiz de Domínguez,Benito Juárez
03440,Niños Héroes,Benito Juárez
03500,Nativitas,Benito Juárez
03510,Moderna,Benito Juárez
03520,Iztaccihuatl,Benito Juárez
03530,Villa de Cortes,Benito Juárez
03540,Del Carmen,Benito Juárez
03550,Zacahuitzco,Benito Juárez
03560,Albert,Benito Juárez
03570,Portales Oriente,Benito Juárez
03580,Miravalle,Benito Juárez
03590,Ermita,Benito Juárez
03600,Vértiz Narvarte,Benito Juárez
03610,Américas Unidas,Benito Juárez
03620,Periodista,Benito Juárez
03630,Independencia,Benito Juárez
03640,Del Lago,Benito Juárez
03650,Letrán Valle,Benito Juárez
03660,San Simón Ticumac,Benito Juárez
03700,Santa María Nonoalco,Benito Juárez
03710,Ciudad de los Deportes,Benito Juárez
03720,Nochebuena,Benito Juárez
03730,San Juan,Benito Juárez
03740,Extremadura Insurgentes,Benito Juárez
03800,San Pedro de los Pinos,Benito Juárez
03810,Nápoles,Benito Juárez
03820,8 de Agosto,Benito Juárez
03840,Ampliación Nápoles,Benito Juárez
03849,Cámara Nacional de la Industria de Transformación,Benito Juárez
03900,San José Insurgentes,Benito Juárez
03910,Mixcoac,Benito Juárez
03920,Insurgentes Mixcoac,Benito Juárez
03930,Merced Gómez,Benito Juárez
03940,Crédito Constructor,Benito Juárez
04000,Villa Coyoacán,Coyoacán
04009,Delegación Política Coyoacán,Coyoacán
04010,Barrio Santa Catarina,Coyoacán
04020,Barrio La Concepción,Coyoacán
04030,Barrio San Lucas,Coyoacán
04040,Parque San Andrés,Coyoacán
04100,Del Carmen,Coyoacán
04110,Viveros de Coyoacán,Coyoacán
04120,San Diego Churubusco,Coyoacán
04120,San Mateo,Coyoacán
04129,Cámara Nacional de la Industria Editorial,Coyoacán
04200,Campestre Churubusco,Coyoacán
04210,Churubusco Country Club,Coyoacán
04230,Prado Churubusco,Coyoacán
04239,Ermita Churubusco,Coyoacán
04240,Hermosillo,Coyoacán
04250,Paseos de Taxqueña,Coyoacán
04259,20 de Agosto,Coyoacán
04260,San Francisco Culhuacán Barrio de San Juan,Coyoacán
04260,San Francisco Culhuacán Barrio de La Magdalena,Coyoacán
04260,San Francisco Culhuacán Barrio de Santa Ana,Coyoacán
04260,San Francisco Culhuacán Barrio de San Francisco,Coyoacán
04270,Santa Martha del Sur Quetzalcoatl,Coyoacán
04280,Taxqueña,Coyoacán
04300,Ajusco,Coyoacán
04307,Ajusco Montserrat,Coyoacán
04309,Pedregal de Monserrat,Coyoacán
04310,Monte de Piedad,Coyoacán
04310,Romero de Terreros,Coyoacán
04317,ISSSTE,Coyoacán
04318,Barrio Oxtopulco Universidad,Coyoacán
04319,Torres de Chimalistac,Coyoacán
04319,Fortín de Chimalistac,Coyoacán
04320,Romero de Terreros,Coyoacán
04320,Cuadrante de San Francisco,Coyoacán
04320,Pedregal de San Francisco,Coyoacán
04326,Villa de San Francisco,Coyoacán
04327,Rincón de Guanajuato,Coyoacán
04330,Barrio del Niño Jesús,Coyoacán
04330,Pedregal de Coyoacán,Coyoacán
04330,El Rosedal,Coyoacán
04330,Pueblo de los Reyes,Coyoacán
04330,Pacifico,Coyoacán
04330,Rosedal,Coyoacán
04330,Rinconada de los Reyes,Coyoacán
04336,Zapata,Coyoacán
04337,Montserrat,Coyoacán
04338,Mariana,Coyoacán
04340,Copilco Universidad ISSSTE,Coyoacán
04340,Insurgentes San Ángel,Coyoacán
04340,Copilco El Bajo,Coyoacán
04350,Integración Latinoamericana,Coyoacán
04350,Villas Copilco,Coyoacán
04350,Altillo Universidad,Coyoacán
04350,Copilco,Coyoacán
04350,Acasulco,Coyoacán
04359,Empleados Federales,Coyoacán
04360,Copilco El Alto,Coyoacán
04360,Copilco Universidad,Coyoacán
04368,Residencial la Cantera,Coyoacán
04369,Pedregal de Santo Domingo,Coyoacán
04370,Ciudad Jardín,Coyoacán
04370,Xotepingo 101,Coyoacán
04370,Atlántida,Coyoacán
04380,El Rosario,Coyoacán
04380,Pueblo La Candelaria,Coyoacán
04390,Nueva Díaz Ordaz,Coyoacán
04390,Huayamilpas,Coyoacán
04400,Educación,Coyoacán
04410,Tlalpan FOVISSSTE,Coyoacán
04410,Petrolera Taxqueña,Coyoacán
04420,Ex-Ejido de San Francisco Culhuacán,Coyoacán
04440,Culhuacán CTM Sección I,Coyoacán
04440,Culhuacán CTM Sección V,Coyoacán
04440,Culhuacán CTM Sección II,Coyoacán
04450,El Centinela,Coyoacán
04460,Avante,Coyoacán
04470,Presidentes Ejidales 2a Sección,Coyoacán
04470,Presidentes Ejidales 1a Sección,Coyoacán
04480,Culhuacán CTM Sección X-A,Coyoacán
04480,Culhuacán CTM CROC,Coyoacán
04480,Culhuacán CTM Sección III,Coyoacán
04480,Culhuacán CTM Sección VI,Coyoacán
04489,Culhuacán CTM Sección VII,Coyoacán
04490,Culhuacán CTM Canal Nacional,Coyoacán
04490,Culhuacán CTM Sección Piloto,Coyoacán
04500,Jardines del Pedregal de San Ángel,Coyoacán
04510,Universidad Nacional Autónoma de México,Coyoacán
04519,La Otra Banda,Coyoacán
04530,Insurgentes Cuicuilco,Coyoacán
04535,Torres del Maurel,Coyoacán
04600,Pedregal de Santa Úrsula,Coyoacán
04610,Xotepingo,Coyoacán
04620,Pueblo de San Pablo Tepetlapa,Coyoacán
04630,Adolfo Ruiz Cortínes,Coyoacán
04640,El Reloj,Coyoacán
04650,Los Fresnos,Coyoacán
04650,Pueblo de Santa Úrsula Coapa,Coyoacán
04660,Joyas del Pedregal,Coyoacán
04660,Pedregal de La Zorra,Coyoacán
04700,Villa Panamericana,Coyoacán
04700,Pedregal de Carrasco,Coyoacán
04710,Olímpica,Coyoacán
04718,Vistas del Maurel,Coyoacán
04719,Pedregal del Sur,Coyoacán
04719,Villas del Pedregal,Coyoacán
04720,Pedregal del Maurel,Coyoacán
04729,Rinconada las Playas INFONAVIT,Coyoacán
04730,Bosques de Tetlameya,Coyoacán
04730,Cantil del Pedregal,Coyoacán
04738,Modulo Social Imán,Coyoacán
04738,Villas del Imán,Coyoacán
04739,El Caracol,Coyoacán
04800,Alianza Popular Revolucionaria,Coyoacán
04800,Los Cedros,Coyoacán
04810,Prados de Coyoacán,Coyoacán
04815,Emiliano Zapata,Coyoacán
04830,Los Cipreses,Coyoacán
04830,Los Ciruelos,Coyoacán
04840,Ex-Ejido de San Pablo Tepetlapa,Coyoacán
04843,Secretaria de Marina Armada de México,Coyoacán
04849,Sector Marina,Coyoacán
04850,Fuentes de Coyoacán,Coyoacán
04870,Los Robles,Coyoacán
04870,Espartaco,Coyoacán
04890,Los Olivos,Coyoacán
04890,Jardines de Coyoacán,Coyoacán
04890,Los Olivos,Coyoacán
04899,El Parque de Coyoacán,Coyoacán
04908,La Virgen,Coyoacán
04909,Culhuacán CTM Sección IX-A,Coyoacán
04909,Culhuacán CTM Sección IX-B,Coyoacán
04909,Culhuacán CTM Sección VIII,Coyoacán
04910,Carmen Serdán,Coyoacán
04918,Cafetales,Coyoacán
04919,Emiliano Zapata Fraccionamiento Popular,Coyoacán
04920,Los Girasoles,Coyoacán
04929,Las Campanas,Coyoacán
04930,Santa Cecilia,Coyoacán
04938,Campestre Coyoacán,Coyoacán
04939,Culhuacán CTM Sección X,Coyoacán
04940,Los Sauces,Coyoacán
04950,El Mirador,Coyoacán
04960,Villa Quietud,Coyoacán
04970,Haciendas de Coyoacán,Coyoacán
04980,Viejo Ejido de Santa Úrsula Coapa,Coyoacán
04980,Ex-Hacienda Coapa,Coyoacán
04980,Ex-Ejido de Santa Úrsula Coapa,Coyoacán
05000,Cuajimalpa,Cuajimalpa de Morelos
05009,Delegación Política Cuajimalpa de Morelos,Cuajimalpa de Morelos
05010,Zentlapatl,Cuajimalpa de Morelos
05020,Loma del Padre,Cuajimalpa de Morelos
05030,San Pedro,Cuajimalpa de Morelos
05030,La Manzanita,Cuajimalpa de Morelos
05039,Ahuatenco,Cuajimalpa de Morelos
05050,San Pablo Chimalpa,Cuajimalpa de Morelos
05060,José María Castorena,Cuajimalpa de Morelos
05100,Lomas de Vista Hermosa,Cuajimalpa de Morelos
05110,Cooperativa Palo Alto,Cuajimalpa de Morelos
05118,Granjas Palo Alto,Cuajimalpa de Morelos
05119,Campestre Palo Alto,Cuajimalpa de Morelos
05120,Bosques de las Lomas,Cuajimalpa de Morelos
05126,Villas Marbella,Cuajimalpa de Morelos
05128,Cumbres Reforma,Cuajimalpa de Morelos
05129,Lomas del Chamizal,Cuajimalpa de Morelos
05130,Rincón de las Lomas,Cuajimalpa de Morelos
05200,San José de los Cedros,Cuajimalpa de Morelos
05214,Club de Golf Bosques,Cuajimalpa de Morelos
05219,Granjas Navidad,Cuajimalpa de Morelos
05220,Tepetongo,Cuajimalpa de Morelos
05230,El Ébano,Cuajimalpa de Morelos
05238,Nueva Rosita,Cuajimalpa de Morelos
05240,El Molino,Cuajimalpa de Morelos
05249,Jardines de la Palma,Cuajimalpa de Morelos
05260,Jesús del Monte,Cuajimalpa de Morelos
05268,Villas de Cuajimalpa,Cuajimalpa de Morelos
05269,Amado Nervo,Cuajimalpa de Morelos
05270,Manzanastitla,Cuajimalpa de Morelos
05280,Adolfo López Mateos,Cuajimalpa de Morelos
05310,El Molinito,Cuajimalpa de Morelos
05320,El Yaqui,Cuajimalpa de Morelos
05330,Ampliación el Yaqui,Cuajimalpa de Morelos
05330,Ampliación Memetla,Cuajimalpa de Morelos
05330,Lomas de Memetla,Cuajimalpa de Morelos
05330,Memetla,Cuajimalpa de Morelos
05348,Santa Fe Cuajimalpa,Cuajimalpa de Morelos
05349,Cruz Manca,Cuajimalpa de Morelos
05360,Locaxco,Cuajimalpa de Morelos
05370,Las Tinajas,Cuajimalpa de Morelos
05379,Lomas de San Pedro,Cuajimalpa de Morelos
05400,El Tianguillo,Cuajimalpa de Morelos
05410,1° de Mayo,Cuajimalpa de Morelos
05410,San Lorenzo Acopilco,Cuajimalpa de Morelos
05500,Contadero,Cuajimalpa de Morelos
05520,La Venta,Cuajimalpa de Morelos
05530,Abdías García Soto,Cuajimalpa de Morelos
05600,San Mateo Tlaltenango,Cuajimalpa de Morelos
05610,Santa Rosa Xochiac,Cuajimalpa de Morelos
05619,Prados de la Montaña,Cuajimalpa de Morelos
05620,Prados de la Montaña,Cuajimalpa de Morelos
05700,Cruz Blanca,Cuajimalpa de Morelos
05710,Las Maromas,Cuajimalpa de Morelos
05730,Xalpa,Cuajimalpa de Morelos
05750,La Pila,Cuajimalpa de Morelos
05760,Las Lajas,Cuajimalpa de Morelos
05780,Agua Bendita,Cuajimalpa de Morelos
06000,Centro (Área 1),Cuauhtémoc
06010,Centro (Área 2),Cuauhtémoc
06018,H Cámara de Senadores,Cuauhtémoc
06020,Centro (Área 3),Cuauhtémoc
06030,Tabacalera,Cuauhtémoc
06038,Banorte,Cuauhtémoc
06039,ISSSTE,Cuauhtémoc
06040,Centro (Área 4),Cuauhtémoc
06050,Centro (Área 5),Cuauhtémoc
06058,Procuraduría General de La República,Cuauhtémoc
06060,Centro (Área 6),Cuauhtémoc
06065,Suprema Corte de Justicia,Cuauhtémoc
06066,Secretaria de Hacienda y Crédito Publico,Cuauhtémoc
06067,Presidencia de La República,Cuauhtémoc
06070,Centro (Área 7),Cuauhtémoc
06079,Confederación de Cámaras Nacionales de Comercio,Cuauhtémoc
06080,Centro (Área 8),Cuauhtémoc
06090,Centro (Área 9),Cuauhtémoc
06100,Hipódromo,Cuauhtémoc
06140,Condesa,Cuauhtémoc
06170,Hipódromo Condesa,Cuauhtémoc
06171,Instituto Mexicano de Comercio Exterior,Cuauhtémoc
06179,Secretaria de Economía,Cuauhtémoc
06200,Morelos,Cuauhtémoc
06200,Plan Tepito,Cuauhtémoc
06220,Peralvillo,Cuauhtémoc
06240,Valle Gómez,Cuauhtémoc
06250,Ex-Hipódromo de Peralvillo,Cuauhtémoc
06270,Maza,Cuauhtémoc
06280,Felipe Pescador,Cuauhtémoc
06300,Guerrero,Cuauhtémoc
06309,Dirección General de Recaudación de la SHCP,Cuauhtémoc
06350,Buenavista,Cuauhtémoc
06357,Delegación Política Cuauhtémoc,Cuauhtémoc
06400,Santa María la Ribera,Cuauhtémoc
06430,Santa María Insurgentes,Cuauhtémoc
06450,Atlampa,Cuauhtémoc
06470,San Rafael,Cuauhtémoc
06479,Hemphill Schools,Cuauhtémoc
06500,Cuauhtémoc,Cuauhtémoc
06589,Cámara Nacional de Aerotransportes,Cuauhtémoc
06598,Comisión Federal de Electricidad,Cuauhtémoc
06599,Teléfonos de México S.A. de CV,Cuauhtémoc
06600,Juárez,Cuauhtémoc
06609,Cámara Nacional de Comercio de la Ciudad de México,Cuauhtémoc
06693,Cámara Nacional de Transportes y Comunicación,Cuauhtémoc
06696,Secretaria de Salud,Cuauhtémoc
06698,IMSS,Cuauhtémoc
06699,Secretaria de Gobernación,Cuauhtémoc
06700,Roma Norte,Cuauhtémoc
06707,Secretaria de Transportes y Vialidad,Cuauhtémoc
06720,Doctores,Cuauhtémoc
06725,Centro Medico Siglo XXI,Cuauhtémoc
06727,Tesorería del Distrito Federal,Cuauhtémoc
06728,Unidad Soldominio,Cuauhtémoc
06729,Hospital General de México,Cuauhtémoc
06740,Centro Urbano Benito Juárez,Cuauhtémoc
06760,Roma Sur,Cuauhtémoc
06780,Buenos Aires,Cuauhtémoc
06796,Cámara Nacional de la Industria Cinematográfica,Cuauhtémoc
06798,Partido de La Revolución Democrática,Cuauhtémoc
06800,Obrera,Cuauhtémoc
06820,Tránsito,Cuauhtémoc
06840,Esperanza,Cuauhtémoc
06850,Asturias,Cuauhtémoc
06860,Vista Alegre,Cuauhtémoc
06870,Paulino Navarro,Cuauhtémoc
06880,Algarin,Cuauhtémoc
06890,Ampliación Asturias,Cuauhtémoc
06900,Nonoalco Tlatelolco,Cuauhtémoc
06920,San Simón Tolnáhuac,Cuauhtémoc
06995,Secretaria de Relaciones Exteriores,Cuauhtémoc
10000,Lomas Quebradas,Magdalena Contreras
10010,San Bartolo Ameyalco,Magdalena Contreras
10010,La Malinche,Magdalena Contreras
10020,Cuauhtémoc,Magdalena Contreras
10100,Unidad Independencia IMSS,Magdalena Contreras
10110,Puente Sierra,Magdalena Contreras
10130,Batan Viejo,Magdalena Contreras
10200,San Jerónimo Lídice,Magdalena Contreras
10210,Los Capulines,Magdalena Contreras
10290,Bosques de La Magdalena,Magdalena Contreras
10300,San Bernabé Ocotepec,Magdalena Contreras
10309,El Oasis de San Bernabé,Magdalena Contreras
10320,El Tanque,Magdalena Contreras
10330,Las Cruces,Magdalena Contreras
10340,Los Padres,Magdalena Contreras
10350,Lomas de San Bernabé,Magdalena Contreras
10360,Huayatla,Magdalena Contreras
10368,Ampliación Potrerillo,Magdalena Contreras
10369,Ampliación Lomas de San Bernabé,Magdalena Contreras
10369,Tierra Unida,Magdalena Contreras
10370,Palmas,Magdalena Contreras
10378,Atacaxco,Magdalena Contreras
10379,Vista Hermosa,Magdalena Contreras
10380,Barros Sierra,Magdalena Contreras
10400,San Jerónimo Aculco,Magdalena Contreras
10500,Barrio San Francisco,Magdalena Contreras
10580,Barranca Seca,Magdalena Contreras
10589,Delegación Política Magdalena Contreras,Magdalena Contreras
10600,El Rosal,Magdalena Contreras
10610,El Toro,Magdalena Contreras
10620,Potrerillo,Magdalena Contreras
10630,El Ocotal,Magdalena Contreras
10640,La Carbonera,Magdalena Contreras
10640,Pueblo Nuevo Alto,Magdalena Contreras
10640,Pueblo Nuevo Bajo,Magdalena Contreras
10650,Rancho Pachita,Magdalena Contreras
10660,El Ermitaño,Magdalena Contreras
10700,Héroes de Padierna,Magdalena Contreras
10710,Santa Teresa,Magdalena Contreras
10720,Pedregal 2,Magdalena Contreras
10730,Santa Teresa,Magdalena Contreras
10740,Santa Teresa,Magdalena Contreras
10800,La Cruz,Magdalena Contreras
10810,San Francisco,Magdalena Contreras
10820,La Guadalupe,Magdalena Contreras
10830,La Concepción,Magdalena Contreras
10840,Plazuela del Pedregal,Magdalena Contreras
10840,Las Calles,Magdalena Contreras
10900,San Nicolás Totolapan,Magdalena Contreras
10910,La Magdalena,Magdalena Contreras
10920,Las Huertas,Magdalena Contreras
10926,Tierra Colorada,Magdalena Contreras
11000,Lomas de Chapultepec I Sección,Miguel Hidalgo
11000,Lomas de Chapultepec III Sección,Miguel Hidalgo
11000,Lomas de Chapultepec VIII Sección,Miguel Hidalgo
11000,Lomas de Chapultepec VI Sección,Miguel Hidalgo
11000,Lomas de Chapultepec II Sección,Miguel Hidalgo
11000,Lomas de Chapultepec IV Sección,Miguel Hidalgo
11000,Lomas de Chapultepec V Sección,Miguel Hidalgo
11000,Lomas de Chapultepec VII Sección,Miguel Hidalgo
11040,Molino del Rey,Miguel Hidalgo
11100,Bosque de Chapultepec III Sección,Miguel Hidalgo
11100,Bosque de Chapultepec II Sección,Miguel Hidalgo
11109,Residencia Oficial de los Pinos,Miguel Hidalgo
11200,Lomas de Sotelo,Miguel Hidalgo
11200,Lomas Hermosa,Miguel Hidalgo
11210,San Lorenzo Tlaltenango,Miguel Hidalgo
11220,Hermanos Serdán,Miguel Hidalgo
11220,Periodista,Miguel Hidalgo
11230,Argentina Poniente,Miguel Hidalgo
11239,México Tacuba,Miguel Hidalgo
11240,Ignacio Manuel Altamirano,Miguel Hidalgo
11250,10 de Abril,Miguel Hidalgo
11259,Lázaro Tata,Miguel Hidalgo
11260,San Joaquín,Miguel Hidalgo
11260,México Nuevo,Miguel Hidalgo
11270,Argentina Antigua,Miguel Hidalgo
11280,Torre Blanca,Miguel Hidalgo
11289,Ampliación Torre Blanca,Miguel Hidalgo
11290,San Diego Ocoyoacac,Miguel Hidalgo
11290,Huíchapan,Miguel Hidalgo
11300,Verónica Anzures,Miguel Hidalgo
11310,Mariano Escobedo,Miguel Hidalgo
11320,Anáhuac I Sección,Miguel Hidalgo
11320,Anáhuac II Sección,Miguel Hidalgo
11330,Un Hogar Para Nosotros,Miguel Hidalgo
11340,Santo Tomas,Miguel Hidalgo
11350,Plutarco Elías Calles,Miguel Hidalgo
11360,Agricultura,Miguel Hidalgo
11370,Tlaxpana,Miguel Hidalgo
11400,Popotla,Miguel Hidalgo
11410,Tacuba,Miguel Hidalgo
11410,Legaria,Miguel Hidalgo
11420,Nextitla,Miguel Hidalgo
11430,Ventura Pérez de Alva,Miguel Hidalgo
11430,Pensil Norte,Miguel Hidalgo
11440,San Juanico,Miguel Hidalgo
11440,Reforma Pensil,Miguel Hidalgo
11450,Modelo Pensil,Miguel Hidalgo
11450,Peralitos,Miguel Hidalgo
11450,Ahuehuetes Anáhuac,Miguel Hidalgo
11460,Lago Norte,Miguel Hidalgo
11460,Dos Lagos,Miguel Hidalgo
11460,Los Manzanos,Miguel Hidalgo
11460,Lago Sur,Miguel Hidalgo
11470,Deportivo Pensil,Miguel Hidalgo
11470,5 de Mayo,Miguel Hidalgo
11479,Unidad Legaria IMSS,Miguel Hidalgo
11480,Francisco I Madero,Miguel Hidalgo
11480,Popo,Miguel Hidalgo
11489,Ampliación Popo,Miguel Hidalgo
11490,Cuauhtémoc Pensil,Miguel Hidalgo
11490,Pensil Sur,Miguel Hidalgo
11500,Irrigación,Miguel Hidalgo
11510,Polanco I Sección,Miguel Hidalgo
11520,Granada,Miguel Hidalgo
11529,Ampliación Granada,Miguel Hidalgo
11530,Polanco II Sección,Miguel Hidalgo
11540,Polanco III Sección,Miguel Hidalgo
11550,Polanco IV Sección,Miguel Hidalgo
11560,Polanco V Sección,Miguel Hidalgo
11580,Bosque de Chapultepec I Sección,Miguel Hidalgo
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
11800,Escandón I Sección,Miguel Hidalgo
11800,Escandón II Sección,Miguel Hidalgo
11810,16 de Septiembre,Miguel Hidalgo
11820,América,Miguel Hidalgo
11830,Daniel Garza,Miguel Hidalgo
11840,Ampliación Daniel Garza,Miguel Hidalgo
11850,San Miguel Chapultepec I Sección,Miguel Hidalgo
11850,San Miguel Chapultepec II Sección,Miguel Hidalgo
11860,Observatorio,Miguel Hidalgo
11869,Delegación Política Miguel Hidalgo,Miguel Hidalgo
11870,Tacubaya,Miguel Hidalgo
11910,Lomas de Bezares,Miguel Hidalgo
11920,Real de las Lomas,Miguel Hidalgo
11930,Lomas de Reforma,Miguel Hidalgo
11950,Lomas Altas,Miguel Hidalgo
14000,Tlalpan,Tlalpan
14000,Tlalpan Centro,Tlalpan
14009,Delegación Política Tlalpan,Tlalpan
14010,Parque del Pedregal,Tlalpan
14017,Cámara Nacional de la Industria de la Construcción,Tlalpan
14020,Villa Olímpica,Tlalpan
14030,Isidro Fabela,Tlalpan
14038,Luis Donaldo Colosio,Tlalpan
14038,Zapote 1,Tlalpan
14039,Ampliación Isidro Fabela,Tlalpan
14039,Cuitlahuac,Tlalpan
14040,Cantera Puente de Piedra,Tlalpan
14040,Pueblo Quieto,Tlalpan
14049,Comuneros de Santa Úrsula,Tlalpan
14050,Toriello Guerra,Tlalpan
14060,Peña Pobre,Tlalpan
14070,San Pedro Apóstol,Tlalpan
14070,Barrio San Fernando,Tlalpan
14070,Rómulo Sánchez Mireles,Tlalpan
14070,Paseos de Mendoza,Tlalpan
14080,Belisario Domínguez Sección XVI,Tlalpan
14080,Barrio del Niño Jesús,Tlalpan
14090,La Joya,Tlalpan
14098,Torres Tlalpan FOVISSSTE,Tlalpan
14100,Pedregal de San Nicolás 3A Sección,Tlalpan
14100,Pedregal de San Nicolás 4A Sección,Tlalpan
14100,Pedregal de San Nicolás 2A Sección,Tlalpan
14100,Pedregal de San Nicolás 5A Sección,Tlalpan
14100,Pedregal de San Nicolás 1A Sección,Tlalpan
14108,Chichicaspatl,Tlalpan
14108,Pedregal Chichicaspatl,Tlalpan
14110,Pedregal del Lago,Tlalpan
14110,Ampliación Fuentes del Pedregal,Tlalpan
14120,Rincón del Pedregal,Tlalpan
14129,Residencial Pedregal Picacho,Tlalpan
14140,Fuentes del Pedregal,Tlalpan
14148,Retornos del Pedregal,Tlalpan
14150,Lomas del Pedregal Framboyanes,Tlalpan
14160,Popular Santa Teresa,Tlalpan
14200,Héroes de Padierna,Tlalpan
14200,Jardines del Ajusco,Tlalpan
14208,Colinas del Ajusco,Tlalpan
14209,Torres de Padierna,Tlalpan
14210,Jardines en la Montaña,Tlalpan
14219,Six Flags (Reino Aventura),Tlalpan
14219,Parque Nacional Bosque del Pedregal,Tlalpan
14220,Cuchilla de Padierna,Tlalpan
14220,Lomas del Pedregal,Tlalpan
14230,Cultura Maya,Tlalpan
14239,Los Encinos,Tlalpan
14240,Lomas de Padierna,Tlalpan
14240,Lomas Hidalgo,Tlalpan
14248,Cruz del Farol,Tlalpan
14250,Miguel Hidalgo 3A Sección,Tlalpan
14250,Miguel Hidalgo 2A Sección,Tlalpan
14250,Miguel Hidalgo 4A Sección,Tlalpan
14250,Miguel Hidalgo,Tlalpan
14260,Barrio El Capulín,Tlalpan
14260,Miguel Hidalgo 1A Sección,Tlalpan
14266,Zacayucan Peña Pobre,Tlalpan
14267,Barrio de Caramagüey,Tlalpan
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
14310,Belisario Domínguez,Tlalpan
14310,Floresta Coyoacán,Tlalpan
14320,Vergel Coapa,Tlalpan
14325,Rinconada Coapa 2A Sección,Tlalpan
14326,Tenorios INFONAVIT,Tlalpan
14326,Tenorios,Tlalpan
14327,Tenorios 2,Tlalpan
14328,Lotería Nacional,Tlalpan
14328,Villa Valbadena,Tlalpan
14329,Tenorios FOVISSSTE,Tlalpan
14330,Residencial Hacienda Coapa,Tlalpan
14330,Granjas Coapa,Tlalpan
14330,Rinconada Coapa 1A Sección,Tlalpan
14334,Sauzales Cebadales,Tlalpan
14335,Periférico,Tlalpan
14335,Villa del Puente,Tlalpan
14336,Villa Cuemanco INFONAVIT,Tlalpan
14337,Urbano Coapa,Tlalpan
14338,Fuerza Armada de México,Tlalpan
14338,FOVISSSTE Periférico,Tlalpan
14339,Dr. Ignacio Chávez INFONAVIT,Tlalpan
14340,Vergel de Coyoacán,Tlalpan
14340,Vergel del Sur,Tlalpan
14350,Prado Coapa 1A Sección,Tlalpan
14356,Jardines Villa Coapa,Tlalpan
14357,Prado Coapa 2A Sección,Tlalpan
14357,Prado Coapa 3A Sección,Tlalpan
14358,Residencial Villa Prado Coapa,Tlalpan
14360,Villa Cuemanco,Tlalpan
14360,Magisterial Coapa,Tlalpan
14360,Magisterial,Tlalpan
14370,Villa Lázaro Cárdenas,Tlalpan
14370,Residencial Chimali,Tlalpan
14370,Hacienda de San Juan de Tlalpan 2a Sección,Tlalpan
14370,San Lorenzo Huipulco,Tlalpan
14376,Arboledas del Sur,Tlalpan
14377,Hacienda San Juan,Tlalpan
14378,Rincón de San Juan,Tlalpan
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
14400,San Andrés Totoltepec,Tlalpan
14406,Divisadero,Tlalpan
14408,Nuevo Renacimiento de Axalco,Tlalpan
14409,Tecorral,Tlalpan
14410,Fuentes Brotantes,Tlalpan
14420,Cumbres de Tepetongo,Tlalpan
14420,Santa Úrsula Xitla,Tlalpan
14420,Mesa de los Hornos,Tlalpan
14426,Tlaxcaltenco la Mesa,Tlalpan
14426,Texcaltenco,Tlalpan
14427,San Juan Tepeximilpa,Tlalpan
14427,Tepeximilpa la Paz,Tlalpan
14428,Cantera,Tlalpan
14429,Santísima Trinidad,Tlalpan
14430,Tlalcoligia,Tlalpan
14430,Barrio El Truenito,Tlalpan
14438,Pedregal de Santa Úrsula Xitla,Tlalpan
14439,Pedregal de las Águilas,Tlalpan
14440,Los Volcanes,Tlalpan
14449,El Mirador 2A Sección,Tlalpan
14449,El Mirador 1A Sección,Tlalpan
14449,El Mirador 3A Sección,Tlalpan
14450,Jardines de Xitle,Tlalpan
14456,Atocpa,Tlalpan
14460,Tlalpuente,Tlalpan
14470,Tepetitla,Tlalpan
14470,Plan de Ayala,Tlalpan
14476,La Palma,Tlalpan
14479,Viveros Coatectlán,Tlalpan
14480,La Magdalena Petlacalco,Tlalpan
14490,San Miguel Xicalco,Tlalpan
14500,San Miguel Topilejo,Tlalpan
14520,La Quinta,Tlalpan
14529,Estación Ajusco,Tlalpan
14550,Estrella Mora,Tlalpan
14600,Valle Escondido,Tlalpan
14608,Colinas del Bosque,Tlalpan
14609,Las Tórtolas,Tlalpan
14610,Arenal Tepepan,Tlalpan
14620,Club de Golf México,Tlalpan
14629,San Buenaventura,Tlalpan
14630,Chimalcoyoc,Tlalpan
14630,Villa Tlalpan,Tlalpan
14639,San Pedro Mártir FOVISSSTE,Tlalpan
14640,Ejidos de San Pedro Mártir,Tlalpan
14643,Fuentes de Tepepan,Tlalpan
14646,Valle de Tepepan,Tlalpan
14647,Juventud Unida,Tlalpan
14647,Rinconada El Mirador,Tlalpan
14647,Movimiento Organizado de Tlalpan,Tlalpan
14650,San Pedro Mártir,Tlalpan
14653,Heróico Colegio Militar,Tlalpan
14654,La Magueyera,Tlalpan
14654,Dolores Tlali,Tlalpan
14655,Valle Verde o Lomas Verdes,Tlalpan
14657,Tlalmille,Tlalpan
14658,Mirador del Valle,Tlalpan
14659,María Esther Zuno de Echeverría,Tlalpan
14700,San Miguel Ajusco,Tlalpan
14710,Santo Tomas Ajusco,Tlalpan
14720,Belvedere Ajusco,Tlalpan
14730,Lomas de Cuilotepec,Tlalpan
14734,Zacatón,Tlalpan
14735,San Nicolás 2,Tlalpan
14735,Lomas de Tepemecatl,Tlalpan
14737,Vistas del Pedregal,Tlalpan
14738,Bosques del Pedregal,Tlalpan
14739,2 de Octubre,Tlalpan
14740,Lomas de Padierna Sur,Tlalpan
14748,Mirador I,Tlalpan
14748,Mirador II,Tlalpan
14749,Chimilli,Tlalpan
14750,Rancho Viejo,Tlalpan
14760,Héroes de 1910,Tlalpan
14780,El Charco,Tlalpan
14790,San Jorge,Tlalpan
14900,Parres El Guarda,Tlalpan
52760,Huixquilucan de Degollado Centro,Huixquilucan
52760,San Juan Bautista,Huixquilucan
52760,San Ramón,Huixquilucan
52760,Santa María,Huixquilucan
52760,El Cerrito,Huixquilucan
52760,San Melchor,Huixquilucan
52760,San Miguel,Huixquilucan
52760,San Martín,Huixquilucan
52760,El Retiro,Huixquilucan
52760,El Plan,Huixquilucan
52763,Hacienda de las Palmas,Huixquilucan
52763,Villa Florence,Huixquilucan
52764,Jesús del Monte,Huixquilucan
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
52769,La Cañada,Huixquilucan
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
52777,Federal Burocrática,Huixquilucan
52777,Paradice,Huixquilucan
52777,El Bosque,Huixquilucan
52778,Ampliación Palo Solo,Huixquilucan
52778,Palo Solo,Huixquilucan
52779,Montón Cuarteles,Huixquilucan
52779,Green House,Huixquilucan
52779,Pirules,Huixquilucan
52779,Lomas Country Club,Huixquilucan
52780,Lomas de Tecamachalco Sección Cumbres,Huixquilucan
52780,Lomas de Tecamachalco Sección Bosques I y II,Huixquilucan
52783,Rinconada de la Herradura,Huixquilucan
52783,Bosques de la Herradura,Huixquilucan
52784,La Herradura Sección II,Huixquilucan
52784,La Herradura Sección I,Huixquilucan
52784,La Herradura Sección III,Huixquilucan
52784,La Herradura,Huixquilucan
52785,Balcones de la Herradura,Huixquilucan
52785,Galardón,Huixquilucan
52785,Lomas de La Herradura,Huixquilucan
52785,Jardines de la Herradura,Huixquilucan
52786,Lomas Anáhuac,Huixquilucan
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
52790,San Francisco Dos Ríos,Huixquilucan
52790,La Pera,Huixquilucan
52793,San Bartolomé Coatepec,Huixquilucan
52793,El Mirador,Huixquilucan
52793,El Obraje,Huixquilucan
52793,Trejo,Huixquilucan
52794,El Guarda,Huixquilucan
52794,La Glorieta,Huixquilucan
52794,El Hielo,Huixquilucan
52795,Santa Cruz Ayotuxco,Huixquilucan
52795,Canales,Huixquilucan
52796,San Cristóbal Texcalucan,Huixquilucan
52797,San José Huiloteapan,Huixquilucan
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
53040,Las Américas,Naucalpan
53050,El Mirador,Naucalpan
53060,Loma Taurina,Naucalpan
53070,Unidad Morelos,Naucalpan
53070,Adolfo López Mateos,Naucalpan
53100,Club Cuicacalli,Naucalpan
53100,Ciudad Satélite,Naucalpan
53110,Santa Cruz del Monte,Naucalpan
53110,Fontana Residencial,Naucalpan
53110,Bugambilias,Naucalpan
53115,Lomas de Las Fuentes,Naucalpan
53116,La Alteza,Naucalpan
53117,Cristóbal Colón,Naucalpan
53117,El Sauzalito,Naucalpan
53119,Colonial Satélite,Naucalpan
53120,Lomas Verdes 1a Sección,Naucalpan
53120,Lomas Verdes (Conjunto Lomas Verdes),Naucalpan
53124,Petroquímica Lomas Verdes,Naucalpan
53124,La Cuspide,Naucalpan
53124,Bosque Alto,Naucalpan
53125,Lomas Verdes 4a Sección,Naucalpan
53125,Lomas Verdes 3a Sección,Naucalpan
53126,Lomas Verdes 5a Sección (La Concordia),Naucalpan
53126,Lomas Verdes 6a Sección,Naucalpan
53127,La Alteña I,Naucalpan
53127,La Alteña III,Naucalpan
53127,Lomas de Santa Cruz,Naucalpan
53127,La Alteña II,Naucalpan
53128,Residencial Santa Cruz,Naucalpan
53128,Conjunto la Ronda,Naucalpan
53129,Unidad Comercial Heliplaza,Naucalpan
53129,Jardines de Satélite,Naucalpan
53129,Telefonistas,Naucalpan
53130,Jardines de la Florida,Naucalpan
53138,Hacienda de Cristo (Exhacienda de Cristo),Naucalpan
53140,Misiones,Naucalpan
53140,Ampliación Misiones,Naucalpan
53140,Boulevares,Naucalpan
53140,Jardines de Boulevares,Naucalpan
53150,Santa Cruz Acatlán,Naucalpan
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
53217,El Tejocote 2da. Sección,Naucalpan
53217,La Presa (Tejocote),Naucalpan
53217,El Tejocote,Naucalpan
53218,Colinas de San Mateo,Naucalpan
53218,Rancho Colorado,Naucalpan
53219,Rincón Verde,Naucalpan
53220,La Joya II,Naucalpan
53220,La Joyita,Naucalpan
53220,Rincón de Las Fuentes,Naucalpan
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
53229,Minas el Capulín,Naucalpan
53229,El Cobradero,Naucalpan
53229,Juan Gómez,Naucalpan
53229,La Cuesta,Naucalpan
53229,Agua Buena,Naucalpan
53229,San Mateo Nopala,Naucalpan
53229,Las Ánimas,Naucalpan
53229,El Cristo,Naucalpan
53229,Córdoba,Naucalpan
53229,La Rosa,Naucalpan
53229,Jardines Ojo de Agua,Naucalpan
53229,Las Arenillas,Naucalpan
53229,Pinos II,Naucalpan
53229,Las Peñitas,Naucalpan
53229,Rancho Viejo,Naucalpan
53230,Los Álamos,Naucalpan
53237,Los Fresnos,Naucalpan
53239,Ampliación Los Fresnos,Naucalpan
53240,Alcanfores,Naucalpan
53240,Jardines de San Mateo,Naucalpan
53240,Valle de San Mateo,Naucalpan
53240,Prado San Mateo,Naucalpan
53240,Anexo Jardines de San Mateo,Naucalpan
53240,Jardines de San Mateo Sección Colinas,Naucalpan
53247,Lomas de Occipaco,Naucalpan
53248,Laderas de San Mateo,Naucalpan
53250,La Palma,Naucalpan
53250,Santiago Occipaco,Naucalpan
53260,México 68,Naucalpan
53270,Las Papas,Naucalpan
53270,San Juan Totoltepec,Naucalpan
53278,Izcalli del Bosque,Naucalpan
53279,Tercer Mundo,Naucalpan
53279,Bosques de Moctezuma,Naucalpan
53280,Ciudad Brisa,Naucalpan
53283,Pedregal de Echegaray,Naucalpan
53283,Tiahui,Naucalpan
53290,Vista del Valle Sección Electricistas,Naucalpan
53290,Balcones de San Mateo,Naucalpan
53296,Xalpa de La Huerta,Naucalpan
53296,Vista del Valle Sección Bosques,Naucalpan
53297,Paseos del Bosque,Naucalpan
53297,Ex-Ejido Santiago Occipaco,Naucalpan
53298,Cumbres de Himalaya,Naucalpan
53300,Colón Echegaray,Naucalpan
53300,Hacienda de Echegaray,Naucalpan
53309,Rincón Echegaray,Naucalpan
53310,Bosque de Echegaray,Naucalpan
53310,Bosque de Echegaray Sección Electricistas,Naucalpan
53320,Diez de Abril,Naucalpan
53329,Rivera de Echegaray,Naucalpan
53330,Cervecera Modelo,Naucalpan
53338,Santa María Nativitas,Naucalpan
53338,Conjunto la Huerta,Naucalpan
53339,Rincón del Bosque de Echegaray,Naucalpan
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
53410,Ampliación Los Remedios (El Beato),Naucalpan
53410,Padre Figueroa,Naucalpan
53410,Unión Popular,Naucalpan
53420,Loma Colorada 1ra. Sección,Naucalpan
53425,El Corralito,Naucalpan
53425,La Universal,Naucalpan
53426,Los Cuartos II,Naucalpan
53426,San Lorenzo Totolinga,Naucalpan
53426,Casa Blanca,Naucalpan
53426,Cuartos III,Naucalpan
53426,Cuartos II 1a Sección,Naucalpan
53426,Emiliano Zapata,Naucalpan
53426,La Cañada - San Lorenzo Totolinga,Naucalpan
53426,San Lorenzo Totolinga 2a Sección,Naucalpan
53426,La Raquelito,Naucalpan
53426,San Lorenzo Totolinga 1a Sección,Naucalpan
53427,Loma Colorada 2da. Sección,Naucalpan
53427,Las Huertas 1a Secc,Naucalpan
53427,Luisa Isabel Campos de Jiménez Cantú (Cuartos I),Naucalpan
53427,Las Caballerizas,Naucalpan
53427,Las Huertas 2a Sección,Naucalpan
53427,Las Huertas 3a Sección,Naucalpan
53427,El Porvenir,Naucalpan
53427,Lomas de los Remedios,Naucalpan
53428,México 86 (La Chacona),Naucalpan
53430,Los Arcos,Naucalpan
53430,Reubicación el Torito,Naucalpan
53440,Sierra Nevada,Naucalpan
53440,Unión Popular,Naucalpan
53440,Predio el Zapote,Naucalpan
53450,Ciudad de los Niños,Naucalpan
53458,Bosque de los Remedios,Naucalpan
53459,Ampliación Ciudad de los Niños,Naucalpan
53460,Los Arcos,Naucalpan
53460,Barrio el Torito,Naucalpan
53460,La Rivera,Naucalpan
53470,Loma de Canteras (Lomas de Cantera),Naucalpan
53489,Parque Industrial Naucalpan,Naucalpan
53490,Santa Lilia Chamapa,Naucalpan
53490,Lomas de San Agustín,Naucalpan
53490,Las Tinajas (Predio Las Tinajas),Naucalpan
53490,La Monera,Naucalpan
53500,San Andrés Atoto,Naucalpan
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
53550,Ampliación San Esteban,Naucalpan
53560,Lázaro Cárdenas,Naucalpan
53569,San Francisco Cuautlalpan,Naucalpan
53570,La Cañada,Naucalpan
53570,Lomas de la Cañada,Naucalpan
53570,San Antonio Zomeyucan,Naucalpan
53570,San Antonio Zomeyucan (Zona Urbana),Naucalpan
53580,Ampliación Loma Linda,Naucalpan
53580,Reforma San Luís,Naucalpan
53580,La Esperanza,Naucalpan
53580,Loma Linda,Naucalpan
53580,San Luís Tlatilco,Naucalpan
53580,Piedras Negras,Naucalpan
53598,Estado de México (El Tambor),Naucalpan
53598,Hidalgo,Naucalpan
53640,Nueva San Rafael,Naucalpan
53640,Bosques de Chamapa,Naucalpan
53650,Cielito,Naucalpan
53650,Upeny de Gora,Naucalpan
53650,Dudy,Naucalpan
53650,La Cañada de Boche,Naucalpan
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
53659,San José Tejamanil,Naucalpan
53660,San Rafael Chamapa,Naucalpan
53660,La Presa Chamapa,Naucalpan
53664,Cuartos Constitución (San Rafael Chamapa I),Naucalpan
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
53690,Olímpica (San Rafael Chamapa V),Naucalpan
53690,Lomas de Chamapa,Naucalpan
53690,Valle Dorado (San Rafael Chamapa VI),Naucalpan
53690,Ampliación Olímpica (San Rafael Chamapa VII),Naucalpan
53694,Minas El Coyote,Naucalpan
53695,Minas San Martín,Naucalpan
53695,La Palma,Naucalpan
53696,Mina Palacios (Minas Palacio),Naucalpan
53697,Minas El Tecolote,Naucalpan
53697,3 de Mayo,Naucalpan
53697,Jardines de San José,Naucalpan
53697,El Capulín,Naucalpan
53698,San José Poza Honda,Naucalpan
53698,Olímpica Radio 2a Sección (El Caracol),Naucalpan
53698,Olímpica Radio 1a Sección (San Rafael Chamapa),Naucalpan
53700,Altamira,Naucalpan
53700,Torres Zomeyucan (San Antonio Zomeyucan),Naucalpan
53700,Ampliación Altamira,Naucalpan
53708,Balcones de Chamapa,Naucalpan
53708,Tierra y Libertad,Naucalpan
53710,Plan de Ayala,Naucalpan
53713,Vicente Guerrero,Naucalpan
53714,La Mancha III,Naucalpan
53716,La Punta,Naucalpan
53716,Alfredo del Mazo Vélez,Naucalpan
53717,La Mancha II,Naucalpan
53717,La Mancha I,Naucalpan
53718,Alfredo V. Bonfil,Naucalpan
53719,Lomas del Cadete,Naucalpan
53730,Capulín Soledad,Naucalpan
53730,San José de los Leones 2a Sección,Naucalpan
53730,San José de los Leones 1a Sección,Naucalpan
53730,Unidad y Progreso,Naucalpan
53760,San José de los Leones 3a Sección,Naucalpan
53770,El Chamizal,Naucalpan
53780,Mártires de Río Blanco,Naucalpan
53787,Ampliación Mártires de Río Blanco,Naucalpan
53788,La Tolva,Naucalpan
53790,Benito Juárez,Naucalpan
53798,La Radio Benito Juárez,Naucalpan
53799,Ampliación Benito Juárez,Naucalpan
53800,Lomas del Río,Naucalpan
53800,Buenavista,Naucalpan
53809,Miramar,Naucalpan
53810,San José Río Hondo (Río Hondo),Naucalpan
53819,Progreso,Naucalpan
53820,Ricardo Flores Magón,Naucalpan
53830,La Guadalupana,Naucalpan
53830,Independencia,Naucalpan
53839,Rincones del Bosque,Naucalpan
53840,Lomas del Huizachal,Naucalpan
53900,Lomas Hipódromo,Naucalpan
53909,Explanada de las Fuentes,Naucalpan
53910,Lomas Manuel Ávila Camacho,Naucalpan
53930,Country Club,Naucalpan
53940,Río Escondido,Naucalpan
53950,Lomas de Tecamachalco,Naucalpan
53960,Reforma Social (Lomas de San Isidro),Naucalpan
53970,San Miguel Tecamachalco,Naucalpan"