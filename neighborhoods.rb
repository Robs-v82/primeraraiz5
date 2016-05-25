
neighborhoods = "Condesa,Cuauhtémoc,06140,Condesa
Cuauhtémoc,Cuauhtémoc,06500,Cuauhtémoc
Hipódromo,Cuauhtémoc,06100,Condesa
Hipódromo Condesa,Cuauhtémoc,06170,Condesa
Juárez,Cuauhtémoc,06600,Juárez
Roma Norte,Cuauhtémoc,06700,Roma
Roma Sur,Cuauhtémoc,06760,Roma
San Rafael,Cuauhtémoc,06470,San Rafael
Ampliación Granada,Miguel Hidalgo,11529,Polanco
Anzures,Miguel Hidalgo,11590,Anzurez
Escandón I Sección,Miguel Hidalgo,11800,Escandón
Escandón II Sección,Miguel Hidalgo,11800,Escandón
Granada,Miguel Hidalgo,11520,Polanco
Irrigación,Miguel Hidalgo,11500,Polanco
Polanco I Sección,Miguel Hidalgo,11510,Polanco
Polanco II Sección,Miguel Hidalgo,11530,Polanco
Polanco III Sección,Miguel Hidalgo,11540,Polanco
Polanco IV Sección,Miguel Hidalgo,11550,Polanco
Polanco V Sección,Miguel Hidalgo,11560,Polanco
San Miguel Chapultepec I Sección,Miguel Hidalgo,11850,San Miguel Chapultepec
San Miguel Chapultepec II Sección,Miguel Hidalgo,11850,San Miguel Chapultepec
Acacias,Benito Juárez,03240,Del Valle
Actipan,Benito Juárez,03230,Del Valle
Ampliación Napoles,Benito Juárez,03840,Nápoles
Ciudad de los Deportes,Benito Juárez,03710,Nápoles
Crédito Constructor,Benito Juárez,03940,Florida
Del Valle Centro,Benito Juárez,03100,Del Valle
Del Valle Norte,Benito Juárez,03103,Del Valle
Del Valle Sur,Benito Juárez,03104,Del Valle
Extremadura Insurgentes,Benito Juárez,03740,Mixcoac
Insurgentes Mixcoac,Benito Juárez,03920,Mixcoac
Insurgentes San Borja,Benito Juárez,03100,Del Valle
Mixcoac,Benito Juárez,03910,Mixcoac
Nápoles,Benito Juárez,03810,Nápoles
Narvarte Oriente,Benito Juárez,03023,Narvarte
Narvarte Poniente,Benito Juárez,03020,Narvarte
Nochebuena,Benito Juárez,03720,Nápoles
Piedad Narvarte,Benito Juárez,03000,Narvarte
San José Insurgentes,Benito Juárez,03900,San José Insurgentes
San Juan,Benito Juárez,03730,Mixcoac
San Pedro de los Pinos,Benito Juárez,03800,San Pedro de los Pinos
Tlacoquemecatl,Benito Juárez,03200,Del Valle"

neighborhoodsArr = []
neighborhoods.each_line{|l| line = l.split(","); neighborhoodsArr.push(line)}
neighborhoodsArr.each{|x|x.each{|y|y.strip!}}

neighborhoodsArr.each{|x| Neighborhood.create(name:x[0], district:x[1], zip:x[2], zone:x[3])}