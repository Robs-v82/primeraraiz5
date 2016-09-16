myArr = myString.split("Usuario")
newArr = []
myArr.each{|contact| contacto = contact.split("\n"); newArr.push(contacto)}
newArr.shift
emailArr = []
estado = "Guanajuato"
newArr.each{|contact| email = contact[2].slice(7,100); emailArr.push(email)}
(0..newArr.length).each {|x| Contact.create(:name => newArr[x][0], :email => emailArr[x], :category => "RE_broker", :state => estado)}

# APCI

myArr = apci.split("Asociado")
newArr = []
myArr.each{|contact| contacto = contact.split("\n"); newArr.push(contacto)}
newArr.shift
emailArr = []
estado = "Ciudad de México"


apci = "Asociado
Cecilia Aguilar Marco
caguilar@mhabitat.com
Teléfono(s): 55 5807 0449, (55)5651 5062
 Asociado
Yazmín Aiza Kuri
aizainmob@prodigy.net.mx
Teléfono(s): (55)56621564, (55)56621713
 Asociado
Guadalupe Alaniz de Schoijet
alanizasociados@me.com
Teléfono(s): (55)56777428, (55) 54026420
Celular: 56840968
 Asociado
Silvia Alcerreca Torres
salcerreca10@gmail.com
Teléfono(s): 56443422, ()5534348741
Celular: 5534348741
 Asociado
Carlota Alonso Aguerrebere
alonsopr@prodigy.net.mx
Teléfono(s): (55)56451212, (55)56313266
Celular: (55)56313391
 Asociado
Patricia Arachandieta De Orella
porella1@prodigy.net.mx
Teléfono(s): 56350599, ()56356762
Celular: 5555020037
 Asociado
Gloria Arroyuelo de Pöhls
gap.inmobiliaria@gmail.com
Teléfono(s): (55)56111202
Celular: (55)54193628
 Asociado
Clara Atilano de la Torre
contactojc_consultores@telmex.com
Teléfono(s): (55)56059490, (55)22067077
Celular: (55)22067737
 Asociado
Hilda Baranda Serrano
coordinacion@solarisinmobiliaria.com
Teléfono(s): (55)15566016, (55)15566000
 Asociado
Rosa Maria Bermudez Piña
bermudez_pispis@yahoo.com.mx
Teléfono(s): 5521091688, ()56819279
Celular: 5521091688
 Asociado
GARDEN BIENES INMOBILIARIOS S.A. DE C.V.
gardenchat@hotmail.com
Teléfono(s): (55)59486311, (55)56837112
 Asociado
Nova Haus Bienes Raices
novahausbr@gmail.com
Teléfono(s): (55)38197810, (55)36243965
Celular: (04455)29662257
Asociado
Juan Manuel Blanco Campos
cumbrebienesraices@gmail.com
Teléfono(s): 55252216, ()5552520584
Celular: 5554030967
 Asociado
Ana Lucia Bravo Castillo
abravo@gyrainmobiliaria.com
Teléfono(s): 5558074842, ()56519312
Celular: 17934423
 Asociado
Ma. del Carmen Breña Cantú de Villalón
info@mejorescasas.com
Teléfono(s): 56595831, ()56592643
 Asociado
Eduardo Carrillo Arrivillaga
contacto@gibosque.com
Teléfono(s): (55)56831100, (55)56831002
 Asociado
Martha Carrión de Parga
marparga@prodigy.net.mx
Teléfono(s): (55)52114631, (55)54368103
 Asociado
Norma Chevalier Gomez Peralta
castelchevalier@prodigy.net.mx
Teléfono(s): 55139897, ()55738701
Celular: 5539018854
 Asociado
Margarita Cintrón Díaz del Castillo
mcintron@prodigy.net.mx
Teléfono(s): 56451779
Celular: 5522706807
 Asociado
Juan Contreras Labarga
jcontreras@grupojacz.com
Teléfono(s): (55)24744225
 Asociado
Lourdes Contreras .
directora.trebol@hotmail.com
Teléfono(s): 43366227, ()53350663
 Asociado
Patricia Contreras de Fernandez
patricia_fdez@hotmail.com
Teléfono(s): 54258264
Celular: 5536948248
 Asociado
Guillermina Cordova Bulle
bulleinmobiliaria@gmail.com
Teléfono(s): 56682919, ()55950845
Celular: 5548095280
 Asociado
Rosa Norma Cravioto Reyna
rosin@prodigy.net.mx
Teléfono(s): 56610105
Celular: 5554537168
Asociado
Eduardo Cuen Payró
davendano@modusvivendi.org.mx
Teléfono(s): 50332154, ()50332153
 Asociado
María de Mater De La Mora García Sainz
mater_bienesraices@yahoo.com
Teléfono(s): (55)56521177, (55)56521174
 Asociado
Cecilia De Miguel Kuvener
kuverbienesraices7@hotmail.com
Teléfono(s): 55681378
Celular: 5541303621
 Asociado
Ma. Del Carmen Del Campo Guerrero
delcampoguerrero@prodigy.net.mx
Teléfono(s): 70251828
 Asociado
Magdalena Del Castillo Velasco
inmobiliariadelcastillo@gmail.com
Teléfono(s): (55)5616806O, (55)56168061
Celular: (04455)0445554136914
 Asociado
María Engracia Del Villar Ponce
ventasdelvillar@yahoo.com.mx
Teléfono(s): 70366519, ()5527539528
 Asociado
Carole Descloux Rossel
desclouxr@hotmail.com
Teléfono(s): (55)55686502
Celular: (55)55071344
 Asociado
Martha Díaz de Enriquez
aybr_2000@yahoo.com
Teléfono(s): (55)56016150, (55)56016157
Celular: 0445539012877 y 0445512950661
 Asociado
Francisco Jesús Díaz Ruiz
fdruiz87@gmail.com
Teléfono(s): (55)55954895, ()5533329451
 Asociado
Francisco Diaz Corona
frankdief@hotmail.com
Teléfono(s): 55440040, ()55444405
Celular: 55 3465 7725
 Asociado
Alicia Díaz Esquivel
alicia_diaz_e@hotmail.com
Teléfono(s): 6301-4061
Celular: 55-8532-4349
 Asociado
Edgar Diaz Ortega
ediaz@ideasinmobiliarias.com
Teléfono(s): 55596060
Celular: 19923578
Asociado
Oralia Dingler Corral
odingler@prodigy.net.mx
Teléfono(s): (55)55936598, (55)91632608
Celular: (55)54535952
 Asociado
Ma. del Carmen Farah Capur
proyecsainmobiliariasc@gmail.com
Teléfono(s): (55)56640222, (55)56640224
Celular: (55)56516953
 Asociado
Ana Laura Ferrer de Pulido
pulidoac@prodigy.net.mx
Teléfono(s): (55)55933753, (55)56807959
 Asociado
Mónica Flores Ramírez
monicafloresbr@gmail.com
Teléfono(s): 5593.1648, ()63669580
Celular: 55.1948.8663
 Asociado
Felix Flores Castañeda
felixcim@yahoo.com
Celular: 5520482930
 Asociado
Guadalupe Flores de Valencia
gpeval001@yahoo.com.mx
Teléfono(s): (55)51350689, (55)55680441
Celular: (55)54032194
 Asociado
Carmen Garcia Cossio
drausio.rubio@inmobiliarianavel.com
Teléfono(s): (55)55688167, (55)55687050
 Asociado
Ma. del Carmen García Lara
marialuisa@megasoluciones.com
Teléfono(s): (55)24556030
Celular: 0445536557382
 Asociado
Martha Alicia Garcia Zamarripa
marthagarciazamarripa@hotmail.com
Teléfono(s): 54465271, ()56067021
Celular: 5559391200
 Asociado
Lilia Nelly Garcia de Funes
lilianelly@fugar.com.mx
Teléfono(s): 36251644, (55)52645330
Celular: (04455)52543927
 Asociado
Paz García de Rodríguez
pazgaca@yahoo.com.mx
Teléfono(s): (55)56730372, (55)56032461
 Asociado
Eduardo Giordano Merino
egiordano@asefi.com
Teléfono(s): 56632380, ()56632395
Asociado
Armando Gómez Barreiro
piso59@gmail.com
Teléfono(s): (55)55435959, (55)55685382
Celular: 5529418259
 Asociado
Rafael González Fragoso
publicidad@rgasesores.com.mx
Teléfono(s): (55)5200.5270
Celular: 55.3239.1214
 Asociado
Irca González de Hammeken
ircahammeken@yahoo.com
Teléfono(s): (55)55955444, (55)2559.3219
 Asociado
Gloria Gonzalez Angeles
gloriagonzalezangeles@yahoo.com.mx
Teléfono(s): 55591827
Celular: 5539878560
 Asociado
Oscar Grajales Regil
elsurbr@gmail.com
Teléfono(s): (55)56892150, (55)25888681
Celular: (55)5555057272
 Asociado
Eloisa Grobet Vallarta Especialidad en Administración de Inmuebles (RENTAS)
grobet_bienesraices@hotmail.com
Teléfono(s): 54850454, ()54852213
Celular: 5554000553
 Asociado
Ma. Teresa Guadarrama Quintanilla
tere_guadarrama@hotmail.com
Teléfono(s): 12850010
Celular: 5554089906
 Asociado
Maritza Guevara Sánchez
maritza.guevara@guemer.com
Teléfono(s): (55)55955389, (55)91991425
 Asociado
Andres Guillot Villegas
a.guillot@live.com
Teléfono(s): 55688079
Celular: 5539935207
 Asociado
Ricardo Guizar Reyes
ricardoguizar@quality.com.mx
Teléfono(s): (55)56643535, (55)19756360
Asociado
Raúl Jesús Guízar Reyes
penamariadelcarmen@hotmail.com
Teléfono(s): (55)56113081, (55)55639655
 Asociado
Guadalupe Gutierrez Silva
gutierrezsilvabr@gutierrezsilva.com
Teléfono(s): (55)55502479, (55)55503079
Asociado
Carla Hammeken
hammeken2001@gmail.com
Teléfono(s): (55) 55033531, (777) 3129351
Celular: (55)55033531
 Asociado
Marisol Hernandez Gutierrez
mhdezgu@gmail.com
Teléfono(s): 55849727
Celular: 49879396
 Asociado
Myriam Herrera Viloria
ventas.df@bosinmobiliaria.com.mx
Teléfono(s): 018002532530
 Asociado
Mario Huerta de la Sota y Fernández
alarife@alarife.com.mx
Teléfono(s): (55)5616.0660, (044)55.5107.9736
Celular: (044)55.5107.9736
 Asociado
Patricia Huidobro Preciado
ppreciadoh@gmail.com
Teléfono(s): (55)56836450, (55)40307095
 Asociado
Rocio Jaime Paredes
rjaime97@yahoo.com.mx
Teléfono(s): 56521279
Celular: 5527704220
 Asociado
Zita Jimenez Deschamps
zita_hallrealsta@yahoo.com.mx
Teléfono(s): 5520695399
 Asociado
Norma Katznelson Gómez Luna
katznelson2@yahoo.com
 Asociado
Alejandra Leon Suarez
aleleonsuarez@hotmail.com
Teléfono(s): 55285918, ()55284262
Celular: 5519264572
 Asociado
Blanca Lidia López Aguirre
residenza_br@hotmail.com
Teléfono(s): (55)55739836, (55)2588.6105
Celular: (55)5514512098
 Asociado
Ana María López Venero
lopez.anam@hotmail.com
Teléfono(s): 55952795, ()55.5455.1696
 Asociado
Maria Elena Lugo Orvañanos
mlugo@makadimexico.com
Teléfono(s): (55)56805391
Celular: (55)43772766
Asociado
Gema Madrigal Camarena
gemamadrigal1@gmail.com
Teléfono(s): 56551609
Celular: 5526778061
 Asociado
Lourdes Malvaez Muñoz
delolmotm@hotmail.com
Teléfono(s): (55)55503673, (55)5516921857
 Asociado
Ma. de los Ángeles Marín Benito
mariamarinb@yahoo.com.mx
Teléfono(s): (55)56731009, (55)54573441
 Asociado
Ana María Mendívil de Velasco
azumar@prodigy.net.mx
Teléfono(s): (55)56633338, (55)25585104
 Asociado
Fernando Merino del Castillo
fmdelcastillo@hotmail.com
Teléfono(s): (55)56014991
Celular: (55)53768091
 Asociado
Carmen Mingo Frías
mingobr@gmail.com
Teléfono(s): (55)55953210, (55)55953825
 Asociado
Beatriz Minvielle Mendez
bettymin@hotmail.com
Teléfono(s): 56838344, ()56813848
Celular: 5554155786
 Asociado
Sara Montalvo González
montalvobienesraices@hotmail.com
Teléfono(s): (55)56768840, (55)29357451
Celular: (55)43242364
 Asociado
Margarita Montalvo Maldonado
maggie21mx@yahoo.com
Teléfono(s): 55631811
Celular: 5551020404
 Asociado
Miriam Morales Astudillo
miriam112244@yahoo.com.mx
Teléfono(s): 55640024
Celular: 5554099369
 Asociado
Maria Morales Burguet
marimoralesb@gmail.com
Teléfono(s): 56587596, ()56587246
Celular: 5534339937
 Asociado
Cristina Najar Carrillo
cbfbienesraices@eninfinitum.com
Teléfono(s): (55)56892637, (55)53360183
Celular: (04455)5555008066
Asociado
Griselda Novelo Mendez
alegriss@prodigy.net.mx
Teléfono(s): 56305310
Celular: 5532250151
 Asociado
Mirtala Nucamendi Farrera
nucamendibienesraices@prodigy.net.mx
Teléfono(s): (55)56053217, (55)56887249
Celular: (044)5554549626
 Asociado
Daniel Núñez Medina
danielnunez6@prodigy.net.mx
Teléfono(s): (55)57031877, (55)55666159
 Asociado
Miguel Pavón Calderón
previsionlegal@yahoo.com.mx
Teléfono(s): (55)56712314, (55)54533400
 Asociado
Dolores Peláez De Castillo
aserinmo@gmail.com
Teléfono(s): 10424827, ()56839063
 Asociado
Patricia Pereda y Madruga
patygonz0102@hotmail.com
Teléfono(s): 55944139, (55)56030799
Celular: 5554347073
 Asociado
Xochitl Pérez Montero
inmovivienda@prodigy.net.mx
Teléfono(s): (55)56155300
Celular: (04455)54089484
 Asociado
Delfino Piña Morales
maricarmen.pina@fampi.com.mx
Teléfono(s): 55949910
Celular: 5554339338
 Asociado
Verónica Porraz de Campuzano
verchy@prodigy.net.mx
Teléfono(s): (55)56802121, (55)56801730
 Asociado
María Isabel Quiroga Quiroga
lucero@circulobienesraices.com
Teléfono(s): (55)51355930, (55)51355932
 Asociado
Josefina Quiroz Bustos
contacto@stqinmuebles.com.mx
Teléfono(s): (55)56318601, (55)63553133
Celular: (55)27252211
 Asociado
Esperanza Ramos Castellanos
espe.ramos@arinet.com.mx
Teléfono(s): (55)62346226
Celular: 5554196021
Asociado
Teresa Rangel Ortiz
teresarangel@prodigy.net.mx
Teléfono(s): 56056968, ()10885114
Celular: 5554099848
 Asociado
Georgina Reynoso Alanis
g.reynoso@reyalvendecasas.com
Teléfono(s): (55)36032574, (55)5540663981
Celular: (55)12337933
 Asociado
Ruben Riquelme Reyes Retana
ruben.riquelme@gmail.com
Teléfono(s): 56823654, ()55191251
Celular: 5514682165
 Asociado
Sonia Rivas Castañeda
s.cabri@luxuryhabitat.com.mx
Teléfono(s): 13285029, ()5539100733
 Asociado
Teresa Rivera Ortiz
teresa.rivera@riverabr.com
Teléfono(s): 53350437, ()69920481
Celular: 5539055290
 Asociado
Lorena Rivero Torres
sebra2002@gmail.com
Teléfono(s): (55)56157175, (55)56157173
 Asociado
Luis Robina Ibarra
robina@quality.com.mx
Teléfono(s): (55)56597777
 Asociado
Roberto Rodríguez Rubio
robertorr@tuhipotecafacil.com
Teléfono(s): (55)10903231
Celular: (55)55068890
 Asociado
Maria Rosa Roux Garcia
info@rginmo.com
Teléfono(s): (55)55938411
Celular: (55)5554091661
 Asociado
Ana Gabriela Rubio de Silva
publicidadcentro@zrygbienesraices.com
Teléfono(s): 59486292, ()59486312
Celular: 17180704
 Asociado
Gerardo Rueda Esquivel
inmobiliaria@afimex.com.mx
Teléfono(s): (55)54242424, (55)54242427
Celular: (04455)11221770
 Asociado
Gabriela Saldaña Cataño
servicio-externas@catanomexico.com
Teléfono(s): (55)55687121, (55)55687068
Celular: (55)42223133
Asociado
Luz Maria Martha Samperio Marin
marthasamperio@yahoo.com.mx
Teléfono(s): 56610856
Celular: 5559459202
 Asociado
María Elena Sánchez Muñiz
mariel18@prodigy.net.mx
Teléfono(s): (55)55590334
Celular: (04455)91959729
 Asociado
Susana Serdán Rueda
serdan_bienesraices@hotmail.com
Teléfono(s): (55)56622175, (55)5555 03 04 15
Celular: 56 62 31 53
 Asociado
Selene Serrano Dávalos
yasmin@serranovende.com.mx
Teléfono(s): (55)55954045, (55)56683806
 Asociado
Emma Rosa Solís Angulo
solangersa@yahoo.com.mx
Teléfono(s): (55)54858592, (55)54061705
 Asociado
Jorge Alejandro Solis Angulo
sauter.admon@gmail.com
Teléfono(s): 6645.0447, ()554234.6940
Celular: 5542636933
 Asociado
Patricia Soto Ovalle
tradeh@prodigy.net.mx
Teléfono(s): (55)53369768, (55)56892558
Celular: 04455 5433 8898
 Asociado
Marcela Talavera Autrique
optabienesr@gmail.com
Teléfono(s): (55)56303929, (55)56303615
 Asociado
Ma. Eugenia Tanús Buhler
inmobiliariainmex@hotmail.com
Teléfono(s): (55)56823910, (55)56827485
Celular: (55)5559090976
 Asociado
Nuria Terre
bouquetbienesraices@gmail.com
Teléfono(s): 56413074
Celular: 5521094815
 Asociado
Gloria Torres Pérez
evatope@gmail.com
Teléfono(s): (55)24749220, (55)30364258
Celular: (555)408 10 71
 Asociado
Mary Paz Torres Ponce
topazbienesraices@yahoo.com
Teléfono(s): 56802212, ()56510185
Celular: 5510489690
Asociado
GRUPO TREDI
ventas@tredi.mx
Teléfono(s): 5631-7548, ()5645-7953
Celular: 2615.1903
 Asociado
Angel Valdés Padilla
angel.valdes@consultoriayadministracion.com
Teléfono(s): (55)49972152, (55)22712440
 Asociado
José Manuel Valles Y Septién
mvalless@yahoo.com.mx
Teléfono(s): (55)56828239
 Asociado
Griselda Varela y Santiago
gvsaldana@yahoo.com
Teléfono(s): 999 9306475
Celular: 999 2231677
 Asociado
Rosa Maria Vazquez
rosavazquezz@prodigy.net.mx
Teléfono(s): 56459631, ()56450171
Celular: 5554543098
 Asociado
Belinda Vega Gutiérrez
housesunlimited@prodigy.net.mx
Teléfono(s): (55)55852520, (55)54250931
 Asociado
RAYO VENDE
contacto@rayovende.com
Teléfono(s): (55)55131010, (55)55731312
 Asociado
Maria G. Villela Díaz Gonzalez
ventas@villelayasociados.com.mx
Teléfono(s): 56681877, ()56681887
Celular: 56810196
 Asociado
Victoria Virues Rincon
vikyvirues@hotmail.com
Teléfono(s): 56666451
Celular: 5554073296
 Asociado
Luis Humberto Vivanco Zamora
hvivanco_abogados@hotmail.com
Teléfono(s): 55540205, ()55540161
 Asociado
Leticia Vivanco Topete
info@roqueinmobiliaria.com.mx
Teléfono(s): 56607869, ()56837106
 Asociado
Mariam Zacarias
zacariasasoc@gmail.com
Teléfono(s): 5554349571
Asociado
Claudia Victoria Zorrilla Ducloux
claudiazorrillamtz@hotmail.com
Teléfono(s): 51715357, ()56068587
Celular: 25883825
 Asociado
Jeannette Isabel Zúñiga López
janzu1@live.com.mx
Teléfono(s): 56757489
Celular: 5534398713
 Asociado
Laura Zurita de Turner
informacion@turner-asociados.com.mx
Teléfono(s): (55)55932833, (55)55938391"

# PUERTO VALLARTA

myString ="Pedro Robin	
Pedro Robin
Applegate Realtors
Ofc: 322-221-5434
Cel: 044-322-172-0023
FAX
pedro@applegaterealtors.com

Edward Padalinski	
Edward Padalinski
Ron Morgan Properties
Ofc:322-222-6678
CEL: 044-322-779-1235
USA: 303-219-6133	
edward@ronmorgan.net

Luis Muñozcano	
Luis Muñozcano
Timothy Real Estate Group
Ofc: 322-223-5300
Cell: 322-105-0017
luis@timothyrealestategroup.com

Wayne Franklin	
Wayne Franklin
Tropicasa Realty
Ofc: 322.222.6505
Cel: (322) 292-3279 
USA: 01.800.877.7000
franklin@tropicasa.com

Nancy Valiente	
Nancy Valiente
Coldwell Banker - La Costa Realty
ofc: 322-223-0055 
cell: 322-135-0763 
nancy@cblacosta.com

Warren Paul Brander	
Warren Paul Brander
Boardwalk Realty Puerto Vallarta
Ofc: 322-224-0014	
Cel: 044-322-200-2253 
USA: 1-855-239-0640	
warren@boardwalkrealtypv.com

Luis Perez	
Luis Perez
Mi Buena Estrella
Ofc:322-222-4397
CEL: 322-779-8046
luisperezvallarta@gmail.com

Miguel Fabritzio	
Miguel Fabritzio
G3 Mex Realty
Ofc: 322-209-0832
FAX: 322-209-1358
Cel:
miguel@g3mex.com

Ron Morgan	
Ron Morgan
Ron Morgan Properties
Ofc:322-222-6678
CEL: 322-150-5471
USA: 323 315 2569	
info@ronmorgan.net

Carmen Garcia	
Carmen Garcia
Applegate Realtors
Ofc: 322-222-7817
Cel: 322-150-6890
USA:315-371-1958
carmengarcia@applegaterealtors.com

Veronica Macias	
Veronica Macias
Coldwell Banker La Costa
Ofc: 322-222-2604
Cel: 044-322-205-8161
USA:
veronica.macias@cblacosta.com

Jose Lopez Reyes	
Jose Lopez Reyes
Contakto
Ofc:
CEL: 
USA: 
jreyes@contakto.com.mx

Russell Faulkner	
Russell Faulkner
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-429-7069
USA: 877-204-7730	
russell@timothyrealestategroup.com

Robert Bertrand	
Robert Bertrand
Coldwell Banker La Costa
Ofc: 322-223-0055
Cel: 332-149-6970 
USA: 866-978-8060 
robert@cblacosta.com

Alfredo Herrera	
Alfredo Herrera
Tropicasa Realty
Ofc: 322-222-6505
Cel: 322-142-6296 
USA: 01-800-877-7000
alfredoh@tropicasa.com

Lambert Schneck	
Lambert Schneck
Neptune Realtors
Ofc: 322-221-0287 
Cel: 322-227-1437 
FAX: 322-221-0433
lambert@neptunemx.com

Carmen Espinoza	
Carmen Espinoza
Coldwell Banker - La Costa Realty
Ofc: 322-222-2604 
Ofc: 322-221-1408 
Cel: 322-117-9932 
USA: 310-424-5696 
carmen.espinoza@cblacosta.com

Carl Timothy	
Carl Timothy
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-227-5732 
USA: 877-204-7730	
carl@timothyrealestategroup.com

Raul Ochoa Villapando	
Raul Ochoa Villapando
Pacific Estates Realty
Ofc:(322) 223 0565
CEL: 
FAX: (322) 223-1830	
pacest@realtyworld.com.mx

Reena Egger	
Reena Egger
Ron Morgan Properties
Ofc:329-298-0492
CEL: 322-173-8712
USA: 323-786-4857	
reena@ronmorgan.net

Victoria Pratt	
Victoria Pratt
Timothy Real Estate Group
Ofc: 329-298-1860	
Cel: 322-779-9283 
USA: 877-204-7730 
victoria@timothyrealestategroup.com

Wayne Soroka	
Wayne Soroka
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-191-1888 
USA: 877-204-7730	
wayne@timothyrealestategroup.com

Harriet Cochran Murray	
Harriet Cochran Murray
Cochran Real Estate
Ofc: 322-228-0419
Cel: 322-205-7550 
USA: 011-52-322-228-0419
harriet@casasandvillas.com

Rafael Becerril Alavarado	
Rafael Becerril Alavarado
Vertice Real Estate & Associates
Ofc:322-297-6279
CEL: 322-151-27651
USA: 
rbecerril.vertice@gmail.com

Kevin McNaughton	
Kevin McNaughton
Coldwell Banker - La Costa Realty
ofc: 322-223-0055 
cell: 322-182-3885 
kevin@cblacosta.com

Jay Burchell	
Jay Burchell
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-105-0230 
USA: 877-204-7730 
jay@timothyrealestategroup.com

Alejandro Zamilpa	
Alejandro Zamilpa
Zamilpa Realtors
Ofc: 322-206-0009
Cel: 322-294-0877
FAX: 322-222-4916
alex@zamilparealtors.com

Carlos Osuna	
Carlos Osuna
Sierra Del Mar
Ofc:(322) 228 0001
CEL:
USA: (206) 701 7571
carlos@sierradelmar.com

Salvador Michel	
Salvador Michel
David Pullen Properties
Ofc:(322) 209-2189 
CEL:(322) 112-1937 
michel@davidpullenproperties.com

Arturo Alvarez Ibarra	
Arturo Alvarez Ibarra
Applegate Realtors
Ofc:322-222-7817
Cel:322-192-7091
USA:323-638-0023
arturo@applegaterealtors.com

Jorge Guillén	
Jorge Guillén
Tropicasa Realty
Ofc: 322.222.6505
Cel: 322.306.0535
USA: 01.800.877.7000
jorge@tropicasa.com

Sherri Narro	
Sherri Narro
Puerto Vallarta Dream Homes
Ofc:(322) 228-0584
CEL:
USA: (903) 258-9690 
sherri@PuertoVallartaDreamHomes.com

Roger Dubois	
Roger Dubois
DUBOISPV
Ofc: 
Cel: 322-139-0285
USA: 1-514-907-1632
roger@duboispv.com

Silvia L. Elias	
Silvia L. Elias
PV REALTY
Ofc:(322) 222-4288 
Cel: 322-292-1099
USA: 011-52(322)223-2840
silvia@pvre.com

Ian Shepherd	
Ian Shepherd
Tropicasa Realty
Ofc: 322.222.6505
Cel: 322.183.4327
USA: 01.866.978.5539
ian@tropicasa.com

Carmen Jasso	
Carmen Jasso
Coldwell Banker - La Costa Realty
Ofc: 322-223-0055 
Cel: 322-168-0576 
USA: 866-978-8060 
carmen@cblacosta.com

Laura Gelezunas	
Laura Gelezunas
Boardwalk Realty
Ofc: 322-223-0001	
Cel: 322-117-2607 
USA: 314-256-9053 
laura@boardwalkrealtypv.com

Jeri Grant	
Jeri Grant
Tropicasa Realty
Ofc: 322.222.6505
Cel: (322) 174-5841
USA: 01.800.877.7000
 jeri@tropicasa.com

David Pullen	
David Pullen
David Pullen Properties
Ofc:(322) 209-2188 
CEL:(322) 303-7090 
USA: 
info@davidpullenproperties.com

William John Davies	
William John Davies
Vallarta Real Estate Group
Ofc:322.222.5500
CEL: 1-415-287-6521
FAX: 1-415-354-3460	
johnny@rex-mexico.com

Jean R Talbot	
Jean R Talbot
Talbot Real Estate
Ofc:(322) 223 3770 
Cel: (322) 145 1257
USA: (888) 226 0563	
info@talbotpuertovallarta.com

Susanne Palmgren	
Susanne Palmgren
Ron Morgan Properties
Ofc: 329-298-0492	
Cel: 322-103-9935 
USA: 
susanne@ronmorgan.net

Taniel Chemsian	
Taniel Chemsian
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-120-5900 
USA: 877-204-7730 
taniel@timothyrealestategroup.com

Alvaro Garcia	
Alvaro Garcia
Applegate Realtors
Ofc: 322-221-5434
Cel: 044-322-133-7059
USA:
alvaro@applegaterealtors.com

Dwayne Carrier	
Dwayne Carrier
Timothy Real Estate Group
Ofc: 322-223-5300
Cell: 322-117-3579
USA: 760-409-4913
dwayne@timothyrealestategroup.com

Donna L. Davies	
Donna L. Davies
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-779-9406 
USA: 877-204-7730	
Donna@timothyrealestategroup.com

Rodrigo Saracho	
Rodrigo Saracho
Costa Dorada Realty
Ofc: 322-222-0499
Nextel: 322-145-6531
rodrigo@costadoradarealty.com

Lawrence Taylor	
Lawrence Taylor
Luxury Beach
Ofc:322-221-3581 
Cel: 044-322-150-6317
USA: 213-797-4402	
info@luxurybeach.com

Stella Leavitt	
Stella Leavitt
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-140-2133 
USA: 877-204-7730 
stella@timothyrealestategroup.com

Aldo Garces	
Aldo Garces
Pancho's Villas Real Estate
Ofc: 322-223-0569 
Fax: 322-223-0570

Cell: 322-292-3240 
aldo@panchosvillas.com
info@panchosvillas.com

Linda Kennedy	
Linda Kennedy
Timothy Real Estate Group
Ofc: 322-223-5300	
Cel: 322-278-9940 
USA: 877-204-7730 
linda@timothyrealestategroup.com

Aaron Viggers	
Aaron Viggers
Applegate Realtors
Ofc:322-222-0620
Cel:322-356-6070
USA:323-638-0023
aaron@applegaterealtors.com

Brock Squire	
Brock Squire
Coldwell Banker La Costa
Ofc:. 322-223-0055
Cel: 322-294-1552 
USA: 866-978-8060
brock@cblacosta.com

Bill Taylor	
Bill Taylor
Bill Taylor Real Estate
Ofc: 322-221-0923 
Cel: 322-135-6082
FAX: 322-221-1564
bill@tristarrentals.com

Ernesto Martinez Curiel	
Ernesto Martinez Curiel
EMC Global Realty Mexico
Ofc: 322-293-1542	
Cel: 322-182-1771 
Cel: 322-133-8555 
emc@emcglobalrealtymexico.com

Kim Moore	
Kim Moore
Costa Alegre Realty
Ofc:322-221-0690
CEL: 322-429-8563
USA: 210-587-7952
mex.land@gmail.com

Bill Hevener	
Bill Hevener
Ron Morgan Properties
Ofc:322-222-6678
CEL: 322-105-1151
USA: 323-315-2569	
billhevener@ronmorgan.net

Dana Leavitt Scapa	
Dana Leavitt Scapa
Timothy Real Estate Group
Ofc: 322-223-5300
Cel: 322-147-3459 
USA: 322-147-3459
dana@timothyrealestategroup.com

Cheryl Naylor-Riviera	
Cheryl Naylor-Riviera
Ron Morgan Properties
Ofc:322-222-6678
CEL: 322-779-4574
USA: 323 315 2569
cheryl@ronmorgan.net

Rob Boyd	
Rob Boyd
Boardwalk Realty Puerto Vallarta
Ofc: 322-224-0014	
Cel: 044-322-194-1057 
USA: 1-855-239-0640	
rob@boardwalkrealtypv.com

Michael Green	
Michael Green
Boardwalk Realty Vallarta
Ofc: 322-224-0014
Cel: 044-322-227-6064
USA: 1-855-239-0640
michael@boardwalkrealtypv.com

Maca Macmorran	
Maca Macmorran
Maca & Company
Ofc: 322-221-5640
Cel: 322-150-6196
USA: 520-232-2489
macainvallarta@gmail.com

Marilyn Newman	
Marilyn Newman
Coldwell Banker La Costa
Ofc: 322-222-2604
Cel: 044-322-306-0534
USA:
marilyn@cblacosta.com

Laura Dean	
Laura Dean
Vallarta Real Estate Group
Ofc:322.222.5500
CEL: 322-157-2931
FAX: 1-415-354-3460	
laura@rex-mexico.com

Salvador Zuniga	
Salvador Zuniga
Blue Oceanside Realty
Ofc:(322) 223 80 54 
FAX: (322) 223 80 54
USA: 
salvador@blueoceanside.com

Marc Serrao	
Marc Serrao
Applegate Realtors
Ofc: 322-222-7817	
Cel: 322-182-0422 
USA: 214-628-4585 
marc@applegaterealtors.com"

# MONTERREY

# indexArr = []
# VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
# lines = myString.split("\n")
# lines.each{|line|if line[0] != ' '; indexArr.push("lead"); else; indexArr.push("lead")}


# def labelLines(thisString)
# 	indexArr = []
# 	lines = thisString.split("\n")
# 	lines.each do |line|
# 		if line[0] == " ";indexArr.push("follow")
# 		else indexArr.push("lead")
# 		end
# 	end
#  end

# names = ["jc","medina","alfonso","carmen","celia","fernando","gaby","gabriela","gaby","isa","isabel","jsucar","susana","vivian","juancarlos","jmalacara","maite","manuel","mariana","marglez","mary","norma","maximo","marroyo","monica","norma","olga"]

# emails = []

# names.each{|name| emails.push(name + "@bandin.mx")}

# emails.each{|email| Contact.create(:email => email, :category => "RE_broker")}


myString="
2000 Once Bienes Raices
Miguel Treviño Ramones

 2000once.br@gmail.com

Activos Inmobiliarios
Roberto Jiménez Salinas

 roberto@activosinmobiliarios.com.mx
 (81)-83356185, (81)-83356185

ACTIVOS INMOBILIARIOS
Juan Gabriel González Barney

 ventas@activosinmobiliarios.com.mx
 ((81))-8335-6185

ADR Consorcio Inmobiliario, S.A de C.V.

ADRIAN GARZA
Adrian Garza

 adrian@grupogarza.org
 (818)-3360654

ADVANCE BIENES RAICES
Teodoro Guzmán Garza

 teodorojguzman@gmail.com

AFSI
Jesús Mauricio Aceves Cazares

 afsi.oficina@gmail.com
 40401881

AG Proyectos de Inversión, S.A de C.V.
Gerardo Aguilera Inostrosa

 gerardo@grupoagmexico.com

Al+deco Proyectos Inmobiliarios S.C.
Ing. Carlos Antonio Aldeco Saldaña

 carlos.aldeco@realtyworld.com.mx
 (81)-10952861, (81)-15888263

Alejandro Garza Saucedo
Alejandro Garza Saucedo

 agsainmuebles@gmail.com

Alejandro Tamayo Ibarra
Alejandro Tamayo Ibarra

 tamayo@mgtlandcapital.com

Alles Group
Felix Gabriel Tejada

 ftejada@allesgroupmty.com

Altitud Bienes Raíces
Bella Leal

 info@altitudbienesraices.mx
 (811)-5556783 , (81)-20877800

Angelica Maria Treviño Flores

Antonio Xavier Cuellar Aguirre

Armando Arreola Cantú
Armando Arreola Cantú

 aarreola@amityk.com
 (81)-83634848, (81)-83638851

ASESORES Y CASAS
KATYA GABRIELA HUITRÓN RODRÍGUEZ

 informacion@asesoresycasas.com.mx
 ((81))-83407073

Asesoria Inmobiliaria Inproperties y Asociados SC
Michel Andrés Reynoard Villegas

 oscar@inproperties.com.mx
 (81)-1967784

ASIN BIENES RAICES
Lic. Emma de Saldaña

 emmacantu00@hotmail.com
 ((81))-83792223, ((81))-83342203

ASIN BIENES RAICES
Emma Cantú De Saldaña

 emmadesaldana@asinbienesraices.com
 (81)-8379-2223, (Nextel)-18-05-7489

AVA Bienes Raices
Pablo Eduardo Salinas Treviño

 psalinas@avabienesraices.mx

AVALUOS VIP, S. C.
José Luis Ruiz Garza

 avaluosruiz@avaluosvip.com.mx
 (811)-257 2310

BARNEY@HOMES
MARIA DE LOURDES GUARDADO

 lulybarney@hotmail.com
 (81)-81610134, (81)-83653358

Beatriz Cárdenas Cárdenas
Beatriz Cárdenas Cárdenas

 beatriz.cardenas@villacero.com

Better Homes Realty
Luis Zapata

 info@bhr.mx
 (81)-83567080, (811)-5443195

BIENES RAICES ACORE
Rene Acosta Quezada

 reneacost@yahoo.com

Bodegas ADN Monterrey

BR MONTERREY
 brmonterrey@gmail.com
 (81)-83724013, (81)-14782610

Brokers Conceptos S.A. de C.V.
Emilio De la Garza Garza

 info@zonifica.com
 (81)-83560736

BRYMI INMOBILIARIA
Silvia Judith Torres Luévano

 silvia.torres@brymi.com.mx
 (81)-21397672, (81)-10448246

CADENA COMERCIAL OXXO,S.A. DE C.V.
Luis Armando Salazar Cantú

 armando.salazar@oxxo.com

Cantú Quiroga y Asociados, S.C.
Ricardo Alfonso	Cantú Garza

 cantuquiroga@prodigy.net.mx

CANTU QUIROGA Y ASOCIADOS,S.C.
F. Horacio Cantú Quiroga

 hcq@prodigy.net.mx

CAPITEL DESARROLLOS
Eduardo A. Mellado Flores

 emellado@capitel.com.mx

CAPITEL DESARROLLOS
Eduardo Mellado Rodríguez

 e_mellado_rdz@capitel.com.mx

CARLOS ARMANDO MANCILLA MONTOYA
 
 camancilla2@hotmail.com
 (81)-8110502442

Carlos Suárez Warden

Casa O Depa.com
Luis Martin Espinosa Gutierrez

 mespinosa@casaodepa.com
 ((81))-83567070, (81)-82598944

Casas y Casas
Joel Abraham Leal Escobedo

 joel_leal76@hotmail.com

CB RICHARD ELLIS, S.A. DE C.V.
Ramón Flores Dominguez

 ramon.flores@cbre.com.mx

CEBRIAN BIENES RAICES
Daniel Cebrian Ramirez

 daniel@cebrianbienesraices.com
 (81)-10114253

Cecilia Erosa Barrera

Cecilia Serrano Medina

CEI INMOBILIARIA
ERNESTO LEAL

 elealc@prodigy.net.mx
 (8182449089)-, (8183764415)-

Centro de Negocios Inmobiliarios
Ing. Jose Luis Pérez Madero

 karen@cnivalle.mx
 (81)-12537047, (81 )-12537048

CENTURY 21 LIBRA
 c21libralua@gmail.com
 (81)-81732121

Clío Guevara del Pino
Clio Guevara Del Pino

 clio@cgbienesraices.com
 (811)-5-999-694

COLLIERS INTERNATIONAL
Luis Manuel Galindo Guajardo

 luis.galindo@colliers.com
 (81)-83635330

COLLIERS INTERNATIONAL
Baltazar Mauricio Cantú Gonzalez

 baltazar.cantu@colliers.com
 83635330

COLLIERS INTERNATIONAL
Cesar A. De la Cerda Garza

 cesar.delacerda@colliers.com
 83635330

COLLIERS INTERNATIONAL
Sergio Arturo Resendez Trujillo

 sergio.resendez@colliers.com
 83635330

COLLIERS INTERNATIONAL
Fernando Alvarez Cardenas

 fernando.alvarez@colliers.com
 83635330

Conex
Arturo Daniver Martinez Lozano

 arturo.martinez@conex.mx

Conexión Bienes Raíces

Consorcio Industrial de Exportaciones
Armando Maquivar Bustos

 maquivar@ciesa.com.mx

Consultoria Inmobiliaria

Cuauhtemoc Moctezuma Heineken
Juan Felipe Mendez Garcia

 juanfelipe.mendez@cuamoc.com
 (8115719980)-

Datoz

DEALHUNTER SA DE CV
JESUS R. GARZA VEGA

 info@dealhunter.mx
 (81)-19712222, (81)-14777944

Desarrollos Delta

Dialex Servicios Inmobiliarios

DIRECTO BIENES RAÍCES
Jorge Alberto Treviño Gonzalez

 jorge@directobienesraices.com
 (81)-14138336, (81)-89983960

EDMON Grupo Inmobiliario
Lic. Eduardo Cervantes Lozano

 ecervantes@edmon.com.mx
 (81)-83745050

ELVIA GODINES
 elviagodines@prodigy.net.mx
 8183450497


Enfoque Inmobiliario
Graciela Carrasco Garza

 graciela.carrasco@hotmail.com
 (811)-6125186

Enlaza Bienes Raices
Maricela Villarreal Arreola

 info@enlaza.com.mx
 ((81))-10441259

Enlaza Bienes Raices
Yelile Marcos Tueme

 info@enlaza.com.mx
 ((81))-10441259

ENLAZA BR
Yelile Marcos / Maricela Villarreal

 info@enlaza.com.mx
 (81)-2049 4545, (81)-2050 8152

ESPIGA BIENES RAICES
HECTOR ESPINOSA B

 hectorespinosab@gmail.com
 (81)-8110323190, (81)-8110323190

Expansión Mty
María Zamora

 contacto@expansionmty.com.mx
 (81)-21879713

Fernando González De la Peña
Fernando González De la Peña

 lic.fernandogonzalez@hotmail.com

FIDESburó Asesores Inmobiliarios
Eduardo Javier Cantú González

 ventas@fidesburo.com
 ((01 800))-8343 2060

FIDESburó Asesores Inmobiliarios
José Antonio Cantú González

 ventas@fidesburo.com
 (8)-3432060

Garza Rendón Maria Antonia
Garza Rendón Maria Antonia

 marytonnyrmzz@hotmail.com

General Contractor México
Mario Gutierrez Beteta

 mariogutie@yahoo.com.mx

General Contractor México
MaRío R. Gutiérrez de Alba

 mario@generalcontractormexico.com

Gerencia Red
Claudia Hernández Morales

 chernandez@gerenciared.com

Gerencia Red
Balbina Manjarrez Villalobos

 bmanjarrez@gerenciared.com

Gerencia Red
Eduardo Camarena Legaspi

 ecamarena@gerenciared.com

Gerencia Red
Maria Estela Zambrano Yturria

 mzambrano@gerenciared.com

Gerencia Red
Veronica Moreno Tovar

 vmoreno@gerenciared.com

Gerencia Red
Ma. Eugenia Castillejo de González

 mcastillejos@gerenciared.com

Gerencia Red
Martha Olvera Rodarte

 molvera@gerenciared.com

Gerencia Red
Hilda Ivon Mata Tafoya

 imata@gerenciared.com

Gerencia Red
Gerardo M. Gutiérrez Rodríguez

 gmgutierrez@gerenciared.com

Gerencia Red
Patricio Gutiérrez Rodríguez

 pgutierrez@gerenciared.com

Gerencia Red
Marianela Mendoza Garza

 mmendoza@gerenciared.com

Gerencia Red
Georgina Ramos Frias

 gramos@gerenciared.com

Gerencia Red Grupo Inmobiliario, S. A de C. V.
Maria Teresa Delgado Adame

 mdelgado@gerenciared.com

Gestión y Continuidad de Negocios BCM, S.A. de C.V.

GINSA GRUPO INMOBILIARIO
JULIO CESAR GONZALEZ BRAVO

 juliocesar@ginsagin.com
 (81)-83492020, (81)-83667783

Ginsa Gupo Inmobiliio
Hector Javier Aguirre Alanís

 aguirrealan@hotmail.com

Global Comercial&Investment Real Estate
César Fernando Paredes Guerra

 cparedes@att.net.mx

Global Commercial and Investment Real Estate
Gerardo Paredes Guerra

 gparedes@att.net.mx

Gomez González Bernardo
Gomez González Bernardo

 bgomez_glez@msn.com

González Bienes Raices
Ing. Mario A. González Galindo

 magg@gonzalezbienesraices.com
 (81)-83358383, (81)-11134738


Gordillo Jaime y Asociados
 jorgemario@gordillojaime.com
 (80-58-00-8)-, (811-740-15)-

GOYE Real Estate

Grimonsa S.A de C.V.
Lecea Garay Mirna

 mlecea@grimosa.com.mx

GRIMONSA SA DE CV
ROQUE RABELO AREVALO

 mlecea@grimosa.com.mx
 (81)-83354552, (81)-10995027

Grubb & Ellis/Select
Gerardo Pasaret Robles

 gerardo.pasaret@select-rs.com

Grupo Elizomar, S.A. de C.V.
Fernando Elizondo Garza

 br@materialesasfalticos.com

GRUPO EQUINOCCIAL S.A DE C.V.
Ramiro Garza Villarreal

 rgarza@ampimty.com

Grupo Inmobiliario EDMON
Hugo Gutiérrez Gaona

 hgutierrez@integradesarrollos.com

GRUPO INMOBILIARIO MCQUADE S DE RL DE CV
Francisco A. McQuade Castañeda

 info@vendoinmuebles.com.mx
 (81)-19904161, (81)-83408394

Grupo Stiva
Angel Ulises Rincón Pérez

 ulises.rincon@stiva.com

Grupo Vergel
 info@grupovergel.com
 (81)-84862711

Grupo Vía Inmuebles
Adrian Villarreal Lamas

 adrian@gvia.mx

Huidobro y Asociados
Alberto Huidobro Llabrés

 huidobro@prodigy.net.mx
 (044 )-8111930417

ILUSSAO Consultores S. de R.L.
Fernando Juárez Vásquez

 fjuarez@ilussao.com

Infante Luna Myrthala
Infante Luna Myrthala

 myrthala.banorte@yahoo.com.mx

Inmobiliaria Apodaca Monterrey
RAMSES ALVAREZ BARAJAS

 ramsesalvarez81@gmail.com
 (81)-14930260, (81)-14930249


Inmobiliaria Cumbres Monterrey
Héctor Rentería

 contacto@cumbresmonterrey.com
 (818)-421-9880

Inmobiliaria la Covadonga, S.A. de C.V.
Lic. J Martin Fdz G

 jfernandez@lacovadonga.com.mx
 (81)-21399301, (81)-14975030

INMOBILIARIA MARMUR SA DE CV
 info@marmur.com.mx
 (81)-82185660, (81)-21335660

Inmobiliaria Monterrey
Delfino Murillo Arellano

 ventas@inmobiliariamonterrey.com.mx
 (81)-14814705, (ext103 )-8119370101

INMOBILIARIA SANCHEZ & ROJAS, S.A. DE C.V.
DIANA ANGÉLICA SANCHEZ ROJAS

 ventas@insaro.com.mx
 (81 )-83618302, (81)-84216757

Inmobiliaria Zuhause

Inmuebla Enlaces
Francisco Javier Banda Flores

 info@inmueblaenlaces.com
 (81)-12970148, (81)-21502473

Inmuebla Ilussao Zona Valle
Rene Javier Morales Montemayor

 remo54@prodigy.net.mx

Interra, S.A de C.V.

IQ BIENES RAICES
IDALIA QUINTANILLA CANTÚ

 iq@iqbienesraices.com
 (818)-2594974, (81)-19413818

Iquarto Desarrollos
Jorge Alberto Martínez González

 jorgemg@iquarto.com
 (81)- 83351460

Isaías Aguilar Reséndez
Isaías Aguilar Reséndez

 isaias@valuacion-profesional-iar.com

IZA BUSINESS CENTERS
Federico Garcia Iza

 federico.garcia@izabc.com

IZA BUSINESS CENTERS
Eloisa Cavazos Salinas

 eloisa.cavazos@izabc.com
 (81)-8000 0000

Jaime Antonio González Galindo
Jaime Antonio González Galindo

 jgbienesraices@prodigy.net.mx

José Guillermo Pérez Muñoz
José Guillermo Pérez Muñoz

 jose.perez@rhipotecaria.com.mx


JOSE GUILLERMO QUINTANILLA VILLARREAL
JOSE GUILLERMO QUINTANILLA VILLARREAL

 memo64quintanilla@gmail.com
 8119272305

José Luis Aguirre Villafaña
José Luis Aguirre Villafaña

 jlaguirre52@gmail.com

Juan Miguel Medellín Moreno
Juan Miguel Medellín Moreno

 ingenieromedellin@elfraile14.com

Kapital Inmobiliario
Alberto Treviño

 alberto@kapitalinmobiliario.com.mx
 8115001191

KATO ACMA,S.A. DE C.V.
Candor Gutiérrez Garza

 candorgutierrez@yahoo.com

KATZIR
Mónica Marcela Montemayor Treviño

 administracion@katzir.mx

KATZIR
Claudia Estela Montemayor Treviño

 claudia_e575@hotmail.com

Koinox Developers
Benjamin Diaz Name

 bdiaz@koinox.com
 (81)-8174 7000

Koinox Developers
Jorge Luna Gutiérrez

 jluna@koinox.com

KONNECT
 contacto@konnect.mx
 (04481)-14759865

LAS FLORES ASESORIA INTEGRAL
 lasfloresasesoriaintegral@gmail.com
 (2139-0239)-

Laura Margarita Arredondo Zambrano
Laura Margarita Arredondo Zambrano

 laura@arredondoz.com

Laura Porras Loyola

Look for House Inmobiliaria, S.A de C.V.
Eva Graciela Mejía Calderón

 contacto_sanpedro@lookforhousemx.com
 83352233

Luis Gonzaga Caballero Bolado
Luis Gonzaga Caballero Bolado

 luis@caballerobienesraices.com

Marfil Desarrollo


María Olivia Ayala Reyes
María Olivia Ayala Reyes

 avaluosyasesorias@prodigy.net.mx

Martinez Ballesteros Bienes Raíces
Ricardo Martinez Ballesteros

 rmb1@prodigy.net.mx

Master Brokers Valle
María Jasso Reyes

 mariajassor@gmail.com

Matriz Inmobiliaria
Juan José Treviño Garza

 juanjose@matrizinmobiliaria.com
 (8)-3561700

Mavi Bienes Raices
Victor M.Mata

 mavibienesraices@gmail.com
 (01)-5281151283, (5281151283)-5281151283

MAXIBIENES. ASESORES INMOBILIARIOS
Jose Briones Garcia

 josebriones@maxibienes.com.mx
 (81)-83325060

MD Inmuebles
Karla Marcos

 info@mdinmuebles.com
 (81)-23176061

Mega Inmuebles
Ernesto González de la Peña

 ernestogzz@prodigy.net.mx
 (81)-83661000

Megamax Bienes Raices
Dahuabe Martinez Elias

 eliasmegamax@gmail.com

MG Asesores
Gómez Pérez Meisy Alaee

 asesor.inmobiliario.citas@gmail.com

Miguel Alfonso Pavon Calderon
Miguel Alfonso Pavon Calderon

 mpavon@previsionlegal.com.mx

MONARCA
Daniel Ríos Guzmán

 cecilia.arcaute67@gmail.com

Moncavil y Asociados, S.C.

Moving Property
Ramiro Gonzalez Botello

 biogzz@prodigy.net.mx

Moving Property
Maria de los Angeles Garza Lozano

 mg@movingproperty.mx
 (81)-80449988, (81)-19922982

Mundo Raiz
Gustavo Javier Elizondo Palacios

 gustavo.elizondo@mundoraiz.com
 (81)-84007711, (81)-84007712


Muzotto Inmobiliaria
Guadalupe Muñoz Soto

 ventas@muzotto.com
 (81)-81140143, (81)-19374950

Nivel Uno Construcciones
Jorge Cuellar Lozoya

 eduardo@niveluno.com.mx
 (81)-19981838

NOVA REALTY
MISHAEL LÓPEZ ROMÁN

 info@novarealty.mx
 (Of. (81))-1973-6433, (Cel. (81))-8020-5858

Nume Inmobiliaria
Ma Cristina Medellin Mendoza

 cristina.medellin@numeinmobiliaria.com
 (811)-2902373, (811)-2902412

Nuva Inmuebles
Del Rivero CorralCarolina Guadalupe

 carolina@nuva.mx

OJABSA
Mirna Edith Uresti Prado

 ventas@ojabsa.com.mx
 83446301

OJABSA
Myriam Danae Velazquez Valdes

 ventas@ojabsa.com.mx
 (81)-83446301

Paul Madison Douglass Robinson
Paul Madison Douglass Robinson

 paul.duglass@selec-rs.com

PH7 REAL ESTATE
SUSANA ELIZONDO

 info@ph7realestate.com
 (81)-83353712, (81)-83352683

Picasso Bienes Raíces
Brenda Villarreal

 info@ipicasso.mx
 (81)-83353048, (811)-0666967

Planen Luxury
Ana Cristina Dominguez Gandara

 rebeca@planenluxury.com
 19348920, 18074915

Planen Luxury
Maria Cristina Garza Betancourt

 marketing@planenluxury.com
 19348920

Planen Luxury
Irma Rebeca Aranda Delgado

 marketing@planenluxury.com

Planen Luxury
Guadalupe Flores Mata

 marketing@planenluxury.com

Plusvalía Inmuebles
Fernando González Sada

 info@plusvaliai.com
 (81)-13663066

PR REAL ESTATE S DE RL DE CV
ARQ. CECILIA FRIAS

 cecilia@prrealestate.com.mx
 (81 )-83353712, (81)-83352683


Preminence Valle Bienes Raices
Carrillo León Mario Alberto

 mcarrillo@preminence.com.mx

Preminence Valle Bienes Raices

Preminence Valle Bienes Raices

Previsión Legal

Prevision Legal, SA de CV
Marco Antonio Hinojosa Alvarez Tostado

 mty@previsionlegal.com.mx

Promotora Inmobiliaria González Elizondo, S. de R. L. de C. V.
Lic. Gerardo González Elizondo

 gepromotora@yahoo.com
 (0181)-83152160, (0181)-22827141

Proper Deal

Quintanilla y Asociados Bienes Raices

Real Key Estate
Blanca Lidia Garza Cavazos

 contacto@realkeyestate.com
 (81)-86051764, (81)-19341242

Real Key Estate
Nora Edith López Salazar

 contacto@realkeyestate.com
 (81)-1934-1242

Real Key Estate
Jorge Eduardo Gómez Nájera

 contacto@realkeyestate.com
 (81)-1934-1242

REALTY WORLD INCO VALLE CORREDORES Y ASESORES INCORPORADOS
Jorge Alberto Paredes Guerra

 jorge@realtyworld.com.mx
 (818)-220-8480

Realty World Koinox
Fernando González Rocha

 koinox@realtyworld.com.mx
 (81)-81747002, (81)-19774238

Realty World Oliva Asesores
Hector M. Oliva Galván

 info@realtyworldoliva.com
 (0181)-83659091, (0181)-83659092

REALTY WORLD PROCASAS
María Eréndira Cárdenas Cuevas

 joseluisgarza@rwpro-k-zaz.com
 (818)-100-9487, (818)-378-4997

REALTY WORLD PROCASAS
Daniel Alberto Berrones Melchor

 joseluisgarza@rwpro-k-zaz.com
 (818)-100-9487, (818)-378-4997


REALTY WORLD PROCASAS

REALTY WORLD PROCASAS
Brenda Deyanira Charles Garza

 arq.brendacharles@gmail.com

REALTY WORLD PROCASAS
Leticia Martinez

 letty_190@hotmail.com

REALTY WORLD PROCASAS
Brenda Paloma Leal Charles

 paloma.charles@gmail.com

REALTY WORLD PROCASAS
Diana Elisa Gómez Mata

 darelygifts@gmail.com

Remax PyV
Eduardo Guillermo Muñoz Sheridan

 pelizondoe@pyv.com.mx
 83178283

Remax PyV
Pedro Elizondo Elizondo

 pelizondoe@pyv.com.mx
 (81)-11558012, (01800)-5092477

Remax PyV
ALEJANDRO LEOPOLDO ERHARD LOZANO

 crminmobiliario@remaxmty.com
 (81)-83178283, (81)-83178286

RENTALO
Juan Chávez Estrada

 rentaloasesores@hotmail.com

Rentohouse
ORLANDO PAREDES

 info@rentohouse.com
 (8112704136)-, (81300220)-

Rigoberto G. Cantú González
Rigoberto G. Cantú González

 rig67cantu@hotmail.com

Rio Grande Bienes Raíces
Francisco Javier Guzmán Martínez

 francisco@riograndeworld.com.mx
 (044)-8113007376, (81)-20863539

ROCHA BIENES RAICES
Elvira Rocha Ríos

 rocharios@prodigy.net.mx

SANTOS BIENES RAICES
José Cayetano	Santos Gutiérrez

 jcayetano@santosbienesraices.com
 (81)-15220762, (81)-1522 0763

Select Regional Solutions
Alejandro Anaya Rosel

 alex-anaya@select-rs.com

Select Regional Solutions S de RL de CV
Ma. Magdalena Cortez Maycotte

 magdalena.cortez@selec-rs.com


Servicios Inmobiliarios Arreola y Asociados Santa Catartina, S.A de C.V.
Sr.Guadalupe Arreola Cantú

 joseg.arreola@hotmail.com
 (14760990)-

Servicios Profesionales Dieg-Mar
Cruz Acosta Presas

 esac.inmobiliaria@gmail.com

Servidesarrollo y Soluciones Integrales de México
Marco Aurelio Avila Martinez

 marco.a.avilamtz@gmail.com

Sinergia7 Bienes Raíces
 info@sinergia7.com
 (81)-21677070

Solución Hipotecaria
Adriana Patricia Martinez Vazquez

 adriana.9193@hotmail.com

State Inmobiliaria
Aragón Herrera Francisco Lic

 state.francisco@gmail.com

STEINBECK REAL ESTATE
Joaquin Alberto Renero Mejia

 joaquin.renero@gmail.com

Susana García Bienes Raíces
Susana Gloria García García

 sgarciagarciabr@gmail.com
 (811 601 08)-

TAURO ASESORES INMOBILIARIOS S.A DE C.V
ALEJANDRO DEL REAL IBAÑEZ

 informes@taurobienesraices.com.mx
 (0181)-83350390, (0181)-83350450

Territarea Bienes Raices
Rosa Maria Muñoz Sampayo

 rosy@territarea.com
 (81)-83683728, (81)-8115261731

Trato Hecho Si

TREVIÑO MANRIQUE Y ASOCIADOS
Jorge Eduardo Treviño Manrique

 jorgetreman@axtel.net

UBIKA INMUEBLES
Arturo Vázquez Ramos

 arturo@ubikainmuebles.com
 (81)-20867100, (81)-81359033

UPTOWN Real Estate Group, Inc,
Mariana Saldaña

 marianaenhouston@gmail.com

URBANINM
Jorge Federico De la Vega Cadena

 jorge@urbaninm.com

URBANINM
Alejandra Sarahi De León Garza

 alejandra@urbaninm.com

 
Urbanistika, SA de CV
César Rodríguez Hernandez

 crodriguez@metrofinanciera.com.mx

Val Proyectos y Desarrollos S.A. de C.V.
Ing. Valdés

 ihome.mty@gmail.com
 (8117989486)-

Val Proyectos y Desarrollos S.A. de C.V.
Francisco Javier Valdes Dominguez

 ihome.mty@gmail.com
 (8)-989 1970, 1931 9000

VENTA PROPIEDADES NUEVO LEON
Rafael Leal Flores

 ventapropiedadesnuevoleon@gmail.com

Victor Adrián Rangel de la Rosa
Victor Adrián Rangel de la Rosa

 vrangel@socasesores.com

VIVALIA, S.A. DE C.V.
Enrique Garcia

 brmty1@gmail.com

Vive Tu Casa Asesores,SA de CV
Manuel Garza Nieto

 manuel.garzanieto@bienesasesores.com
 50009074, (811)-5886697

Xell Bienes Raices
Maria Teresa Treviño Fernandez

 mariateresa@xell.com.mx

Zinko Inmuebles, S.A de C.V.
Israel Javier Lerma Velázquez

 israel@zinkoinmuebles.mx
 ((81))-83450611, 11559931
"

# PUEBLA

myString="UsuarioAguilar Machorro Ana Maria
Sección: Angelópolis Cholula
Email: amamgandhi@hotmail.com
 Más InformaciónTelefonos:
222 - 569-4635
222 - 455-2314
UsuarioArnal Cabrera María de Lourdes
Sección: Angelópolis Cholula
Email: arnalulu@gmail.com
 Más InformaciónTelefonos:
222 - 2488756
- Nx. 614 0311
222 - 212 7721
UsuarioCabrera Ramírez Maria Del Pilar
Sección: Angelópolis Cholula
Email: pilarcabrera7@yahoo.com.mx
 Más InformaciónTelefonos:
(222) - 304-4063
UsuarioCarrillo Escobar Jose Luis
Sección: Angelópolis Cholula
Email: terrenosocasas@gmail.com
 Más InformaciónTelefonos:
222 - 4301476
- ID 72*15*5711
- 222 455 6646
UsuarioCedeño Caballero Estefania
Sección: Angelópolis Cholula
Email: estefania@hanna.mx
 Más InformaciónTelefonos:
222 - 2222224
222 - 1162795
UsuarioDel Valle Jose Luis
Sección: Angelópolis Cholula
Email: pepedelvalle4@gmail.com
 197 Inmuebles  |  Más InformaciónTelefonos:
222 - 444 87 33
222 - 162 83 87
UsuarioDiaz Ortega Edgar
Sección: Angelópolis Cholula
Email: ediaz@ideasinmobiliarias.com
 97 Inmuebles  |  Más InformaciónTelefonos:
222 - 2103505
222 - 3588274
UsuarioGerala Mantilla José Antonio
Sección: Angelópolis Cholula
Email: jgerala_2000@yahoo.com
 Más InformaciónTelefonos:
01 222 - 320 66 29
UsuarioHaces Carvajal Rafael 
Sección: Angelópolis Cholula
Email: rhaces@pivasa.com.mx
 Más InformaciónTelefonos:
222 - 1568101
UsuarioHanna Lajud Andrea
Sección: Angelópolis Cholula
Email: andrea@hanna.mx
 Más InformaciónTelefonos:
222 - 2222224
229 - 9281939
UsuarioHernandez Mejia Jorge Adalberto
Sección: Angelópolis Cholula
Email: adal@urbinex.mx
 25 Inmuebles  |  Más InformaciónTelefonos:
222 - 2336252
222 - 6149532
222 - 1231536
UsuarioLeon Soriano Carolina
Sección: Angelópolis Cholula
Email: caroleons@yahoo.com.mx
 Más InformaciónTelefonos:
- 249-6990
- 2221360654
UsuarioLinden Forcelledo Jose Luis
Sección: Angelópolis Cholula
Email: joseluis@linden.com.mx
 107 Inmuebles  |  Más InformaciónTelefonos:
222 - 8 68 44 86
222 - 2 49 86 51
222 - 8 88 13 01
UsuarioMadrid Rendón Maria Teresa
Sección: Angelópolis Cholula
Email: avacomin@hotmail.com
 6 Inmuebles  |  Más InformaciónTelefonos:
(222) - 703-71-78
(222) - 226-78-14
045 222 - 547-56-55
UsuarioMalibrán Lacorte Blanca Alicia
Sección: Angelópolis Cholula
Email: malibranbr@yahoo.com.mx
 4 Inmuebles  |  Más InformaciónTelefonos:
222 - 2488756
222 - 2222127721
- Nx. 614-0311
UsuarioMalibran Lacorte Luz Elena 
Sección: Angelópolis Cholula
Email: luzmalibran@yahoo.com.mx
 Más InformaciónTelefonos:
222 - 2488756
- 4440004
UsuarioMalibran Lacorte Dulce Ma.
Sección: Angelópolis Cholula
Email: dulcemariamalibran@yahoo.com.mx
 Más InformaciónTelefonos:
222 - 8 92 15 00
045 - 22387820
UsuarioMenendez Priante José Ignacio
Sección: Angelópolis Cholula
Email: gerenciamenpri@gmail.com
 13 Inmuebles  |  Más InformaciónTelefonos:
- 240 0786 
- 240 0607
UsuarioMoreno Lagunes Emilio
Sección: Angelópolis Cholula
Email: emoreno@inviertem3.com
 Más InformaciónTelefonos:
01(222) - 2780449
044(222) - 7532779
UsuarioNachon Saldivar Carlos Alejandro 
Sección: Angelópolis Cholula
Email: carlos.nachon@emporioinmobiliario.mx
 Más InformaciónTelefonos:
222 - 85-61-07
222 - 120-92-45
 Peña Fuentes José Luis Bernardo
Sección: Angelópolis Cholula
Email: berme06@prodigy.net.mx
 27 Inmuebles  |  Más InformaciónTelefonos:
222 - 2641880
222 - 6140425
222 - 1998411
UsuarioPinzón González Victor Manuel
Sección: Angelópolis Cholula
Email: pinzongonzalezyasociados@yahoo.com
 Más InformaciónTelefonos:
(222) - 231 89 30
(222) - 231 89 31
UsuarioPinzón Erbes Adriana
Sección: Angelópolis Cholula
Email: ventas.pinzongonzalez@gmail.com
 Más InformaciónTelefonos:
- 231 8930, 231 8931
- Nx. 614 6282, ID 62*1024484*1
- Cel. 222 484 1563
UsuarioPUEBLA AMPI
Sección: Angelópolis Cholula
Email: contacto@ampiangelopolis.org.mx
 Más InformaciónTelefonos:
- - -
UsuarioRodriguez Pineda Margarita
Sección: Angelópolis Cholula
Email: margaritarodpin@hotmail.com
 7 Inmuebles  |  Más InformaciónTelefonos:
222 - 2218430
044 - 2224028850
UsuarioRomero Cortés Rafael Alberto
Sección: Angelópolis Cholula
Email: rarc30@yahoo.com
 8 Inmuebles  |  Más InformaciónTelefonos:
222 - 298 46 05
044 - 2222386890
UsuarioSaldivar Gomez Mayra De Jesus
Sección: Angelópolis Cholula
Email: may_smx@yahoo.com
 Más InformaciónTelefonos:
222 - 298 46 06
222 - 298 46 05
222 - 615 35 04
UsuarioSaldívar Gómez Ana Rosa
Sección: Angelópolis Cholula
Email: anrosa_sg@hotmail.com
 Más InformaciónTelefonos:
222 - 298-4606
222 - 2984605
- Nextel: 4441979
UsuarioSarti Navarro Héctor Manuel
Sección: Angelópolis Cholula
Email: hector@sartibienesraices.com.mx
 7 Inmuebles  |  Más InformaciónTelefonos:
222 - 2109352
044 - 2221605819
UsuarioSchneider Elmar
Sección: Angelópolis Cholula
Email: elmar@marelbr.mx
 Más InformaciónTelefonos:
01 - 2225692090
044 - 2221208356
UsuarioTorres Aguilar Alma
Sección: Angelópolis Cholula
Email: berme06@prodigy.net
 Más InformaciónTelefonos:
01 (222) - 233 33 29"

# CUERNAVACA

myString="UsuarioAguilar Rello Maria Teresa
Sección: Cuernavaca
Email: mayteaguilar@inmobiliarianatura.com.mx
 Más InformaciónTelefonos:
01 777 - 2427828
01 777 - 3020010
- 242 7828
UsuarioArcq Mañon Odette
Sección: Cuernavaca
Email: arcqyasociados@gmail.com
 Más InformaciónTelefonos:
777 - 315-3935
777 - 322 6283
777 - 234 9478
UsuarioBarragan Pérez Guadalupe
Sección: Cuernavaca
Email: lupitaroman@yahoo.com
 Más InformaciónTelefonos:
777 - 310 3730
777 - 310 0047
777 - 113 1306
UsuarioBelaunzarán Sánchez Santa Teresita
Sección: Cuernavaca
Email: camachobienesraices2@prodigy.net.mx
 Más InformaciónTelefonos:
735 - 398 1355
735 - 735 398 1752
UsuarioBenavides Beyer Francisco Salvador
Sección: Cuernavaca
Email: terranova17@hotmail.com
 Más InformaciónTelefonos:
777 - 3226279
777 - 3169354
- 044 777 5 87 84 33
UsuarioCaballero López Raúl
Sección: Cuernavaca
Email: caballerobr@hotmail.com
 Más InformaciónTelefonos:
- 314 5676
- 314 5677
551 - 0885318
UsuarioCamacho Cortes Ernesto
Sección: Cuernavaca
Email: bienesraicescamacho@prodigy.net.mx
 Más InformaciónTelefonos:
735 - 356 6638
735 - 356 7764
UsuarioCastillo Garcia Javier Jorge
Sección: Cuernavaca
Email: ventas@jcbienesraices.com
 Más InformaciónTelefonos:
01777 - 314 46 96
01777 - 314 46 97
01777 - 169 28 97
UsuarioCUE RUIZ MA. GUADALUPE
Sección: Cuernavaca
Email: cue@ampi.org
 Más InformaciónTelefonos:
- 0000000000
UsuarioCUERNAVACA AMPI
Sección: Cuernavaca
Email: contacto@ampicuernavaca.com.mx
 Más InformaciónTelefonos:
- - -
Usuariodcosta century21
Sección: Cuernavaca
Email: dcosta@century21dcosta.com
 Más InformaciónTelefonos:
- 316 1817
UsuarioDíaz Gamboa Jorge
Sección: Cuernavaca
Email: cocodigam@hotmail.com
 Más InformaciónTelefonos:
777 - 3135226
777 - 2896920
777 - 1887129
UsuarioDíaz Barriga Miranda Mónica
Sección: Cuernavaca
Email: inovarqdiba@yahoo.com.mx
 Más InformaciónTelefonos:
777 - 1023111
777 - 3636789
UsuarioEspinoza De Los Monteros Andrea Dolch
Sección: Cuernavaca
Email: Monterose@hotmail.com
 Más InformaciónTelefonos:
777 - 310 3730
UsuarioGarcía González J. Guillermo
Sección: Cuernavaca
Email: asespatrim@prodigy.net.mx.com
 Más InformaciónTelefonos:
- 318 18 44
- 119 02 77
- 52*225515*3
UsuarioGOMEZ HERRERA JORGE ALEJANDRO
Sección: Cuernavaca
Email: gomez@ampi.org
 Más InformaciónTelefonos:
- 000000000
UsuarioGómez Topete Josefina
Sección: Cuernavaca
Email: plusvaliabr@cableonline.com.mx
 Más InformaciónTelefonos:
- 318 5666
- 203 6187
- 62*13*76563
UsuarioGonzalez Palomares Jose Roberto
Sección: Cuernavaca
Email: Palomaresg@hotmail.com
 Más InformaciónTelefonos:
777 - 310 3730
UsuarioKettenhofen E. Martin
Sección: Cuernavaca
Email: bienes.raicesleal@hotmail.com.mx
 Más InformaciónTelefonos:
- 322 5050
- 203 6890
- ID 62*15*63129
UsuarioLarios Serrano Ismael
Sección: Cuernavaca
Email: informes@forsalecuernavaca.com
 Más InformaciónTelefonos:
777 - 3229523
777 - 2793549
ID - 62*365469*1
León Avalos Laura
Sección: Cuernavaca
Email: bienes.raicesleal@hotmail.com
 Más InformaciónTelefonos:
- 322 5050
- 203 6890
- ID62*15*63129
UsuarioLopez Quiroz Martina
Sección: Cuernavaca
Email: bienesraices.maran@live.com.mx
 Más InformaciónTelefonos:
735 - 3943610
55 - 29085629
735 - 5937562
UsuarioMartínez Casillas Georgina
Sección: Cuernavaca
Email: arcoirisbienesraices@live.com.mx
 Más InformaciónTelefonos:
01777 - 2891424 
ID - 92*13*57624
044 777 - 3283775
UsuarioMata Aguilar Karla
Sección: Cuernavaca
Email: karla@savbienesraices.com
 Más InformaciónTelefonos:
777 - 102-22-35
777 - 221-11-29
UsuarioMorales Rodriguez Hector
Sección: Cuernavaca
Email: hmorales@cima.mx
 Más InformaciónTelefonos:
777 - 3801734
777 - 3801734
- 1192293
UsuarioOvalles Contreras América
Sección: Cuernavaca
Email: amerova15@yahoo.com.mx
 Más InformaciónTelefonos:
- 317 2244
- 288 1568
- 52*15*5011
UsuarioPaganoni Zenteno Guadalupe 
Sección: Cuernavaca
Email: lupitapaganoni@hotmail.com
 Más InformaciónTelefonos:
- 1196174
- ID 52*15*23397
UsuarioPalavicini Pola Claudia
Sección: Cuernavaca
Email: claudiapalavicini@tabasco.gob.mx
 Más InformaciónTelefonos:
044 - 9932413199
UsuarioPavon Calderon Miguel
Sección: Cuernavaca
Email: previsionlegal@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 56712314
55 - 56712325
UsuarioPérez Santibañez Maria Del Rosario
Sección: Cuernavaca
Email: persanti@hotmail.com
 Más InformaciónTelefonos:
777 - 3135226
777 - 1887129
UsuarioPérez Izquierdo Alfredo Rafael
Sección: Cuernavaca
Email: rperezi@imsurbr.com
 Más InformaciónTelefonos:
- 317 2244
- 317 2220
- 62*15*24943
UsuarioRamírez Brugada Guadalupe Lucio
Sección: Cuernavaca
Email: avantec_inmobiliaria@yahoo.com.mx
 Más InformaciónTelefonos:
- 372 2277
- 311 9789
- 777 363 8005
UsuarioRangel Guzmán Gustavo
Sección: Cuernavaca
Email: grangel@svalmor.com
 Más InformaciónTelefonos:
777 - 318 2404
777 - 169-1371
UsuarioRevilla Flores David
Sección: Cuernavaca
Email: revillabienesraices@hotmail.com
 Más InformaciónTelefonos:
- 313 9793
- 169 2149
UsuarioRojas Nuñez Ismael
Sección: Cuernavaca
Email: constructora_ismael@hotmail.com
 Más InformaciónTelefonos:
01747 - 4710166
- 92*15*6246
- 045 74 74 98 06 99
UsuarioSalgado Castañeda Guillermo
Sección: Cuernavaca
Email: memosalgadoc@gmail.com
 Más InformaciónTelefonos:
777 - 3 22 30 60
UsuarioSanchez Ortiz Verónica
Sección: Cuernavaca
Email: vero_sanchez_0@yahoo.com.mx
 Más InformaciónTelefonos:
777 - 2427828
777 - 5644552
UsuarioSANCHEZ GLIKOWSKY BEATRIZ
Sección: Cuernavaca
Email: GLIKOWSKY@ampi.org
 Más InformaciónTelefonos:
- 000000000000
UsuarioSpencer Mitchell Allred Georgia 
Sección: Cuernavaca
Email: geospen@gmail.com
 Más InformaciónTelefonos:
777 - 310 3730
777 - 310 3671
777 - 328 2946
UsuarioSpencer Stevenson Steven H.
Sección: Cuernavaca
Email: stevespencer21@gmail.com
 Más InformaciónTelefonos:
777 - 310 3730
UsuarioVazquez Benitez Ing. Hugo
Sección: Cuernavaca
Email: hugo.vazquez@lacasaquequiero.com.mx
 Más InformaciónTelefonos:
777 - 1690814
777 - 3158433
UsuarioVilla McDowell Javier
Sección: Cuernavaca
Email: ventas@inmobiliariakey.com
 Más InformaciónTelefonos:
777 - 3235936
777 - 1730170
- Nx. 4332-4781, ID:62*194227*2
UsuarioWaugh Bárbara
Sección: Cuernavaca
Email: waugh@hotmail.com
 Más InformaciónTelefonos:
55 - 55664260"

# LEON

myString="Adhemar Salceda Ricardo 
Sección: León
Email: ricardo@hogare.mx
 Más InformaciónTelefonos:
477 - 2937300
477 - 3900240
UsuarioAguirre Torres Fernando
Sección: León
Email: rwporvenir@hotmail.com
 Más InformaciónTelefonos:
(477) - 4227764
- ID 52*329984*2
UsuarioAlamilla Romero Armando
Sección: León
Email: ventasalamilla@gmail.com
 Más InformaciónTelefonos:
477 - 711 7936
477 - 638 0869 
- ID52*145759*1
Usuarioampi leon admin 
Sección: León
Email: admin@ampileon.org
 Más InformaciónTelefonos:
- - -
UsuarioAtilano Zertuche Jorge
Sección: León
Email: jorge.atilan@gmail.com
 Más InformaciónTelefonos:
477 - 7171678
477 - 717 14 60
477 - 143 64 69
UsuarioBarba Blanco Alejandro 
Sección: León
Email: alejandro.barba@casasyterrenos.com
 Más InformaciónTelefonos:
33 - 3344 4072 Ext 61 
UsuarioBravo Reynoso Eduardo
Sección: León
Email: oficina@lalobravo.com
 Más InformaciónTelefonos:
477 - 779 1243
477 - 4707637
- •ID 52*131637*1
UsuarioCompean Flores Ma. Emilia
Sección: León
Email: emilia.asesor@mahersa.com.mx
 Más InformaciónTelefonos:
477 - 514 7009
477 - 514 3625
- ID 62*15*14637
UsuarioDE CHARBEL AYACHE CARRILLO EDNA MARIE
Sección: León
Email: ednamarie.ayache@icloud.com
 Más InformaciónTelefonos:
4747 - 2843693
Usuariode la Tejera Escudero Patricia 
Sección: León
Email: delatejerabr@prodigy.net.mx
 Más InformaciónTelefonos:
477 - 1044059
477 - 1221197
477 - 7922290
UsuarioESCAMILLA RAMOS NELBA MARCELA
Sección: León
Email: casas_ycasas@hotmail.com
 Más InformaciónTelefonos:
477 - 7706602
477 - 3062268
UsuarioEscuder Ruiz Diana
Sección: León
Email: diana@ruizyruiz.com.mx
 Más InformaciónTelefonos:
477 - 7701997
477 - 7133696
UsuarioEscuder Ruiz Claudia
Sección: León
Email: claudia@ruizyruiz.com.mx
 Más InformaciónTelefonos:
477 - 7701997
477 - 7133696
UsuarioEstrada Hermosillo Alberto 
Sección: León
Email: albertoestrada_bienesraices@hotmail.com
 Más InformaciónTelefonos:
01 477 - 7730110
UsuarioEstrada Reynoso Alberto Mario
Sección: León
Email: ami_bienes_raices@hotmail.com
 Más InformaciónTelefonos:
477 - 773-4333
477 - 773-4343
UsuarioFonseca Evelia
Sección: León
Email: lic_rosy_fonseca@hotmail.com
 Más InformaciónTelefonos:
477 - 147 2053 
477 - 638 6736
UsuarioGonzález Ochoa Juan Carlos
Sección: León
Email: industry@prodigy.net.mx
 Más InformaciónTelefonos:
472 - 722-3622
UsuarioGUERRERO REYNOSO SERGIO
Sección: León
Email: seguerreror@hotmail.com
 Más InformaciónTelefonos:
477 - 7373433
UsuarioGutiérrez Lozano María Araceli 
Sección: León
Email: aracelydobleclick@gmail.com
 Más InformaciónTelefonos:
(01 477) - 7 18 43 04
(01 477) - 147 01 55
- ID 52*54667*38
UsuarioGutiérrez Güitrón Juan Manuel 
Sección: León
Email: bienesraices@aacex.com
 Más InformaciónTelefonos:
(477) - 779 45 26
nextel - 6382620, ID 52*161990*1/*3
Hernández Martínez Jesús
Sección: León
Email: dp@viviendadelrincon.com
 Más InformaciónTelefonos:
477 - 1980500
477 - 1613605
477 - 7293878
UsuarioHernandez Orozco Pedro Antonio 
Sección: León
Email: pahopui@aol.com
 Más InformaciónTelefonos:
55 - 54517314
UsuarioJasso Moreno Jose Antonio
Sección: León
Email: jose.jasso@prodigy.net.mx
 Más InformaciónTelefonos:
477 - 5147009
477 - 5143625
UsuarioKornhauser Chávez Susana
Sección: León
Email: susanakornhauser@hotmail.com
 Más InformaciónTelefonos:
477 - 1225343
UsuarioLEÓN GARCIA ROGELIO ENRIQE
Sección: León
Email: leon.garcia.sc@me.com
 Más InformaciónTelefonos:
477 - 7130071
UsuarioLino Briones J Leonardo
Sección: León
Email: leonardolino@patrimonioi.com
 Más InformaciónTelefonos:
477 - 470 38 89
477 - 470 38 90
UsuarioLuna Juarez Ma. del Carmen 
Sección: León
Email: biluna@live.com.mx
 Más InformaciónTelefonos:
477 - 717 85 81
UsuarioMacedo Puebla José
Sección: León
Email: jmacedo6022@yahoo.com.mx
 Más InformaciónTelefonos:
477 - 7630316
477 - 1471875
UsuarioMena Ramirez Hugo Adolfo
Sección: León
Email: menah@ampi.org
 Más InformaciónTelefonos:
00 - 000
UsuarioMeneses Hector
Sección: León
Email: meneses29@gmail.com
 Más InformaciónTelefonos:
462 - 6534212
UsuarioMuñoz Gutierrez María Melissa
Sección: León
Email: mmg_78@yahoo.com.mx
 Más InformaciónTelefonos:
477 - 7296280
UsuarioObregón Serrano Héctor Martín
Sección: León
Email: hector@obregon.pro
 Más InformaciónTelefonos:
477 - 2112121
UsuarioPONCE FUENTES GABRIEL
Sección: León
Email: gabriel_14@hotmail.com
 Más InformaciónTelefonos:
477 - 1470391
477 - 2152100
UsuarioRamirez Juana Catalina
Sección: León
Email: lidercatyramirez@prodigy.net.mx
 Más InformaciónTelefonos:
(01 477) - 717 18 08 
477 - 217 50 54
477 - 727 08 16
UsuarioRamos Luis Alberto
Sección: León
Email: c21brysa@gmail.com
 Más InformaciónTelefonos:
477 - 717 56 50
477 - 325-5071
UsuarioRojas Isabel
Sección: León
Email: isaporvenir@gmail.com
 Más InformaciónTelefonos:
477 - 4227764
UsuarioRomero Tenorio Ivan
Sección: León
Email: iromero@vri.com.mx
 Más InformaciónTelefonos:
477 - 7115060
UsuarioRuiz Cisneros Ma. Herlinda
Sección: León
Email: herlinda@ruizyruiz.com
 Más InformaciónTelefonos:
477 - 7701997
477 - 147 2255
UsuarioRuiz Cisneros Sara Guadalupe
Sección: León
Email: ruiz_mitchell_inmobiliaria@hotmail.com
 Más InformaciónTelefonos:
477 - 217 55 47 
477 - 121 71 80
- ID 52*222*11852
UsuarioRuiz Chico Fidel
Sección: León
Email: fruizchico@infinance.com.mx
 Más InformaciónTelefonos:
462 - 1737080
UsuarioSada Castañeda Laura
Sección: León
Email: laurasada@ymail.com
 Más InformaciónTelefonos:
01 (477) - 241 97 67
- 62*247641*2
UsuarioSada Gómez Melesio Humberto
Sección: León
Email: msadabvc@prodigy.net.mx
 Más InformaciónTelefonos:
477 - 711-78-88
477 - 711-78-86
UsuarioSanchez Mendoza Mireya
Sección: León
Email: msm@espaciosoptimos.com.mx
 Más InformaciónTelefonos:
(01477) - 152- 9492
(01477) - 152 94 92
- 92*1029557*2
UsuarioSandoval Miranda José Luis
Sección: León
Email: sandovalinmobiliaria@yahoo.com.mx
 Más InformaciónTelefonos:
- 714 4516
UsuarioSEPÚLVEDA ARRIAGA FILEMON
Sección: León
Email: metrofolio.bienesraices@outloock.com
 Más InformaciónTelefonos:
477 - 3063864
UsuarioTraslaviña García Lorena 
Sección: León
Email: lorena_traslavina@yahoo.com.mx
 Más InformaciónTelefonos:
477 - 119-21-49
477 - 638-63-04
UsuarioValenzuela Quezada Elsa
Sección: León
Email: elsavaque@gmail.com
 Más InformaciónTelefonos:
477 - 1476826
- ID 52*201476*1
UsuarioVelázquez González Sergio
Sección: León
Email: direccion@inmobajio.mx
 Más InformaciónTelefonos:
477 - 7794940
477 - 1727767
477 - 7794942
UsuarioVieyra Anaya Luz Maria
Sección: León
Email: info@lumainmobiliaria.com
 Más InformaciónTelefonos:
477 - 713 5040
UsuarioZermeño de Obregón Ma. de la Luz 
Sección: León
Email: century21_magna@hotmail.com
 Más InformaciónTelefonos:
- 636 3780•3781•3782"

# TOLUCA

myString="UsuarioAguilar Castro Gabriela
Sección: Toluca
Email: gaguic@hotmail.com
 Más InformaciónTelefonos:
722 - 209 38 87
722 - 118 9912
UsuarioArce Ramírez Juan Carlos 
Sección: Toluca
Email: mexicasasinmo@hotmail.com
 Más InformaciónTelefonos:
01 (722) - 228 5086
UsuarioBernal Alcantara Laura
Sección: Toluca
Email: arual_ba@hotmail.com
 Más InformaciónTelefonos:
55 - 2708144 
55 - 2708341
UsuarioCAMACHO LAURO
Sección: Toluca
Email: camsal08@hotmail.com
 Más InformaciónTelefonos:
722 - 219 6355 / 6343
UsuarioDe Velasco Arizpe Ma. Amelia 
Sección: Toluca
Email: amelia@uniconbienesraices.com
 Más InformaciónTelefonos:
722 - 1802737
722 - 3052151 
- 52*256941*2
UsuarioEscamilla Hernández Miguel Ángel
Sección: Toluca
Email: maescamilla@unobienesraices.com.mx
 Más InformaciónTelefonos:
722 - 211 57 68
01 800 - 8306676
722 - 1644043
UsuarioFlores Alvarez Alejandro 
Sección: Toluca
Email: ventas@starhouse.com.mx
 Más InformaciónTelefonos:
(01)722 - 319-0420
(01)722 - 319-0421
(01)722 - 3052130
UsuarioJaimes Gorostieta Carlota
Sección: Toluca
Email: elfaroinmobiliaria@hotmail.com
 Más InformaciónTelefonos:
(01722) - 199 90 14
UsuarioPerez García Rosa María 
Sección: Toluca
Email: ideasdeinversion@prodigy.net.mx
 Más InformaciónTelefonos:
722 - 3188495
UsuarioRodríguez Saavedra Conrado Julio
Sección: Toluca
Email: conradojrs@hotmail.com
 Más InformaciónTelefonos:
(01722) - 223 49 18
(01722) - 305 1959
UsuarioRodríguez Sánchez Nancy
Sección: Toluca
Email: ideasdeinversion@hotmail.com
 Más InformaciónTelefonos:
01722 - 3188495
7225 - 362384
UsuarioSilva Rodríguez Noé Hilarión
Sección: Toluca
Email: integrasin@hotmail.com
 Más InformaciónTelefonos:
01 722 - 2809165
01 722 - 219 7964
UsuarioSilva Rodríguez Noé Hilarión
Sección: Toluca
Email: integrasin@hotmail.com.mx
 Más InformaciónTelefonos:
- 2 09 28 80
UsuarioSilva Rodríguez Noé Hilarión
Sección: Toluca
Email: integrasin@hotmail.com
 Más InformaciónTelefonos:
01 - 7222809165
01 - 7222197964
UsuarioVargas Velasco Jorge Luis 
Sección: Toluca
Email: towerhouseinmobiliaria@hotmail.com
 Más InformaciónTelefonos:
722 - 624 6775
722 - 379 32 80 
044 722 - 555 7692 
UsuarioVendrel Garcia Dionisio
Sección: Toluca
Email: dvendrellg@hotmail.com
 Más InformaciónTelefonos:
55 - 2708144 
55 - 2708341
UsuarioVilchis Mercado Walterio
Sección: Toluca
Email: walteriovilchis@prodigy.net.mx
 Más InformaciónTelefonos:
722 - 277 1000
01800 - 0004909
722 - 1680705
UsuarioVillegas Garcés Sergio Ricardo
Sección: Toluca
Email: ser_villegas@hotmail.com
 Más InformaciónTelefonos:
01 722 - 215 11 12
01 722 - 3 18 84 95"

# SAN MIGUEL DE ALLENDE
myString="UsuarioAcuña Ortiz Carlos Fernando
Sección: San Miguel De Allende
Email: info@atenearealty.com
 Mas InformaciónTeléfonos:
415 - 152 1337
415 - 152 0785
415 - 151 0101
UsuarioBarcal Joanie
Sección: San Miguel De Allende
Email: joanie@allendeproperties.com
 Mas InformaciónTeléfonos:
01 415 - 15 4 5000
USA 214 - 432 7558
415 - 153 3167
UsuarioCalderoni Ben
Sección: San Miguel De Allende
Email: ben@calderoniproperties.com
 Mas InformaciónTeléfonos:
415 - 1548164
415 - 1535417
UsuarioCházaro Cavero Eric
Sección: San Miguel De Allende
Email: eric.chazaro@kwmexico.mx
 Mas InformaciónTeléfonos:
415 - 154 4195 
415 - 154 4198
415 - 113 9812
UsuarioCHAZARO ALMEIDA ROXANA
Sección: San Miguel De Allende
Email: roxana@ampi.org
 Mas InformaciónTeléfonos:
55 - 55664260
UsuarioGleason Wesley
Sección: San Miguel De Allende
Email: agavesanmiguel@yahoo.com
 Mas InformaciónTeléfonos:
415 - 1522180
415 - 1141422
UsuarioHardcastle Philip
Sección: San Miguel De Allende
Email: philip@realtysanmiguel.com
 Mas InformaciónTeléfonos:
415 - 1858407
415 - 1858311
415 - 1539520
UsuarioHowze Nancy
Sección: San Miguel De Allende
Email: nancy@cdrsanmiguel.com
 Mas Información
UsuarioKelly Liz
Sección: San Miguel De Allende
Email: liz@cbsanmiguel.com
 Mas InformaciónTeléfonos:
(415) - 154 8531
(415) - 1526420
(415) - 107 0194
UsuarioLayne Blocker Peggy
Sección: San Miguel De Allende
Email: peggy@sanmiguel-mgmt.com
 Mas InformaciónTeléfonos:
415 - 152 44 16
UsuarioLoyola Rendón Graciela
Sección: San Miguel De Allende
Email: graciela@sanmiguel-mgmt.com
 Mas InformaciónTeléfonos:
415 - 152 44 16
415 - 1520187
UsuarioMACHADO CHRISTINA
Sección: San Miguel De Allende
Email: sanmiguelhome@aol.com
 Mas InformaciónTeléfonos:
(415) - 152 1903
(415) - 124 3912
UsuarioMancera Ortega Fernando
Sección: San Miguel De Allende
Email: fernando@cbsanmiguel.com
 Mas InformaciónTeléfonos:
415 - 107 0187
UsuarioMervin Herrera Michele John
Sección: San Miguel De Allende
Email: info@sanmiguel_mx.com
 Mas InformaciónTeléfonos:
01415 - 1522284
UsuarioMonterisi Luciano
Sección: San Miguel De Allende
Email: haciendalapresita@gmail.com
 Mas InformaciónTeléfonos:
415 - 1559691
415 - 1010452
UsuarioOrtiz Cabrera Daniel
Sección: San Miguel De Allende
Email: daniel@coldwellbankersmart.com
 Mas InformaciónTeléfonos:
01 - 415 152 31 97
UsuarioPesqueira Taunton Manuel
Sección: San Miguel De Allende
Email: bienesraices@sisal.com.mx
 Mas InformaciónTeléfonos:
442 - 223 6240
442 - 223 8285
442 - 3430144
UsuarioPesqueira Taunton Manuel
Sección: San Miguel De Allende
Email: manuel@sisal.com.mx
 Mas InformaciónTeléfonos:
442 - 223-8285
415 - 154-8944
442 - 3430144
UsuarioRamirez Martinez Alma Cecilia
Sección: San Miguel De Allende
Email: info@colonial-realestate.com
 Mas InformaciónTeléfonos:
415 - 154971
415 - 1544972
415 - 1521579
UsuarioRangel Bautista Rosalba
Sección: San Miguel De Allende
Email: ventasrentas@hotmail.com
 Mas InformaciónTeléfonos:
415 - 1544472
415 - 1010018
UsuarioReichert Erwit
Sección: San Miguel De Allende
Email: erwitr@gmail.com
 Mas InformaciónTeléfonos:
415 - 154 41 95
- US (513) 454 8236
415 - 153 52 55
UsuarioRubiera Gabriel
Sección: San Miguel De Allende
Email: gabriel@realtysanmiguel.com
 Mas InformaciónTeléfonos:
415 - 1010474
UsuarioSánchez Aude Adela
Sección: San Miguel De Allende
Email: candelasma@hotmail.com
 Mas InformaciónTeléfonos:
415 - 1521828
415 - 1523579
UsuarioSanchez A Chris 
Sección: San Miguel De Allende
Email: info@realestatecandela.com
 Mas InformaciónTeléfonos:
415 - 152 1828
UsuarioSimmons Lane
Sección: San Miguel De Allende
Email: lane@realestate-sma.com
 Mas InformaciónTeléfonos:
415 - 152 7363
UsuarioTaylor Ott Margaret Gibson
Sección: San Miguel De Allende
Email: info@lamargaritarealestate.com
 Mas InformaciónTeléfonos:
01415 - 1522893
415 - 5664658
UsuarioVidargas Ricardo
Sección: San Miguel De Allende
Email: ricardo@dottyvidargas.com
 Mas InformaciónTeléfonos:
415 - 1520286
415 - 1545731
713 - 5746829
"

# QUERETARO
myString="UsuarioAlba Hernandez Maria del Socorro
Sección: Querétaro
Email: c.alba@cemoza.com
 Más InformaciónTelefonos:
215 - 11 11
215 - 22 22
UsuarioAlbarran Luna Francisco
Sección: Querétaro
Email: ventas@sigmabienesraices.com
 Más InformaciónTelefonos:
442 - 148 2606
442 - 3274338
4422 - 2138350
UsuarioAvendaño Macedo Dinora
Sección: Querétaro
Email: dinora@realtyworld.com.mx
 Más InformaciónTelefonos:
442 - 223-34-36
442 - 343 10 61
UsuarioAyala Leal Alma Gabriela
Sección: Querétaro
Email: direccion@ayalabienesraices.com
 Más InformaciónTelefonos:
442 - 444 95 12
UsuarioBelisle Christine
Sección: Querétaro
Email: christine_belisle@hotmail.com
 Más InformaciónTelefonos:
442 - 4106381
UsuarioBurr Muro Glenn
Sección: Querétaro
Email: glennburr@remax.net
 Más InformaciónTelefonos:
442 - 294 54 54
UsuarioCampos Devine Cuauhtémoc Merlyn
Sección: Querétaro
Email: conexiondc@gmail.com
 Más InformaciónTelefonos:
01 (442) - 2658947 
UsuarioCarbonell Tapia Jorge Gabriel
Sección: Querétaro
Email: jcarbonell@prodigy.net.mx
 Más InformaciónTelefonos:
442 - 2 45 19 25
- ID 52*206288*1
442 - 1560736
UsuarioCasillas Villafranco Francisco
Sección: Querétaro
Email: gactivo@prodigy.net.mx
 Más InformaciónTelefonos:
442 - 214 15-35
442 - 1136 65 58
UsuarioCastro López Juan José
Sección: Querétaro
Email: jcastro@mileniotres.com
 Más InformaciónTelefonos:
442 - 2481698
442 - 2237032
442 - 2237033
UsuarioChacon Mancilla Antonio
Sección: Querétaro
Email: achaconubicart@hotmail.com
 Más InformaciónTelefonos:
01 442 - 2151649
UsuarioContreras Suarez Juan Ignacio
Sección: Querétaro
Email: ignaciocontrerasqro@gmail.com
 Más InformaciónTelefonos:
01442 - 2191846
UsuarioCordoba Vital Oscar
Sección: Querétaro
Email: ocordoba@promessa.com.mx
 Más InformaciónTelefonos:
442 - 2-12-80-77
UsuarioCuevas Ramírez Monica
Sección: Querétaro
 Más InformaciónTelefonos:
442 - 2-2365-75
UsuarioDavila Galindo Patiño Maria Ana
Sección: Querétaro
Email: davila.mariaana@gmail.com
 Más InformaciónTelefonos:
04555 - 35221740
045442 - 2049695
UsuarioDe la Camara Lara María de las Mercedes 
Sección: Querétaro
Email: mercedescamara@aaltimaxbienesraices.com
 Más InformaciónTelefonos:
01 442 - 148 81 93
UsuarioDe La Rocha Rivera Sergio
Sección: Querétaro
Email: delarocha_sergio@hotmail.com
 Más InformaciónTelefonos:
442 - 688-0805
442 - 226-2603
UsuarioEscamilla Gamboa Pamela
Sección: Querétaro
Email: contacto@escamillareynosore.com
 Más InformaciónTelefonos:
01 442 - 2010903
UsuarioEscobar Ibarra Alejandro
Sección: Querétaro
Email: alejandroe@remax.net
 Más InformaciónTelefonos:
442 - 348 02 02
UsuarioFernández Herrera Bertha
Sección: Querétaro
Email: trofimbr@yahoo.com
 Más InformaciónTelefonos:
442 - 2186240
UsuarioFlores Fernández Roberto
Sección: Querétaro
Email: rflores@promessa.com.mx
 Más InformaciónTelefonos:
442 - 2128077
- 212 76 44 
- Fax. 212 62 24
UsuarioFlores González Ana Laura
Sección: Querétaro
Email: alflores@promessa.com.mx
 Más InformaciónTelefonos:
442 - 2-12-80-77
UsuarioGarduño Rivera Jorge Manuel
Sección: Querétaro
Email: rivera@hotmail.com.mx
 Más InformaciónTelefonos:
- 0000000
UsuarioGarduño Soto Maria Isabel
Sección: Querétaro
Email: sgarduno@ampi.org
 Más InformaciónTelefonos:
.442 - .1270616
442 - 1230585
UsuarioGodoy Guevara Fernando Josué 
Sección: Querétaro
Email: godarq@gmail.com
 Más InformaciónTelefonos:
442 - 210 35 92
442 - 391 42 64
92*15* - 12 106
UsuarioGomez Bastida Pilar Gabriela 
Sección: Querétaro
Email: bastida@ampi.org
 Más InformaciónTelefonos:
- 4421361932
UsuarioGonzalez Alejos Jose Eric 
Sección: Querétaro
Email: gonbus@hotmail.com
 Más InformaciónTelefonos:
442 - 414 50 12
UsuarioGonzález Salas Diego Rodrigo
Sección: Querétaro
Email: diegog@promessa.com.mx
 Más InformaciónTelefonos:
442 - 2-12-80-77
UsuarioGonzález Rentería Maria del Pilar
Sección: Querétaro
Email: gonzalezrenteriamariadelpilar@gmail.com
 Más InformaciónTelefonos:
01(442) - 2482918
01 442 - 3221989
01442 - 1486801
UsuarioGonzález Franco Godoy Martín Ignacio
Sección: Querétaro
Email: mgf1607@gmail.com
 Más InformaciónTelefonos:
01 442 - 4674553
UsuarioGuadarrana Ruiz Rocio Betlehem
Sección: Querétaro
Email: Ruizg@hotmail.com
 Más InformaciónTelefonos:
442 - 2 45 24 94
UsuarioGuerrero Scott Rodolfo
Sección: Querétaro
Email: rguerrero@realtyworld.com.mx
 Más InformaciónTelefonos:
442 - 198 22 22
442 - 322 98 82
UsuarioGutièrrez Hernández Ivonne 
Sección: Querétaro
Email: igutierrez@imyinmobiliaria.com.mx
 Más InformaciónTelefonos:
442 - 2584662
442 - 4118743
UsuarioHerrera Vazaquez Rosalio 
Sección: Querétaro
Email: hgdesarrollos@hotmail.com
 Más InformaciónTelefonos:
- - -
UsuarioLedesma Torres Rogelio
Sección: Querétaro
Email: rledesma@promessa.com
 Más InformaciónTelefonos:
442 - 2128077
442 - 2127644
UsuarioLomelin Velasco Andres 
Sección: Querétaro
Email: cvqro@lomelin.net
 Más InformaciónTelefonos:
01(442) - 216-3394
UsuarioLópez Sánchez Alejandro 
Sección: Querétaro
Email: direccion@grupoals.com
 Más InformaciónTelefonos:
442 - 225 26 69
UsuarioMatas Llergo Antonio
Sección: Querétaro
Email: amatas@site1mex.com
 Más InformaciónTelefonos:
442 - 218 55 85
442 - 125 97 34
UsuarioMc Dowell Ramírez Elizabeth
Sección: Querétaro
Email: elizabeth_mcdowell@coldwellbankercentro.com.mx
 Más InformaciónTelefonos:
442 - 220 6324
442 - 246 15 88
UsuarioMolina Gómez Judith
Sección: Querétaro
Email: judithmolinag@grupoaltus.com.mx
 Más InformaciónTelefonos:
01 442 - 312 28 99
01 442 - 4110206
UsuarioMolina Gomez Judith
Sección: Querétaro
Email: judithmolinag@hotmail.com
 Más InformaciónTelefonos:
01 442 - 312 28 99
UsuarioMorelos Zaragoza Eichelmann Carlos Javier
Sección: Querétaro
Email: carlosjavier4@yahoo.com
 Más InformaciónTelefonos:
01-427 - 271-06-81
01-427 - 271-02-57
UsuarioMoya Gasca Alma Rosa
Sección: Querétaro
Email: alma64_mg@hotmail.com
 Más InformaciónTelefonos:
442 - 3913976
UsuarioN. Fry Alexander
Sección: Querétaro
Email: info@qpropiedades.com
 Más InformaciónTelefonos:
01 442 - 4671333
UsuarioNarro Vera Arnulfo
Sección: Querétaro
Email: anarro@mileniotres.com
 Más InformaciónTelefonos:
442 - 2481798
UsuarioNoriega Río Gloria
Sección: Querétaro
Email: invitta.br@prodigy.net.mx
 Más InformaciónTelefonos:
442 - 2140827
442 - 2128977
UsuarioNuñez Fry Alexander Paul
Sección: Querétaro
Email: alexander@qpropiedades.com
 Más InformaciónTelefonos:
442 - 4671333
UsuarioOlivar Hernández María Cristina
Sección: Querétaro
Email: cris.olivar@hotmail.com
 Más InformaciónTelefonos:
442 - 341 60 73
442 - 1731215
UsuarioPacheco Lopez Ma. Teresa
Sección: Querétaro
Email: tere_pl@yahoo.com.mx
 Más InformaciónTelefonos:
442 - 2-17-25-49
442 - 1-21-91-41
UsuarioPalacios Reyes Miguel Gonzalo
Sección: Querétaro
Email: ventas@yospi.com
 Más InformaciónTelefonos:
442 - 2242404
442 - 2242564
442 - 2242594
UsuarioParada Ampudia Elsa Martha
Sección: Querétaro
Email: elsaavanza@gmail.com
 Más InformaciónTelefonos:
01442 - 2187631
UsuarioParada Ampudia Dinora
Sección: Querétaro
Email: informes@avanzagi.com
 Más InformaciónTelefonos:
442 - 218 7631
442 - 199 0491
UsuarioPaulin Vargas Jose Trinidad
Sección: Querétaro
Email: ventasubicart09@yahoo.com.mx
 Más InformaciónTelefonos:
(442) - 182 2337/39
- ID 52*11150*3 y 5
442 - 4468242
UsuarioPless De Rivera Lily
Sección: Querétaro
Email: ventas@arkobienesraices.com
 Más InformaciónTelefonos:
442 - 2462392
UsuarioREYES MARTINEZ PEDRO ROBERTO
Sección: Querétaro
Email: prm88@hotmail.com
 Más InformaciónTelefonos:
442 - 340 31 05
55 - 54 38 37 77
UsuarioRivera De Garduño Ma. Teresa
Sección: Querétaro
Email: tererivera41@hotmail.com
 Más InformaciónTelefonos:
442 - 2-13 47 32
442 - 2264410
UsuarioRodríguez Snyder Christian Emmanuel
Sección: Querétaro
Email: ventas@cralinmobiliare.com
 Más InformaciónTelefonos:
01 (442) - 245 26 80
01 (442) - 245 26 75
UsuarioRojas Ayala Dulce Maria
Sección: Querétaro
Email: drinmobiliaria@prodigy.net.mx
 Más InformaciónTelefonos:
01(442) - 2451107
UsuarioRuiz Rodriguez Luis Daniel
Sección: Querétaro
Email: druiz@supraterra.com.mx
 Más InformaciónTelefonos:
01442 - 2294850 ext. 4845
045 - 4421060484
UsuarioSalamanca Riba Raúl Martín
Sección: Querétaro
Email: sayrobr@prodigy.net.mx
 Más InformaciónTelefonos:
442 - 2133030
442 - 2132111
442 - 3184132
UsuarioValerio Marqués Juan Francisco
Sección: Querétaro
Email: jvaleriom@gmail.com
 Más InformaciónTelefonos:
044 55 - 85336488
UsuarioValero Kühnert Adriane 
Sección: Querétaro
Email: ventascaminoreal@hotmail.com
 Más InformaciónTelefonos:
442 - 2 28 46 11
442 - 2 28 46 12
442 - 1 48 10 83
UsuarioVázquez Mellado Herrera Cosme
Sección: Querétaro
Email: cvmbienesraices1@live.com.mx
 Más InformaciónTelefonos:
442 - 2-24-22-46
442 - 2 14 53 63
UsuarioVázquez Mellado Herrera Cosme
Sección: Querétaro
Email: cvmbienesraices2@live.com.mx
 Más InformaciónTelefonos:
442 - 2242246
442 - 2145363
UsuarioVazquez Mellado Herrera Cosme
Sección: Querétaro
Email: cvmbienesraices@live.com.mx
 Más InformaciónTelefonos:
442 - 2242246
442 - 2145363
442 - 3227913
UsuarioVelázquez Mondragón María Eugenia
Sección: Querétaro
Email: maruvelmon@hotmail.com
 Más InformaciónTelefonos:
442 - 4117199
UsuarioVillalobos Caraveo Olivia
Sección: Querétaro
Email: ampiqueretaro@hotmail.com
 Más InformaciónTelefonos:
01 442 - 2142494
UsuarioVillalobos Valdes Juan Manuel
Sección: Querétaro
Email: consultoriatopografica@hotmail.com
 Más InformaciónTelefonos:
442 - 4110407
442 - 4115178
442 - 1241262
UsuarioVillalpando Arenzana Alejandro
Sección: Querétaro
Email: villalpando_alejandro@promobi.com.mx
 Más InformaciónTelefonos:
. - 3 12 25 60 
- 3 12 25 61
044 - 4421 30 79 65
UsuarioVillanueva Hernández Gloria
Sección: Querétaro
Email: yoglo34@hotmail.com
 Más InformaciónTelefonos:
442 - 2462392
442 - 2134732
442 - 2283343
UsuarioVillaseñor Zepeda Rodrigo
Sección: Querétaro
Email: rodrigo@siteinmobiliaria.com
 Más InformaciónTelefonos:
442 - 218 55 85 /
442 - 125 97 37
UsuarioVillicaña Sánchez Luz Maria
Sección: Querétaro
Email: lumavisa@hotmail.com
 Más InformaciónTelefonos:
442 - 2-12-80-77
UsuarioVillicana Villicana Alfredo
Sección: Querétaro
Email: century21inver@infosel.net.mx
 Más InformaciónTelefonos:
01(442) - 2236065
UsuarioZepeda Sterling Ernesto
Sección: Querétaro
Email: ernestozepeda@quality.com.mx
 Más InformaciónTelefonos:
442 - 161 26 07
"


myString="UsuarioArellano Y Alatriste Irma F. Gpe.
Sección: Ciudad De México
Email: alatristebienesraices@gmail.com
 Más InformaciónTelefonos:
- 5560855209
- 70922919
- 5549504774
UsuarioArelle David 
Sección: Ciudad De México
Email: davidarelle@gmail.com
 Más InformaciónTelefonos:
- -
UsuarioArgüero Licea Horacio
Sección: Ciudad De México
Email: century21larsa@yahoo.com.mx
 Más InformaciónTelefonos:
01 55 - 52641140
0155 - 52641213
UsuarioARISTOY OLIVOS MA. LOURDES DEL PILAR 
Sección: Ciudad De México
Email: mariluaristoy@hotmail.com
 Más InformaciónTelefonos:
- 43289975
- 66479377
- 0445529009675
UsuarioArizcorreta Y Guadalupe
Sección: Ciudad De México
Email: gpeariz@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 55667675
- 55467106
- 5527286066
UsuarioARRIAGA LICEA PABLO ISRAEL
Sección: Ciudad De México
Email: direccion@bnsmex.com
 Más InformaciónTelefonos:
- 5528557961
UsuarioArroyuelo De Pohls Gloria
Sección: Ciudad De México
Email: gap.inmobiliaria@gmail.com
 Más InformaciónTelefonos:
55 - 5611-1202
55 - 5419-3628
UsuarioARTEAGA LARA VICTOR MANUEL
Sección: Ciudad De México
Email: varteaga@international-goldenstoneservices.com
 Más InformaciónTelefonos:
- 5571079438
UsuarioASESORES INMOBILIARIOS VILLEGAS VENDE
Sección: Ciudad De México
Email: daniel@villegasvende.com.mx
 Más InformaciónTelefonos:
- 55112853
- 52074331
UsuarioAvactual SA de CV Inmobiliaria
Sección: Ciudad De México
Email: inmovillegas@yahoo.com.mx
 Más InformaciónTelefonos:
- 55502474 ext 105
- 04455 34952593
UsuarioAVILA HESLES JAVIER
Sección: Ciudad De México
Email: javier.avila@redlega.com
 Más InformaciónTelefonos:
- 5567197300
UsuarioBalleza Lozada Hugo Enrique
Sección: Ciudad De México
Email: rh@profesionaleshipotecarios.com
 Más InformaciónTelefonos:
55 - 35470453
55 - 35471650
UsuarioBARANDA SERRANO HILDA ARCELIA
Sección: Ciudad De México
Email: hbaranda@solarisinmobiliaria.com
 Más InformaciónTelefonos:
- 15566000
UsuarioBARBA PINGARRON ROBERTO
Sección: Ciudad De México
Email: roberto.barba@g1bap.com
 Más InformaciónTelefonos:
- 5554057724
UsuarioBARRA OCHOA PAOLA
Sección: Ciudad De México
Email: palebarra@hotmail.com
 Más InformaciónTelefonos:
- 5519530460
UsuarioBarragan Valencia Ramon
Sección: Ciudad De México
Email: barraganbr@hotmail.com
 Más InformaciónTelefonos:
55 - 55450528
UsuarioBARREIRO GÜEMES PLUTARCO JAVIER
Sección: Ciudad De México
Email: plutarco@barreirocorp.com
 Más InformaciónTelefonos:
- 56060909
UsuarioBARRIOS AZUARA LUIS ROBERTO
Sección: Ciudad De México
Email: luis.rob.bar@gmail.com
 Más InformaciónTelefonos:
- 55332190
UsuarioBarrios Gaxiola Roberto
Sección: Ciudad De México
Email: rbarriosgaxiola@hotmail.com
 Más InformaciónTelefonos:
55 - 5533 2190
55 - 5514 9573
UsuarioBasila Chemely Victor Manuel
Sección: Ciudad De México
Email: vmbasila@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56614177
55 - 56623340
fax - 56628582
UsuarioBAUTISTA ACOSTA MARIA DE LOS ANGELES
Sección: Ciudad De México
Email: bautista_promotores@yahoo.com.mx
 Más InformaciónTelefonos:
- 53793371
UsuarioBAUTISTA SANCHEZ CRISTOBAL FORTINO
Sección: Ciudad De México
Email: cbbautista@hotmail.com
 Más InformaciónTelefonos:
- 55304988
- 55384060
- 0445518494028
UsuarioBELTRAN Y ROMERO RAMIREZ ANTONIO ARTURO
Sección: Ciudad De México
Email: antonio.beltran@grupopatric.com
 Más InformaciónTelefonos:
- 5516407539
UsuarioBERGES VILLUENDAS AMALIA
Sección: Ciudad De México
Email: amalia.berges@ampidf.com.mx
 Más InformaciónTelefonos:
- 55114702
UsuarioBERKOWITZ OLVERA BEVERLY
Sección: Ciudad De México
Email: contacto@ibalinter.com
 Más InformaciónTelefonos:
- 56355607
- 56352944
UsuarioBermeo Vega Jorge Ignacio
Sección: Ciudad De México
Email: jorgeb@rwopus.com
 Más InformaciónTelefonos:
01 (55) - 56819252
01 (55) - 55957062
UsuarioBienes Raíces Cataño
Sección: Ciudad De México
Email: catano@catanomexico.com
 Más InformaciónTelefonos:
55 - 55684381
UsuarioBIENES RAÍCES ROZATI
Sección: Ciudad De México
Email: rozessat@gmail.com
 Más InformaciónTelefonos:
- 52912529
UsuarioBlanco Creixell Felipe
Sección: Ciudad De México
Email: paloma@blaxell.com
 Más InformaciónTelefonos:
01 (55) - 52801168
01 (55) - 52815395
UsuarioBOLAÑOS ESQUIVEL MARIA ERNESTINA 
Sección: Ciudad De México
Email: nesty_bolanos@hotmail.com
 Más InformaciónTelefonos:
- 56711815
- 5514879200
UsuarioBosch De los Rios Miguel
Sección: Ciudad De México
Email: miguel.b@consultarte.com.mx
 Más InformaciónTelefonos:
- 50899391
UsuarioBOY PINEDA ROBERTO GERARDO
Sección: Ciudad De México
Email: correo@boy.com.mx
 Más InformaciónTelefonos:
55 - 5604-0618
UsuarioBoy Rodríguez Sergio
Sección: Ciudad De México
Email: boyasociados@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56828261
55 - 54091854
UsuarioBreña Cantú Ma. Carmen
Sección: Ciudad De México
Email: info@mejorescasas.com
 Más InformaciónTelefonos:
55 - 56592643
55 - 56595831
UsuarioCABEZA GARCIA MARIA DEL PILAR
Sección: Ciudad De México
Email: propiedadesmapi@hotmail.com
 Más InformaciónTelefonos:
- 5550689055
UsuarioCABRERA MENA MARIO ALBERTO
Sección: Ciudad De México
Email: mario_cabrera54@hotmail.com
 Más InformaciónTelefonos:
- 56623737
UsuarioCALDERON RENERO MARIA EUGENIA
Sección: Ciudad De México
Email: marucalderon@marcainmobiliaria.com.mx
 Más InformaciónTelefonos:
- 5551050205
UsuarioCALDERON MUÑOZ DE COTE CATALINA
Sección: Ciudad De México
Email: catalina@hus.mx
 Más InformaciónTelefonos:
- 5538889069
UsuarioCAMARGO SUAREZ AURORA MARIA
Sección: Ciudad De México
Email: aucamargo@hotmail.com
 Más InformaciónTelefonos:
- 67284343
- 5538452426
UsuarioCAMPO BARRADA DE PORTE JOSEFINA 
Sección: Ciudad De México
Email: josefinaporte@gmail.com
 Más Información
 UsuarioCARACHEO LANGRUEN ANA MARIA
Sección: Ciudad De México
Email: ana.macl@hotmail.com
 Más InformaciónTelefonos:
- 2163-1326
- 5554 072914
UsuarioCarbajal Garcia Perla Esmeralda
Sección: Ciudad De México
Email: grupo.pcc.perla@gmail.com
 Más InformaciónTelefonos:
55 - 5171 0984
- 4607 6216
UsuarioCARDENAS MONTERO ERNESTO
Sección: Ciudad De México
Email: netocardenas05@hotmail.com
 Más InformaciónTelefonos:
- 56879777 
- 56879627
- 65964039
UsuarioCARPIO ORTIZ JONATHAN JAVIER
Sección: Ciudad De México
Email: jonathan.carpio@arcanoadmin.com
 Más InformaciónTelefonos:
- 46322039
UsuarioCarrillo Lavat Enrique A.
Sección: Ciudad De México
Email: e.carrillo@cmigrupo.com
 Más InformaciónTelefonos:
55 - 56312121/ 2499
UsuarioCarrillo Arrivillaga Eduardo
Sección: Ciudad De México
Email: directorgibosque@cablevision.net.mx
 Más InformaciónTelefonos:
55 - 568310027/ 1003 / 1007
UsuarioCASTAÑEDA AUDIFFRED ROBERTO
Sección: Ciudad De México
Email: rcastaneda@century21hg.com.mx
 Más InformaciónTelefonos:
- 16646750
UsuarioCASTAÑOS HERNANDEZ JOSE EDUARDO
Sección: Ciudad De México
Email: eduardo_castanos@yahoo.com.mx
 Más InformaciónTelefonos:
- 57053356
UsuarioCastellanos Romero Patricia Gabriela
Sección: Ciudad De México
Email: pgcasttell@hotmail.com
 Más InformaciónTelefonos:
- 56 04 30 71
- 19 94 46 69
- 55 38 46 84 11
UsuarioCASTRO ACOSTA ALVARO
Sección: Ciudad De México
Email: credesa0@gmail.com
 Más InformaciónTelefonos:
- 52071459
UsuarioCastro Flores Federico Israel
Sección: Ciudad De México
Email: castrofederico@gmail.com
 Más InformaciónTelefonos:
55 - 56795734
- 44373038
UsuarioCastro Salcedo Héctor Iván
Sección: Ciudad De México
Email: ivan@grupohabiterra.com.mx
 Más InformaciónTelefonos:
- 3618 2196
UsuarioCattori Alonso de Florida Pilar 
Sección: Ciudad De México
Email: pilar@inmobiliariacattori.com
 Más InformaciónTelefonos:
- 55502946
UsuarioCD. DE MEXICO AMPI 
Sección: Ciudad De México
Email: ampimex@prodigy.net.mx
 Más InformaciónTelefonos:
- 55114702
UsuarioCEBALLOS BARBERENA JOSE ALFREDO
Sección: Ciudad De México
Email: jaceballosb@hotmail.com
 Más InformaciónTelefonos:
- 56088684
- 89958699
UsuarioCHACON HERNANDEZ ROSAURA ALICIA
Sección: Ciudad De México
Email: rosaura.chacon@gmail.com
 Más InformaciónTelefonos:
- 5510172199
UsuarioCIBE INMOBILIARIA .
Sección: Ciudad De México
Email: angelicabarrerae@hotmail.com
 Más InformaciónTelefonos:
- 111111
UsuarioCIUDAD DE MÉXICO AMPI
Sección: Ciudad De México
Email: socios@ampidf.com.mx
 Más InformaciónTelefonos:
55 - 55114702
UsuarioCoello Diez De Bonilla Jose Antonio
Sección: Ciudad De México
Email: joseantonio.coello@56518000.com.mx
 Más InformaciónTelefonos:
0155 - 56518000
UsuarioCOMBE HUBBE JORGE 
Sección: Ciudad De México
Email: contacto@hubbe.mx
 Más Información
 UsuarioContreras Garduño Carmen
Sección: Ciudad De México
Email: ccontreras@cabienesraices.com
 Más InformaciónTelefonos:
55 - 41686333
55 - 43212629
55 - 30948495
UsuarioContreras Valois Angelica
Sección: Ciudad De México
Email: valuabienesraices@gmail.com
 Más InformaciónTelefonos:
- 36157887
- 53 35 35 40
- 044 55 19 11 20 96
UsuarioCONTRERAS OCAMPO ERNESTINA IVONNE
Sección: Ciudad De México
Email: e.ivonne_c.o@hotmail.com
 Más InformaciónTelefonos:
- 5528446310
UsuarioContreras Labarga Juan
Sección: Ciudad De México
Email: jcontreras@grupojacz.com
 Más InformaciónTelefonos:
55 - 24744225
55 - 24744225
UsuarioCOOK POLIN EVA LORENA
Sección: Ciudad De México
Email: evalorenacook@hotmail.com
 Más InformaciónTelefonos:
- 55502880
UsuarioCorany Abdallah Aly
Sección: Ciudad De México
Email: aly@coranypropiedades.com
 Más InformaciónTelefonos:
0155 - 2239 7377
55 - 8531 7777
UsuarioCordova Sanchez Karen
Sección: Ciudad De México
Email: karen.cordova@incasas.com.mx
 Más InformaciónTelefonos:
- 41614242
- 0445543543019
UsuarioCORTES INGUANZO MARGARITA
Sección: Ciudad De México
Email: mayecortes48@yahoo.com
 Más InformaciónTelefonos:
- 52518478
UsuarioCortina De Ostos Marta
Sección: Ciudad De México
Email: cortinaurbana@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 54374767
UsuarioCOVARRUBIAS HERRERA FERNANDO
Sección: Ciudad De México
Email: century21@covarrubias.com.mx
 Más InformaciónTelefonos:
- 55232090
UsuarioCOVARRUBIAS ESTRADA MARIA VIRGINIA
Sección: Ciudad De México
Email: vickycova@yahoo.com.mx
 Más InformaciónTelefonos:
- 55169591
UsuarioCRUCES GUTIERREZ OLGA
Sección: Ciudad De México
Email: olga@inmobiliariacruces.com
 Más InformaciónTelefonos:
- 46075075
UsuarioCUELLAR MERAZ ANGEL RICARDO
Sección: Ciudad De México
Email: vivebien@vivebien.mx
 Más InformaciónTelefonos:
- 55196469
UsuarioCUEVAS PEÑA FELIPE ALBERTO
Sección: Ciudad De México
Email: felipe_cuevas@prodigy.net.mx
 Más InformaciónTelefonos:
- 52020001
UsuarioDe Velázco Ana María
Sección: Ciudad De México
Email: azumar@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56633338
- 5662 4048
UsuarioDe la Mora Garcia Sainz Maria de Mater
Sección: Ciudad De México
Email: mater_bienesraices@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 56521177
55 - 56521174
UsuarioDE MIGUEL LONGEGA MARIA EUGENIA
Sección: Ciudad De México
Email: marudemiguel1@gmail.com
 Más InformaciónTelefonos:
- 16756465
UsuarioDe Pablo Serra Nuria
Sección: Ciudad De México
Email: depablo@realtyworld.com.mx
 Más InformaciónTelefonos:
- 5681 9252
- 5595 7062
UsuarioDel Valle Edgardo
Sección: Ciudad De México
Email: ventas@oscardelvalle.com.mx
 Más InformaciónTelefonos:
55 - 56823050
UsuarioDEL CASTILLO LANZ ENRIQUE
Sección: Ciudad De México
Email: ciprisa1@gmail.com
 Más InformaciónTelefonos:
55 - 55960884
55 - 55967825
UsuarioDel Castillo Velasco Lic. Magdalena
Sección: Ciudad De México
Email: inmobiliariadelcastillo@gmail.com
 Más InformaciónTelefonos:
55 - 56168060
55 - 56168061
04455 - 54136914
UsuarioDEL RINCON ARIZCORRETA PATRICIA
Sección: Ciudad De México
Email: patdelrincon@gmail.com
 Más InformaciónTelefonos:
- 52816568
UsuarioDEL RIO PINTADO ALFONSO 
Sección: Ciudad De México
Email: alfonso@century21eden.com
 Más InformaciónTelefonos:
- 56739093
UsuarioDel Valle Martinez Edgardo
Sección: Ciudad De México
Email: info@oscardelvalle.com.mx
 Más InformaciónTelefonos:
55 - 56823050
04455 - 54017467
UsuarioDELGADILLO ORTEGA RUBEN DARIO
Sección: Ciudad De México
Email: dariortega@msn.com
 Más InformaciónTelefonos:
- 49909186
- 5539096675
UsuarioDIAZ CASTRO ANA MARIA
Sección: Ciudad De México
Email: anadiaz@dicabr.com.mx
 Más InformaciónTelefonos:
- 36406081
- 36406082
UsuarioDIAZ GUERRERO MARTHA
Sección: Ciudad De México
Email: aybr_2000@yahoo.com.mx
 Más InformaciónTelefonos:
- 56016157
UsuarioDIAZ NAPOLES MIRIAM VERONICA
Sección: Ciudad De México
Email: diaznapoles@yahoo.es
 Más InformaciónTelefonos:
- 5541851941
UsuarioDIAZ HERNANDEZ OSCAR
Sección: Ciudad De México
Email: oscar@c21mx.com
 Más InformaciónTelefonos:
- 52516700
UsuarioDíaz Ruíz Francisco Jesús
Sección: Ciudad De México
Email: inmobamx@gmail.com
 Más InformaciónTelefonos:
- 55954895
- 5533329451
UsuarioDíaz Enríquez Francisco
Sección: Ciudad De México
Email: director@dien.com.mx
 Más InformaciónTelefonos:
55 - 55440040
55 - 55444405
UsuarioDOMINGUEZ ALBARRAN DAVID ISRAEL
Sección: Ciudad De México
Email: davidalbarrand@hotmail.com
 Más InformaciónTelefonos:
- 62735000
UsuarioDuarte Soto Luz Maria
Sección: Ciudad De México
Email: opcionesinmobiliarias@prodigy.net.mx
 Más InformaciónTelefonos:
0155 - 35402492
0155 - 14734582
0155 - 14734582
UsuarioDURAN CHAVEZ MAURICIO
Sección: Ciudad De México
Email: durarq@yahoo.com.mx
 Más InformaciónTelefonos:
- 13159486
- 55 51055954
UsuarioDURAN STRANSKY ALICIA 
Sección: Ciudad De México
Email: aliciaduran@prodigy.net.mx
 Más InformaciónTelefonos:
- 55898596
UsuarioESPINOSA DESIGAUD ALBERTO
Sección: Ciudad De México
Email: luxuryestates@coldwellbanker.com.mx
 Más InformaciónTelefonos:
- 47452139
UsuarioESPINOZA MANZO MARA G.
Sección: Ciudad De México
Email: info@trovatainmobiliaria.com
 Más InformaciónTelefonos:
- 65906016
- 20002661
- 5538881561
UsuarioESTRADA LILIANA
Sección: Ciudad De México
Email: liliana.estrada@ampidf.com.mx
 Más InformaciónTelefonos:
- 55114702
UsuarioESTRADA MEJIA RAUL
Sección: Ciudad De México
Email: confortivip@gmail.com
 Más InformaciónTelefonos:
55 - 55718636
55 - 31158804
UsuarioEstrada Gutierrez Lina
Sección: Ciudad De México
Email: contacto@apessa.com
 Más InformaciónTelefonos:
55 - 55455493
- 5254 8872
- 5531 7724
UsuarioFABIAN ARIAS MARA ISELA
Sección: Ciudad De México
Email: mfabian.not57@yahoo.com
 Más InformaciónTelefonos:
- 55360158
UsuarioFarias Y Baz Elena Lillian 
Sección: Ciudad De México
Email: nushaf@habitando.com.mx
 Más InformaciónTelefonos:
55 - 56116803
55 - 55634277
55 - 21066711
UsuarioFelgueres Cabestany Sergio
Sección: Ciudad De México
Email: remaxinterr@mail.com
 Más InformaciónTelefonos:
55 - 52923293
UsuarioFenoll Algorta Mariana
Sección: Ciudad De México
Email: mariana.fenoll@redhabitat.mx
 Más InformaciónTelefonos:
55 - 55935070
UsuarioFERNANDEZ IZZABEL
Sección: Ciudad De México
Email: izabel.fernandez@ampidf.com.mx
 Más InformaciónTelefonos:
- 55114702
UsuarioFernández Ibarra Marcela Blanca
Sección: Ciudad De México
Email: ibf@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 53963932
- 5341 0679
UsuarioFernández Molina Agustin
Sección: Ciudad De México
Email: gerencia@agibienesraices.com
 Más InformaciónTelefonos:
55 - 56824272 / 4478, 5687 5945
UsuarioFerrer De Pulido Ana Laura
Sección: Ciudad De México
Email: pulidoac@prodigy.net.mx
 Más InformaciónTelefonos:
0155 - 55933753, 5680 7959
UsuarioFigueroa Márquez David
Sección: Ciudad De México
Email: dfmnot57@infosel.net.mx
 Más InformaciónTelefonos:
55 - 55360158/ 7433
UsuarioFigueroa Mondragón Ma. Berta
Sección: Ciudad De México
Email: bertafimo@hotmail.com
 Más InformaciónTelefonos:
55 - 52728143/ 8182
UsuarioFLORES ARAIZA LAURA
Sección: Ciudad De México
Email: certificacion@ampidf.com.mx
 Más InformaciónTelefonos:
- 55114702
UsuarioFONSECA CASTELLANOS JACQUELINE
Sección: Ciudad De México
Email: jfonseca@funcionpublica.gob.mx
 Más InformaciónTelefonos:
01 55 - 47802300
01 55 - 47802200
01 55 - 55632699
UsuarioFreixas Basarte Pedro
Sección: Ciudad De México
Email: laurbana@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 55464932
55 - 55464953
UsuarioFuentes Castillo René
Sección: Ciudad De México
Email: renefuentes@renefuentes.com
 Más InformaciónTelefonos:
55 - 56884040
UsuarioGallardo Garcia Julio Cesar
Sección: Ciudad De México
Email: cgallardo@mintinmobiliaria.com
 Más InformaciónTelefonos:
55 - 54241515
55 - 52770530 
04455 - 27372358
UsuarioGándara Arizti Luis
Sección: Ciudad De México
Email: lgandara48@yahoo.com
 Más InformaciónTelefonos:
55 - 52118030
04455 - 54341142
UsuarioGarcía De Funes Lilia Nelly
Sección: Ciudad De México
Email: josefina@fugar.com.mx
 Más InformaciónTelefonos:
55 - 52645330
55 - 52640296
55 - 52645416
UsuarioGARCIA PANDO ADRIANA MEGUMI
Sección: Ciudad De México
Email: amegumig@gmail.com
 Más InformaciónTelefonos:
- 50060921
UsuarioGARCIA ALVAREZ MARCELINO JOSE
Sección: Ciudad De México
Email: marcelino.garcia.alvarez@gmail.com
 Más InformaciónTelefonos:
- 5554337354
UsuarioGARCIA FERNANDEZ MARIA ANTONIA MATILDE
Sección: Ciudad De México
Email: antonia.garcia@imprendere.com.mx
 Más Información
 UsuarioGARCIA FERNANDEZ MARIA DEL ROCIO RAFAELA
Sección: Ciudad De México
Email: rocio.garcia@imprendere.com.mx
 Más InformaciónTelefonos:
- 53353338
UsuarioGarcía Colín María Del Pilar
Sección: Ciudad De México
Email: oportunidadeseninmuebles@hotmail.com
 Más InformaciónTelefonos:
01 (55) - 59264100
UsuarioGARCIA COSSIO CARMEN
Sección: Ciudad De México
Email: carmengarcia@inmobiliarianavel.com
 Más InformaciónTelefonos:
55 - 55687690
- 55687050
UsuarioGARCIA GUTIERREZ CLADIA 
Sección: Ciudad De México
Email: cgg@terra.metropolitana.com.mx
 Más InformaciónTelefonos:
- 5548006955
UsuarioGarcía Santisteban Eugenio
Sección: Ciudad De México
Email: moranyzaldivar1@prodigy.net
 Más Información
UsuarioGarcía Rojas Castillo Susana
Sección: Ciudad De México
Email: sgarcia@suribienesraices.com.mx
 Más InformaciónTelefonos:
- 11647296 
UsuarioGarizurieta Tejada Cristina
Sección: Ciudad De México
Email: inarrcon@gmail.com
 Más InformaciónTelefonos:
01 (55) - 55500210
- 04455-10799638
UsuarioGirard Guzmán Bertha Mercedes
Sección: Ciudad De México
Email: girard_bertha@yahoo.com.mx
 Más InformaciónTelefonos:
044 - 55 1507 9353 
UsuarioGómez Monroy Salvador
Sección: Ciudad De México
Email: gocasa1@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 55284656
UsuarioGOMEZ PEREZ JOSE
Sección: Ciudad De México
Email: inmobiliaria@monteprincipe.com.mx
 Más InformaciónTelefonos:
- 5528106322
UsuarioGOMEZ QUEZADA ALEJANDRA
Sección: Ciudad De México
Email: directora.trebol@hotmail.com
 Más InformaciónTelefonos:
01 (55) - 43366227
01 (55) - 53350663
UsuarioGOMEZ GUEVARA GUADALUPE 
Sección: Ciudad De México
Email: ggomez@iagsa.com.mx
 Más InformaciónTelefonos:
- 56056953
UsuarioGOMEZ TELLEZ ANTONIO
Sección: Ciudad De México
Email: agotellez@hotmail.com
 Más InformaciónTelefonos:
- 55960019
- 17937689
UsuarioGOMEZ VAZQUEZ JOSE LUIS
Sección: Ciudad De México
Email: jlgomez@coldwellbanker.com.mx
 Más InformaciónTelefonos:
- 21677020
UsuarioGÓMEZ MONTES DE OCA YVETTE ADRIANA
Sección: Ciudad De México
Email: yvette@lhlvende.com
 Más InformaciónTelefonos:
- 49812754
UsuarioGonzalez Fragoso Rafael Hector
Sección: Ciudad De México
Email: rgonzalez@rgasesores.com.mx
 Más InformaciónTelefonos:
- 52005270
UsuarioGonzalez Gasque Maria Concepcion
Sección: Ciudad De México
Email: cgonzalez@remaxrc.com.mx
 Más InformaciónTelefonos:
- 55631314
- 55660004
- 56159593
UsuarioGONZALEZ GRANADOS LIC. HUMBERTO JOSE
Sección: Ciudad De México
Email: humbertojosegg@gmail.com
 Más InformaciónTelefonos:
0155 - 55116602
0155 - 30922667
04455 - 36728940
UsuarioGonzález Vallejo Alejandro
Sección: Ciudad De México
Email: agvallejo@zona04.com
 Más InformaciónTelefonos:
55 - 90003548
UsuarioGonzález Salazar Fernando
Sección: Ciudad De México
Email: fgonzalez@remaxplus.com.mx
 Más InformaciónTelefonos:
0155 - 52813881
- 5281 3838
UsuarioGonzález Montesinos Diego
Sección: Ciudad De México
Email: rgarcia@gonzalezmontesinos.com.mx
 Más InformaciónTelefonos:
- 55300771/ 4300 / 0986
UsuarioGonzález Montesinos Alejandro
Sección: Ciudad De México
Email: gonzalezmontesinos@yahoo.com
 Más InformaciónTelefonos:
55 - 55439274
- 5523 1806
UsuarioGONZALEZ RONDON JOSE FERNANDO
Sección: Ciudad De México
Email: jose.gonzalez@cushwake.com
 Más InformaciónTelefonos:
- 85258000
UsuarioGonzalez Vazquez Rodolfo
Sección: Ciudad De México
Email: rodolfogonzalezvazquez@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 13638184
04455 - 31972429
UsuarioGONZALEZ CAMACHO CLAUDIA
Sección: Ciudad De México
Email: cgonzalez@domum.com.mx
 Más InformaciónTelefonos:
- 10859880 
- 36175486
UsuarioGORDOA MONDRAGON EDUARDO
Sección: Ciudad De México
Email: egordoa@banleyasociados.com.mx
 Más InformaciónTelefonos:
- 55249339
UsuarioGRAMAJO DORANTES OSCAR RAUL
Sección: Ciudad De México
Email: oscar@proteccionjuridica.com.mx
 Más InformaciónTelefonos:
- 65987710
UsuarioGraue Russek Carlos
Sección: Ciudad De México
Email: cgraue3@hotmail.com
 Más InformaciónTelefonos:
55 - 56871711/ 1713
UsuarioGRUPO RIAL Nelly 
Sección: Ciudad De México
Email: gruporial@hotmail.com
 Más InformaciónTelefonos:
55 - 56729775
- 5672 99 90
UsuarioGUIJARRO ZARATE ROBERTO
Sección: Ciudad De México
Email: roberto@c21mx.com
 Más InformaciónTelefonos:
- 52516700
UsuarioGuizar Reyes Raúl Jesús
Sección: Ciudad De México
Email: guizar@quality.com.mx
 Más InformaciónTelefonos:
55 - 56113081
UsuarioGuizar Reyes Ricardo
Sección: Ciudad De México
Email: carmentorres@quality.com.mx
 Más InformaciónTelefonos:
55 - 56643535
UsuarioGutíerrez Llaguno Antonio
Sección: Ciudad De México
Email: acro@coldwellbanker.com.mx
 Más InformaciónTelefonos:
55 - 52778366
UsuarioGutiérrez Juan Lorenzo
Sección: Ciudad De México
Email: juanlorenzogtz@gmail.com
 Más InformaciónTelefonos:
55 - 2455.1449
55 - 2455.1450
UsuarioGUZMAN RAMIREZ MARIA VIRGINIA
Sección: Ciudad De México
Email: vg.gilterralopezyasociados@gmail.com
 Más InformaciónTelefonos:
(0155) - 56312783
UsuarioHENRIQUEZ DIAZ XIOMARA GUADALUPE
Sección: Ciudad De México
Email: xiomara@century21encuentra.com
 Más InformaciónTelefonos:
- 63894440
UsuarioHerman Arizcorreta Rosa María
Sección: Ciudad De México
Email: rosemaryherman@hotmail.com
 Más InformaciónTelefonos:
0155 - 55467106
- 5566 7675
- 5591 0465
UsuarioHERNANDEZ CHAVEZ REGINA AIDA
Sección: Ciudad De México
Email: reggieh79@hotmail.com
 Más InformaciónTelefonos:
- 51052437
UsuarioHernández Gutiérrez Víctor Hugo
Sección: Ciudad De México
Email: info@alternativainmobiliaria.mx
 Más InformaciónTelefonos:
55 - 91835421
55 - 23005822
UsuarioHERNANDEZ CARIÑO AURORA
Sección: Ciudad De México
Email: aurora@broahespacios.com
 Más InformaciónTelefonos:
55 - 67255726
044 - 5531001080
UsuarioHernandez Zamudio Jose Francisco
Sección: Ciudad De México
Email: jfco8@hotmail.com
 Más InformaciónTelefonos:
- 55341666/ 2343
UsuarioHERNANDEZ LUNA FIDEL 
Sección: Ciudad De México
Email: fhernandez@glibinmobiliaria.com.mx
 Más InformaciónTelefonos:
55 - 67989701
55 - 65500585
55 - 65500584
UsuarioHernandez Berezaluce Rogelio De Jesús
Sección: Ciudad De México
Email: rhernandez@larrabezua.com.mx
 Más InformaciónTelefonos:
- 57511620
UsuarioHERNANDEZ ZAMUDIO LUIS ALBERTO
Sección: Ciudad De México
Email: lhernandez@tresvidas.mx
 Más InformaciónTelefonos:
- 5522426924
UsuarioHernández Jiménez Leonila
Sección: Ciudad De México
Email: leonila.hernandez@ampidf.com.mx
 Más InformaciónTelefonos:
01 55 - 55 11 47 02
UsuarioHERNANDEZ GUERRERO HECTOR
Sección: Ciudad De México
Email: hector.hernandez@misioninmobiliaria.com
 Más InformaciónTelefonos:
- 5551735879
UsuarioHerrera Roque Arturo
Sección: Ciudad De México
Email: aherrerar@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 52601287
55 - 52601441
UsuarioHERRERA VILORIA MYRIAM
Sección: Ciudad De México
Email: ventas.df@bosinmobiliaria.com.mx
 Más InformaciónTelefonos:
- 01 800 253 2530
UsuarioHERRERA DE LA FUENTE LETICIA ESTELA
Sección: Ciudad De México
Email: leticiaherreradelafuente@gmail.com
 Más InformaciónTelefonos:
- 90000090
UsuarioHINOJOSA SALINAS CLAUDIA MARCELA
Sección: Ciudad De México
Email: marcelahinojosa@adelanto.mx
 Más InformaciónTelefonos:
55 - 91171717
55 - 41942268
UsuarioHOFFMAN TORRES LIC. NORMA
Sección: Ciudad De México
Email: norma_hoffman@gruposoho.com.mx
 Más InformaciónTelefonos:
0155 - 5684 2222
0155 - 56773680
- 04455 2895 7336
UsuarioHoloschutz Yutkewich Isaac
Sección: Ciudad De México
Email: zenix.2015@hotmail.com
 Más InformaciónTelefonos:
55 - 5255-4545/ 3344
UsuarioIbañez Trueba Cristina
Sección: Ciudad De México
Email: inmobiliariaindigo@gmail.com
 Más InformaciónTelefonos:
55 - 55644032
UsuarioJasqui Amiga Jacobo
Sección: Ciudad De México
Email: iproname@prodigy.net.mx
 Más InformaciónTelefonos:
- 52503699
- 5254 0871
UsuarioJIMENEZ ALVARADO OMAR
Sección: Ciudad De México
Email: omarjial@hotmail.com
 Más InformaciónTelefonos:
- 5517323406
- 57053356 - 70
UsuarioJUAREZ HERRERA MARIO ALBERTO
Sección: Ciudad De México
Email: majh_48@hotmail.com
 Más InformaciónTelefonos:
- 59166948
UsuarioKoleff Koleff Jorge
Sección: Ciudad De México
Email: jorge.koleff@century21mexico.com
 Más InformaciónTelefonos:
- 52516700
UsuarioKunz Bolaños Adolfo
Sección: Ciudad De México
Email: kunz@kasa-bienesraices.com
 Más InformaciónTelefonos:
- 55335575
UsuarioKUNZ ARRACHE GABRIELA
Sección: Ciudad De México
Email: gkunz1@kasa-bienesraices.com
 Más InformaciónTelefonos:
55 - 55335575
UsuarioKuri Pheres Alejandro
Sección: Ciudad De México
Email: aka@terra.com.mx
 Más InformaciónTelefonos:
55 - 56879777
55 - 43257434
55 - 54062322
UsuarioKuri Salem Toni
Sección: Ciudad De México
Email: tk@remaxtk.com
 Más InformaciónTelefonos:
55 - 52451486
04455 - 18498371
UsuarioLachica Bravo Victor
Sección: Ciudad De México
Email: victor.lachica@cushwake.com
 Más InformaciónTelefonos:
- 85258000
- 8525 8042
UsuarioLadñakova Chudobova Anezka
Sección: Ciudad De México
Email: contacto@ladnakgi.com
 Más InformaciónTelefonos:
55 - 31843776
UsuarioLARA GONZALEZ PATRICIA LOURDES 
Sección: Ciudad De México
Email: patyomega@hotmail.com
 Más InformaciónTelefonos:
- 5526530978
UsuarioLEAL NUCHE MARIA ELENA
Sección: Ciudad De México
Email: contacto@helenbienesraices.com
 Más InformaciónTelefonos:
- 47523107
- 65959820
UsuarioLEAL DIAZ CONTI JOSE DANIEL GERARDO DL. S. C. D. J.
Sección: Ciudad De México
Email: daledicon@hotmail.com
 Más InformaciónTelefonos:
- 70290494
UsuarioLEE MILANES DANIEL
Sección: Ciudad De México
Email: dlee@jjarquitecturaespecial.com.mx
 Más InformaciónTelefonos:
- 55187526
UsuarioLEMUS PALACIOS MA. LETICIA
Sección: Ciudad De México
Email: leticia@mintinmobiliaria.com
 Más InformaciónTelefonos:
- 54241515
UsuarioLEO PRIEGO KARLA LETICIA
Sección: Ciudad De México
Email: karlaleo@ga-bethousing.com
 Más InformaciónTelefonos:
- 53539200
044 - 5518003815
UsuarioLeón Suárez Alejandra
Sección: Ciudad De México
Email: aleleonsuarez@hotmail.com
 Más InformaciónTelefonos:
55 - 55285918
UsuarioLEON MEJIA REBECA
Sección: Ciudad De México
Email: proyectaleo@hotmail.com
 Más InformaciónTelefonos:
- 63631380
- 63631381
UsuarioLEON CAMARGO ALEJANDRA
Sección: Ciudad De México
Email: alejandra179@hotmail.com
 Más InformaciónTelefonos:
- 55 52179827
UsuarioLEVY ECHEVERRIA MAURO JESUS
Sección: Ciudad De México
Email: mlevy@century21hg.com.mx
 Más InformaciónTelefonos:
- 16646750
UsuarioLizano Soberon Edgar Francisco
Sección: Ciudad De México
Email: elcartago21@yahoo.com.mx
 Más InformaciónTelefonos:
- 5550726259
UsuarioLomax+Covarrubias Century
Sección: Ciudad De México
Email: century21lomax@covarrubias.com.mx
 Más InformaciónTelefonos:
55 - 5523-2099
55 - 5202-8888
UsuarioLomelin Anaya Ausencio
Sección: Ciudad De México
Email: alomelin@lomelin.com.mx
 Más InformaciónTelefonos:
- 25810300
UsuarioLomelin Enrique Gustavo
Sección: Ciudad De México
Email: glomelin@lomelin.com.mx
 Más InformaciónTelefonos:
55 - 25810335
UsuarioLomelin Anaya Francisco Javier
Sección: Ciudad De México
Email: Javier.Lomelin@colliers.com
 Más InformaciónTelefonos:
0155 - 52093636
UsuarioLomelin Anaya José Pedro
Sección: Ciudad De México
Email: jplomelin@lomelin.com.mx
 Más InformaciónTelefonos:
0155 - 25810388
UsuarioLOPEZ RODRIGUEZ IZAROL MARISEL
Sección: Ciudad De México
Email: i.marisel.l@gmail.com
 Más InformaciónTelefonos:
- 3111022526
Seleccione una categoría:
 STAFF AMPI CD. DE MÉXICO
 Consejo de Directores Ciudad de México
 Comunicación y relaciones públicas
 Asociados
 Afiliados

Nombre /Apellido /Email: 
    Buscar

Total: 408
Páginas: Primero Anterior 8 9 10 11 12 13 14 15 16 17 Siguiente Último
UsuarioLópez Cano Juan Jaime
Sección: Ciudad De México
Email: juanjaime2006@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 55146360
55 - 5863 4397
UsuarioLOPEZ ESPINOSA MARIA EDNA
Sección: Ciudad De México
Email: stenza.mexico@hotmail.com
 Más InformaciónTelefonos:
- 5541425512
UsuarioLOPEZ SERNA GONZALO
Sección: Ciudad De México
Email: gonzalol@kassiapatrimonial.com
 Más InformaciónTelefonos:
- 52764987
- 0445545407955
UsuarioLOZANO OLEA OSCAR JAVIER 
Sección: Ciudad De México
Email: olozano44@yahoo.com.mx
 Más InformaciónTelefonos:
- 55 54 0181 98
UsuarioMadariaga Lomelín Luis Domingo
Sección: Ciudad De México
Email: ldmadariaga@livrealty.mx
 Más InformaciónTelefonos:
- 5442 9999 
UsuarioMadariaga Audifred Luis Horacio
Sección: Ciudad De México
Email: luis_madariaga@terra.com.mx
 Más InformaciónTelefonos:
01 55 - 52760200
- 5272 3600
UsuarioMADARIAGA BARRILADO RODRIGO
Sección: Ciudad De México
Email: rmadariaga@pumasa.com.mx
 Más InformaciónTelefonos:
- 54427777
UsuarioMANRIQUE VILA MARCELA
Sección: Ciudad De México
Email: homehabit@hotmail.com
 Más InformaciónTelefonos:
- 54251432
UsuarioMANZUR CORTES MARIA VENESSA
Sección: Ciudad De México
Email: vanessamanzur@yahoo.com
 Más InformaciónTelefonos:
- 5513576474
UsuarioMARISCAL HOOD SANTIAGO JAVIER
Sección: Ciudad De México
Email: santiago.mariscalrealestate@gmail.com
 Más InformaciónTelefonos:
- 55701898
UsuarioMartin Del Fernando A.
Sección: Ciudad De México
Email: fernando@century21mexico.com
 Más InformaciónTelefonos:
- 52516700
UsuarioMARTIN DEL CAMPO DAVILA IANIRA
Sección: Ciudad De México
Email: ianira@prodigy.net.mx
 Más InformaciónTelefonos:
- 5539843633
UsuarioMARTIN DEL CAMPO GARCIA FERNANDO ALONSO
Sección: Ciudad De México
Email: fernando@c21mx.com
 Más InformaciónTelefonos:
- 52516700
UsuarioMARTINEZ MACIAS KELLY
Sección: Ciudad De México
Email: kmbienesraices@gmail.com
 Más InformaciónTelefonos:
- 90001719
UsuarioMartinez Velasco Leticia
Sección: Ciudad De México
Email: leticiamartinez@quality.com.mx
 Más InformaciónTelefonos:
- 53960491
UsuarioMARTINEZ LARA MIGUEL ANGEL
Sección: Ciudad De México
Email: ventas@century21hogar.com
 Más InformaciónTelefonos:
- 67195000
UsuarioMARTINEZ GIRON MARIO ALEJANDRO
Sección: Ciudad De México
Email: mgservicioinmobiliario@yahoo.com.mx
 Más InformaciónTelefonos:
- 55248780
- 55345944
- 5545205574
UsuarioMARTINEZ SALAZAR ISIDRO GENARO
Sección: Ciudad De México
Email: igsalazar52@yahoo.com.mx
 Más InformaciónTelefonos:
- 10908832
UsuarioMartínez Ochoa Aurora
Sección: Ciudad De México
Email: mgoretty@comercializadoradesonora.com
 Más InformaciónTelefonos:
55 - 55579878
55 - 55574218
UsuarioMeana Sariñana Ernesto Carlos
Sección: Ciudad De México
Email: meanabienesraices@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 52641184
UsuarioMedina Miranda Jeannete
Sección: Ciudad De México
Email: delangelbienesraices@hotmail.com
 Más InformaciónTelefonos:
- 43305317
- 5554550212
UsuarioMEIXUEIRO SOTO CUAUHTEMOC
Sección: Ciudad De México
Email: direccion@aurorainmobiliaria.com.mx
 Más InformaciónTelefonos:
- 67264730
UsuarioMEJIA ROSALES GERMAN PEDRO
Sección: Ciudad De México
Email: mejiargp@yahoo.com.mx
 Más InformaciónTelefonos:
- 5550724224
UsuarioMEJIA CANO JUAN MANUEL
Sección: Ciudad De México
Email: juanmanuel_mejia@yahoo.com.mx
 Más InformaciónTelefonos:
- 5512959190
UsuarioMEJIAA CALDERON EVA GRACIELA
Sección: Ciudad De México
Email: eva@lookforhousemx.com.mx
 Más InformaciónTelefonos:
- 8116481878
UsuarioMendez Zahlten Silvia 
Sección: Ciudad De México
Email: silviamendez@binmarq.com
 Más InformaciónTelefonos:
55 - 55341666
55 - 55342343
UsuarioMéndez Oscar F.
Sección: Ciudad De México
Email: oscar.mendez@retornia.com
 Más InformaciónTelefonos:
+5255 - 6821 3312
+521 - 553134 4938
UsuarioMéndez Vázquez Raúl
Sección: Ciudad De México
Email: raulmendez@rtinmobiliaria.com.mx
 Más InformaciónTelefonos:
01 (55) - 56681198
01 (55) - 13530604
UsuarioMENDOZA LANDEROS FERNANDO
Sección: Ciudad De México
Email: fernandomendozalanderos@hotmail.com
 Más InformaciónTelefonos:
- 53363610
UsuarioMENDOZA GOMEZ GLORIA ANGELICA
Sección: Ciudad De México
Email: gloriamendozagomez@prodigy.net.mx
 Más InformaciónTelefonos:
- 56750892
UsuarioMendoza Herrera Liliana
Sección: Ciudad De México
Email: lil_09@hotmail.com
 Más InformaciónTelefonos:
0155 - 59752705
0155 - 59774121
UsuarioMenocal Tobias Rodolfo
Sección: Ciudad De México
Email: rodolfomenocal@hotmail.com
 Más InformaciónTelefonos:
- 56392691
UsuarioMERCADO . LIBRE
Sección: Ciudad De México
Email: iuc@crminmobiliario.com
 Más InformaciónTelefonos:
- - 1233442342
UsuarioMEYER FELMAN ALEJANDRO 
Sección: Ciudad De México
Email: alejandro.meyer@e-inmob.com
 Más InformaciónTelefonos:
01 55 - 52036210
01 55 - 52036710
- 52036251
UsuarioMoncada Pérez Eduardo Íñigo
Sección: Ciudad De México
Email: eimoncada@remaxconsulting.com.mx
 Más InformaciónTelefonos:
01 (55) - 52642424
01 (55) - 52645154
UsuarioMONTAÑO LEDESMA MARTHA
Sección: Ciudad De México
Email: pon_y_quitainmob@hotmail.com
 Más InformaciónTelefonos:
- 63011290
UsuarioMONTIEL ANAYA SARA
Sección: Ciudad De México
Email: smontiel@desara.mx
 Más InformaciónTelefonos:
- 50255327
UsuarioMORALES GONZALEZ DIANA 
Sección: Ciudad De México
Email: diana@mordianinmobiliaria.mx
 Más InformaciónTelefonos:
- 36835171
UsuarioMORALES RUIZ IGNACIO
Sección: Ciudad De México
Email: ignacio_moralesr@yahoo.com.mx
 Más InformaciónTelefonos:
- 5535038000
UsuarioMORALES TORRES MANUEL GONZALO
Sección: Ciudad De México
Email: mmorales@proinmobilia.com
 Más InformaciónTelefonos:
- 21671657
UsuarioMORALES DE LA GARZA EVIA MANUEL
Sección: Ciudad De México
Email: manuelmorales@proinmobilia.com
 Más InformaciónTelefonos:
- 21671657
UsuarioMorán Zaldivar Manuel
Sección: Ciudad De México
Email: moranyzaldivar1@prodigy.net.mx
 Más InformaciónTelefonos:
- 52813988
UsuarioMoranchel Pocaterra Jose Leopoldo
Sección: Ciudad De México
Email: century21amicipremier@prodigy.net.mx
 Más InformaciónTelefonos:
- 2455 1166 / 1167
UsuarioMoreno Garcia Ana Maria
Sección: Ciudad De México
Email: morhabit@hotmail.com
 Más InformaciónTelefonos:
55 - 56620175
UsuarioMORENO OSORIO ETNA ARACELI
Sección: Ciudad De México
Email: etna@sanmiguel-bienesraices.com
 Más InformaciónTelefonos:
55 - 52739033
- 0445544848548
UsuarioMORIN GARZA JOSE ANTONIO
Sección: Ciudad De México
Email: chrmoga@gmail.com
 Más InformaciónTelefonos:
- 5523919828
UsuarioMuñoz Montes de Oca Alfredo
Sección: Ciudad De México
Email: mjbienesraices@hotmail.com
 Más InformaciónTelefonos:
04455 - 85816558
UsuarioMURGUIA LANDA GEORGINA
Sección: Ciudad De México
Email: georgina@housekey.com
 Más InformaciónTelefonos:
- 5530958643
UsuarioNAREDO AGUIRRE MATIAS 
Sección: Ciudad De México
Email: mna@matiasnaredo.com
 Más InformaciónTelefonos:
- 67237973
UsuarioNARRO CANOVAS MARIA FERNANDA
Sección: Ciudad De México
Email: fernandanarro@hotmail.com
 Más InformaciónTelefonos:
- 5514511754
UsuarioNARVAEZ GALINDO LORENA
Sección: Ciudad De México
Email: lorenanarvaez@quality.com.mx
 Más InformaciónTelefonos:
- 56616042
- 56743959
UsuarioNavarro Martínez Hilda
Sección: Ciudad De México
Email: inmobiliariagargus@outlook.com
 Más InformaciónTelefonos:
- 53908406
UsuarioNila Mejia Mercedes
Sección: Ciudad De México
Email: mercedesnila@binmarq.com
 Más InformaciónTelefonos:
55 - 55341666
55 - 55342343
UsuarioNUÑEZ CHAVEZ NORMA JUANITA
Sección: Ciudad De México
Email: norma.nunezc@yahoo.com
 Más InformaciónTelefonos:
- 65690711
- 5537751725
UsuarioNuñez Arratia Roberto
Sección: Ciudad De México
Email: robertonunez@nunezarratia.com.mx
 Más InformaciónTelefonos:
- 52072467
UsuarioOCHOA Y CUEN YOLANDA
Sección: Ciudad De México
Email: yochoa@gyrainmobiliaria.com
 Más InformaciónTelefonos:
55 - 1793-4423
04455 - 3233-0859
UsuarioOJEDA MARTINEZ MA. ESTHER
Sección: Ciudad De México
Email: mae_ojeda@hotmail.com
 Más InformaciónTelefonos:
- 44370540
UsuarioOLVERA LEYVA ALEJANDRA ISABEL
Sección: Ciudad De México
Email: ale_ok@hotmail.com
 Más InformaciónTelefonos:
- 46134851
UsuarioOlvera Monroy Hilda Graciela
Sección: Ciudad De México
Email: grupoferreth@hotmail.com
 Más InformaciónTelefonos:
55 - 56010401
- 5688 9791
- 5604 3140
UsuarioOROZCO DEL REAL JESUS IGNACIO
Sección: Ciudad De México
Email: jorozcodelreal@gmail.com
 Más InformaciónTelefonos:
- 52607544
UsuarioORTEGA ROJAS ROBERTO ISAAC
Sección: Ciudad De México
Email: rortega@creceasesoriahipotecaria.com
 Más InformaciónTelefonos:
01 55 - 68312373
- 0445531066127
UsuarioORTEGA CARMONA MARIA ELIZABETH
Sección: Ciudad De México
Email: eobienesraices@gmail.com
 Más InformaciónTelefonos:
- 5545201300
- 52949321
UsuarioORTIZ DE MONTELLANO LETICIA AFIF
Sección: Ciudad De México
Email: letyafif@hotmail.com
 Más InformaciónTelefonos:
- 55201415
- 55402841
UsuarioOrtiz De La Peña Rene
Sección: Ciudad De México
Email: ropcmx@yahoo.com.mx
 Más InformaciónTelefonos:
- 56162455
UsuarioORTIZ CORONA MA. BEATRIZ
Sección: Ciudad De México
Email: decarq2@hotmail.com
 Más InformaciónTelefonos:
- 56872699
- 5559879836
UsuarioOtálora García villalobos Enriqueta
Sección: Ciudad De México
Email: otesa_bienes_raices@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 50331002
- 2457 3468
UsuarioPACHECO MARTINEZ ROXANA
Sección: Ciudad De México
Email: mercadotecnia100@yahoo.com.mx
 Más InformaciónTelefonos:
- 46230717
UsuarioPalencia Fernandez Jorge Alejandro
Sección: Ciudad De México
Email: info@remaxelite.com.mx
 Más InformaciónTelefonos:
- 30965796
UsuarioPalos Ortiz David
Sección: Ciudad De México
Email: davidpalos@gmail.com
 Más InformaciónTelefonos:
0155 - 28553336
UsuarioParga De Carrión Martha
Sección: Ciudad De México
Email: marparga@prodigy.net.mx
 Más InformaciónTelefonos:
- 5211 4631
UsuarioPASQUEL GARCIA COLIN ALICIA JOSEFINA
Sección: Ciudad De México
Email: lpasquel@desara.mx
 Más InformaciónTelefonos:
- 50255327
UsuarioPavón Calderón Miguel Alfonso
Sección: Ciudad De México
Email: mpavon@previsionlegal.com.mx
 Más InformaciónTelefonos:
0155 - 56712314/ 2325 / 2338
UsuarioPAZ LEZAMA JOSE JESUS
Sección: Ciudad De México
Email: pazlezamaj@yahoo.com.mx
 Más InformaciónTelefonos:
- 46203338
UsuarioPEÑA JIMENEZ MIGUEL ANGEL
Sección: Ciudad De México
Email: miguel.pena@cmigrupo.com
 Más InformaciónTelefonos:
- 56312121
UsuarioPeraza Buenfil Jorge Raul
Sección: Ciudad De México
Email: ventasgrupocampana@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 56444470
UsuarioPÉREZ PARDO ANA LILIA 
Sección: Ciudad De México
Email: analilia@conciergeinmobiliario.mx
 Más InformaciónTelefonos:
- 5529212934
- 69949391
UsuarioPEREZ RODRIGUEZ CESAR ADRIAN
Sección: Ciudad De México
Email: adrian@previsionlegal.com.mx
 Más InformaciónTelefonos:
- 12041224
UsuarioPérez Butrón Mauricio
Sección: Ciudad De México
Email: grupolbt@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56629068
55 - 5661 6740
045 - 5468 3305
UsuarioPerez Robles, Ana Laura
Sección: Ciudad De México
Email: ventas@greenhouse.com.mx
 Más InformaciónTelefonos:
55 - 56634111
55 - 56634212
UsuarioPEREZ ARANJA VANESSA
Sección: Ciudad De México
Email: vperez@vanberconsorcio.com
 Más InformaciónTelefonos:
- 5554311134
UsuarioPerez Perez Maria Rosario
Sección: Ciudad De México
Email: jchom@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56166805
- 56166487
UsuarioPÉREZ GIFFARD JORGE FERNANDO
Sección: Ciudad De México
Email: jf.perez@indbauten.com
 Más InformaciónTelefonos:
- 53987545
UsuarioPérez Gil Eugenio
Sección: Ciudad De México
Email: promodan@prodigy.net.mx
 Más InformaciónTelefonos:
- 56838858
UsuarioPérez-Cirera Langenscheidt Felipe
Sección: Ciudad De México
Email: levehi@hotmail.com
 Más InformaciónTelefonos:
55 - 52030407
55 - 55310508
UsuarioPerezanta Ordoñez Ma. Carmen
Sección: Ciudad De México
Email: reborninmobiliaria@gmail.com
 Más InformaciónTelefonos:
55 - 55709726
UsuarioPERTUSA HONRUBIA JOSE MARIA 
Sección: Ciudad De México
Email: contacto@adventera.com
 Más InformaciónTelefonos:
- 52522227
UsuarioPhilippe Rousseau Jorge
Sección: Ciudad De México
Email: habitat@quality.com.mx
 Más InformaciónTelefonos:
55 - 52511521
55 - 55963399
UsuarioPiña Morales Delfino 
Sección: Ciudad De México
Email: susana.ocotitla@fampi.com.mx
 Más InformaciónTelefonos:
- 55949910
UsuarioPIÑA LOPEZ ROBERTO
Sección: Ciudad De México
Email: rpina@socasesores.com
 Más InformaciónTelefonos:
- 55239788
UsuarioPodbilewicz Tenenbaum Isaac
Sección: Ciudad De México
Email: ventas@lineabienesraices.com
 Más InformaciónTelefonos:
- (55) 53603455
- (55) 5363 2239 fax
UsuarioPOLANCO DORANTES GILBERTO
Sección: Ciudad De México
Email: gilberto@polancoyasociados.com
 Más InformaciónTelefonos:
- 56117581
UsuarioPonce Pesquera Maria Concepcion
Sección: Ciudad De México
Email: realstated11@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 29744134
UsuarioPonce Rios Teresa Maricela
Sección: Ciudad De México
Email: tere@inmoponce.com.mx
 Más InformaciónTelefonos:
55 - 12516161
55 - 34700455
UsuarioPORRAZ ARELLANO VERONICA 
Sección: Ciudad De México
Email: veronicacampuzano@prodigy.net.mx
 Más InformaciónTelefonos:
- 56802121
UsuarioPORTER NAVARRO CLAUDIA
Sección: Ciudad De México
Email: clauportern@gmail.com
 Más InformaciónTelefonos:
- 5552154551
UsuarioPreciado Villanueva Jose Jorge
Sección: Ciudad De México
Email: binmarq1@hotmail.com
 Más InformaciónTelefonos:
55 - 55680157
UsuarioPRUDHOMME DIAZ MICHELLE PAULET
Sección: Ciudad De México
Email: michelle.prudhomme@brinckell.com
 Más InformaciónTelefonos:
- 55433082
- 62362884
UsuarioQuiróga Quiróga María Isabel
Sección: Ciudad De México
Email: lucero@circulobienesraices.com
 Más InformaciónTelefonos:
55 - 51355931
- 51355930
- 51355932
UsuarioQuiroz Fernandez Macgregor Jeronimo
Sección: Ciudad De México
Email: jeroqui@gmail.com
 Más InformaciónTelefonos:
52 - 5552902778
UsuarioRamírez Rodríguez María De Lourdes
Sección: Ciudad De México
Email: lourdes.ramirez@yahoo.com.mx
 Más InformaciónTelefonos:
01 (55) - 55599759
01 (55) - 55599719
04455 - 39278854
UsuarioRAMIREZ DIAZ NORMANDO
Sección: Ciudad De México
Email: inmobiliariammf@hotmail.com
 Más InformaciónTelefonos:
- 85904677
- 85904678
UsuarioRAMIREZ ILLOLDI MIGUEL ANGEL
Sección: Ciudad De México
Email: miguelramirez@quality.com.mx
 Más InformaciónTelefonos:
- 63104257
UsuarioRAMIREZ AMAYA MARIANA OFELIA
Sección: Ciudad De México
Email: century21aralbe@hotmail.com
 Más InformaciónTelefonos:
- 43983200
UsuarioRAMOS VIZCAINO ADRIANA MARIA
Sección: Ciudad De México
Email: arvizcaino@hotmail.com
 Más InformaciónTelefonos:
- 5537065976
UsuarioRamos Gutiérrez Hector Rolando
Sección: Ciudad De México
Email: hramosc21@gmail.com
 Más InformaciónTelefonos:
55 - 5291 1500
55 - 5245 1503
UsuarioRangel Passarelli Alma Lorena
Sección: Ciudad De México
Email: ventas@remax-integra.com.mx
 Más InformaciónTelefonos:
- 21675255
UsuarioRESENDIZ TREJO CARMEN ROCIO
Sección: Ciudad De México
Email: resendizgrupoinmobiliario@hotmail.com
 Más InformaciónTelefonos:
- 5537270719
UsuarioREYES DUARTE MA. ESTHER
Sección: Ciudad De México
Email: maesther@stanzia.com.mx
 Más InformaciónTelefonos:
- 70441702
UsuarioREYES MOHEDANO JUAN CARLOS
Sección: Ciudad De México
Email: mohedano@proteccionjuridica.com.mx
 Más InformaciónTelefonos:
- 65987710
UsuarioReyes Gonzalez Jesus Rodolfo
Sección: Ciudad De México
Email: rodolfo@viso.mx
 Más InformaciónTelefonos:
01 55 - 24 55 96 21
01 55 - 24 55 96 22
01 55 - 1114 5550
UsuarioRICAUD MENDOZA ELENA DEL CARMEN
Sección: Ciudad De México
Email: elena_ricaud@yahoo.com.mx
 Más InformaciónTelefonos:
- 56828404
UsuarioRIVERA MONTIEL CARLOS
Sección: Ciudad De México
Email: josefina@acbienesraices.com.mx
 Más InformaciónTelefonos:
55 - 11630100
55 - 11078600
UsuarioROARO FUENTES GABRIELA
Sección: Ciudad De México
Email: contacto@horizontesbienesraices.com
 Más InformaciónTelefonos:
- 52644759
- 52645099
UsuarioRobina Ibarra Luis Carlos
Sección: Ciudad De México
Email: robina@quality.com.mx
 Más InformaciónTelefonos:
- 56597777
UsuarioROBLEDO RUBIO ARACELI
Sección: Ciudad De México
Email: odal.araceli@gmail.com
 Más InformaciónTelefonos:
- 89958955
55 - 54099697
UsuarioROBLEDO MANZUR YAZMIN
Sección: Ciudad De México
Email: robledomanzur@gmail.com
 Más InformaciónTelefonos:
- 52510878
UsuarioRodríguez De Salgado Gabriela
Sección: Ciudad De México
Email: gsalgado@remaxplus.com.mx
 Más InformaciónTelefonos:
55 - 52802543
- 5281 3881
UsuarioRodríguez Díaz Ma. Cristina Amalia
Sección: Ciudad De México
Email: binmarq@hotmail.com
 Más InformaciónTelefonos:
- 5534 1666 
- 5534.2343
UsuarioRojkind Halpert Sergio
Sección: Ciudad De México
Email: srojkind@hotmail.com
 Más InformaciónTelefonos:
55 - 55892222
UsuarioROMERO CUEVAS MARIA CRISTINA
Sección: Ciudad De México
Email: asesoresinmobiliarioscrc@gmail.com
 Más InformaciónTelefonos:
- 66498400
- 51355825
UsuarioRosano Alvarez Guadalupe
Sección: Ciudad De México
Email: grossanomx@yahoo.com
 Más InformaciónTelefonos:
- 56661526
UsuarioRosenberg Altschuler Leonardo
Sección: Ciudad De México
Email: leonardorosenberg@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 5282 1363 
55 - 5282 1450
UsuarioRuan Delgado Gildardo
Sección: Ciudad De México
Email: ventas@rouenbienesraices.com
 Más InformaciónTelefonos:
55 - 56968964
55 - 55791413
UsuarioRueda Esquivel Gerardo
Sección: Ciudad De México
Email: inmobiliaria@afimex.com.mx
 Más InformaciónTelefonos:
55 - 54242424
55 - 54242427
04455 - 11221770
UsuarioRUIZ DIAZ OSCAR
Sección: Ciudad De México
Email: oruiz@mas-inmobiliaria.com.mx
 Más InformaciónTelefonos:
- 55151020
- 55665890
- 5546075548
UsuarioSacal Cababie Salvador
Sección: Ciudad De México
Email: ssacalc1964@hotmail.com
 Más InformaciónTelefonos:
55 - 55140106/ 0116 / 0126
UsuarioSalaman Nicolini Ramon Angel
Sección: Ciudad De México
Email: avaluos@enlaceinmobiliariomx.com
 Más InformaciónTelefonos:
55 - 91519722
- 10404731
UsuarioSalazar Arenas José Mario Enrique
Sección: Ciudad De México
Email: enrique@liderbienesraices.com
 Más InformaciónTelefonos:
044 - 5521546604
55 - 59180827
UsuarioSalcido Ochoa Ramón
Sección: Ciudad De México
Email: rsalcido@prodigy.net.mx
 Más InformaciónTelefonos:
5 - 55595980
UsuarioSalles Berges Marcelo
Sección: Ciudad De México
Email: iiicmac@prodigy.net.mx
 Más InformaciónTelefonos:
- 54861694
- 5666 5270
UsuarioSALMON ROIZ YISELA
Sección: Ciudad De México
Email: yisela@prodigy.net.mx
 Más InformaciónTelefonos:
- 5540494397
UsuarioSANCHEZ LONDOÑO EUGENIA EMPERATRIZ
Sección: Ciudad De México
Email: emperatrizsanchez@yahoo.com
 Más InformaciónTelefonos:
- 5565594072
UsuarioSANCHEZ BLANCAS MIGUEL ANGEL
Sección: Ciudad De México
Email: miguelangel-casas@hotmail.com
 Más InformaciónTelefonos:
- 49891823
UsuarioSANCHEZ RODRIGUEZ JULIAN
Sección: Ciudad De México
Email: jsanchez@gasfera.com.mx
 Más InformaciónTelefonos:
- 26302933
- 45988436
UsuarioSANCHEZ OCHOA GLORIA
Sección: Ciudad De México
Email: psanchez0217@yahoo.com.mx
 Más InformaciónTelefonos:
- 04455-5462-2991
UsuarioSANDOVAL ORTIZ GUSTAVO
Sección: Ciudad De México
Email: gsandoval@grupoaitex.com
 Más InformaciónTelefonos:
- 55359693
UsuarioSANFORD YEAGER STEPHEN
Sección: Ciudad De México
Email: syeager@c21mx.com
 Más InformaciónTelefonos:
- 52516700
UsuarioSCHMOLKE ALVES ANGELIKA
Sección: Ciudad De México
Email: angelika@haus-blick.com
 Más InformaciónTelefonos:
- 15560780
UsuarioSchutte Elguero Fernando
Sección: Ciudad De México
Email: schutte@terra.com.mx
 Más InformaciónTelefonos:
0155 - 56161212
UsuarioSEGUI LAGUNES MARITE
Sección: Ciudad De México
Email: marite@grupoars.mx
 Más InformaciónTelefonos:
- 55596615
- 53350081
- 5559176110
Segura Vargas Marisel
Sección: Ciudad De México
Email: mariselw@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 51717009
UsuarioSEGURA MERLONI VIVIAN 
Sección: Ciudad De México
Email: vs@merloni.mx
 Más InformaciónTelefonos:
55 - 9155 7872
UsuarioSegura Anzaldo Estela Mariana
Sección: Ciudad De México
Email: marianajimenez@nexthome.com.mx
 Más InformaciónTelefonos:
- 21631700
UsuarioSidaoui Dagdug Julián
Sección: Ciudad De México
Email: sidaouij@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 0445513534145
55 - 55406057
UsuarioSlodownik Joshua
Sección: Ciudad De México
Email: joshua@diamondhouse.com.mx
 Más InformaciónTelefonos:
55 - 59893999
55 - 59893910
UsuarioSMITH MACDONALD RUBIO KAREN
Sección: Ciudad De México
Email: smithmacdonaldk@gmail.com
 Más InformaciónTelefonos:
- 5512112903
UsuarioSoberon Silva Jorge
Sección: Ciudad De México
Email: jsoberonmx@yahoo.com.mx
 Más InformaciónTelefonos:
- 56068279
UsuarioSobrino Bracamontes Federico
Sección: Ciudad De México
Email: federico@maja.com.mx
 Más InformaciónTelefonos:
- 5516 1919
- 5682 1155
UsuarioSolares Campos Gustavo
Sección: Ciudad De México
Email: gsolaresc_gs@hotmail.com
 Más InformaciónTelefonos:
01(55) - 5592-0044
- 
04455 - 8530-5521
UsuarioSOLIS ROSAS SILVIA PAZ
Sección: Ciudad De México
Email: silvia@capricorniaire.com
 Más InformaciónTelefonos:
- 52816568
UsuarioSolis Espinosa Mauricio
Sección: Ciudad De México
Email: msolis.plusvalia@gmail.com
 Más InformaciónTelefonos:
55 - 29730090
55 - 29730095
UsuarioSOLIS JURADO YVONNE MARIA 
Sección: Ciudad De México
Email: chipio3@hotmail.com
 Más InformaciónTelefonos:
- 5530582094
UsuarioSolís Angulo Emma Rosa
Sección: Ciudad De México
Email: solangersa@yahoo.com.mx
 Más InformaciónTelefonos:
- 54858592
- 56550212
UsuarioSOY RENDA RENDA
Sección: Ciudad De México
Email: tro@renda.soy
 Más InformaciónTelefonos:
55 - 67177900
UsuarioSutton Lobaton Linda
Sección: Ciudad De México
Email: lindasutton@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 52020032
UsuarioTANAKA PEREZ MARIA GUADALUPE
Sección: Ciudad De México
Email: aclientes@century21tanaka.com
 Más InformaciónTelefonos:
55 - 5260 3082 AL 84
UsuarioTartakovski Godman Moisés
Sección: Ciudad De México
Email: buzon@tarinternacional.com.mx
 Más InformaciónTelefonos:
55 - 3503050
UsuarioTECNOCASA . MEXICO
Sección: Ciudad De México
Email: administracion@tecnocasa.com.mx
 Más InformaciónTelefonos:
- 55749869
UsuarioTéllez Cuevas Erika
Sección: Ciudad De México
Email: kikatellez_2011@hotmail.com
 Más InformaciónTelefonos:
(55) - 46234967
(55) - 5528919664
UsuarioTOLEDO DAVILA SABINO
Sección: Ciudad De México
Email: sabino_toledo@grupokars.com
 Más InformaciónTelefonos:
- 5538506086
- 67249903
UsuarioTOLEDO VALDEZ MIRYAN
Sección: Ciudad De México
Email: mtoledo@soluciones-empresariales.mx
 Más InformaciónTelefonos:
- 63086055
UsuarioTORRES JIMENEZ MARIA EUGENIA
Sección: Ciudad De México
Email: clasico21@hotmail.com
 Más InformaciónTelefonos:
- 5554342380
UsuarioTREJO VILLASEÑOR ALEJANDRO DE JESUS 
Sección: Ciudad De México
Email: a.trejo@villaporta-si.com
 Más InformaciónTelefonos:
- 5545547748
- 4422206939
UsuarioTrueba de Torres Pedro
Sección: Ciudad De México
Email: c21trueba@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56880541
55 - 52570099
UsuarioTRUJILLO AGUILAR ALEJANDRA
Sección: Ciudad De México
Email: jana_arzaluz@hotmail.com
 Más InformaciónTelefonos:
- 68309806
04455 - 27616741
04455 - 30589054
UsuarioUGALDE ALCANTARA ANGELICA
Sección: Ciudad De México
Email: admon@inmueblesproperty.com
 Más InformaciónTelefonos:
- 55365746
UsuarioUribe Gutierrez Jose
Sección: Ciudad De México
Email: joseuribe@grupolindavista.com.mx
 Más InformaciónTelefonos:
55 - 55868164
FAX - 57545808, EXT. 213
UsuarioUribe Benítez Maria del Rocio Guadalupe
Sección: Ciudad De México
Email: infouribe@quality.com.mx
 Más InformaciónTelefonos:
55 - 12091207
55 - 49853303
UsuarioValdes Montero Francisco
Sección: Ciudad De México
Email: inmovivienda@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56155300
UsuarioValdez Gonzalez Renata
Sección: Ciudad De México
Email: revadef@gmail.com
 Más InformaciónTelefonos:
- 50088101
UsuarioValencia Remus José Luis
Sección: Ciudad De México
Email: ivalencia@globalas.com.mx
 Más InformaciónTelefonos:
55 - 5639 3119
UsuarioVan Dooren Julio Emilio,
Sección: Ciudad De México
Email: vandoren10@hotmail.com
 Más InformaciónTelefonos:
- 10859880
UsuarioVAZQUEZ RUIZ MANUEL
Sección: Ciudad De México
Email: manuelvazquez@meanaabogados.mx
 Más InformaciónTelefonos:
- 55649699
UsuarioVázquez Ibarra Eliseo
Sección: Ciudad De México
Email: hermesinmobiliria@cabelvision.net.mx
 Más InformaciónTelefonos:
- 55236258
UsuarioVega Gutiérrez Aida Belinda
Sección: Ciudad De México
Email: housesunlimited@prodigy.net.mx
 Más InformaciónTelefonos:
- 5585 2520
- 54250931
- 04455 55046805
UsuarioVieyra Sicilia Orlando
Sección: Ciudad De México
Email: ovieyras@gmail.com
 Más InformaciónTelefonos:
55 - 51354195
55 - 51354195
UsuarioVILA ESPONDA ROBERTO
Sección: Ciudad De México
Email: r_vila_e2003@yahoo.com.mx
 Más InformaciónTelefonos:
- 56047937
- 5591951233
UsuarioVillanueva Juarez Fernando
Sección: Ciudad De México
Email: fernando@eninfinitum.com.mx
 Más InformaciónTelefonos:
- 54403645
UsuarioVillela Diaz Gonzalez Maria G.
Sección: Ciudad De México
Email: villelayasociados@prodigy.net.mx
 Más InformaciónTelefonos:
55 - 56681877
55 - 56810196
55 - 56681887
UsuarioVIZCAINO ELENA
Sección: Ciudad De México
Email: evizcaino.inversion33@gmail.com
 Más InformaciónTelefonos:
- 55780905
- 68401109
UsuarioWallsten Ostlund Bo E.
Sección: Ciudad De México
Email: bo@wallsten.com
 Más InformaciónTelefonos:
55 - 5282-5916
55 - 5282-5919 
Usuarioy Asociados, S. A. de C.V. Martha Rayo
Sección: Ciudad De México
Email: admin@rayovende.com
 Más InformaciónTelefonos:
55 - 55739074
UsuarioYAMANAKA DANIA
Sección: Ciudad De México
Email: dania@espaciosvivos.com.mx
 Más InformaciónTelefonos:
55 - 52644793
55 - 5549365567
UsuarioZAIZAR PINEDA ELVA OLIVIA
Sección: Ciudad De México
Email: ezaizar@zrygbienesraices.com
 Más InformaciónTelefonos:
- 5537334317
UsuarioZamora Serrano Jose Alberto
Sección: Ciudad De México
Email: zamoraavanteasesores@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 5536 9858
55 - 5536 9859
04455 - 5182 4845
UsuarioZapata Gosselin Jorge Carlos
Sección: Ciudad De México
Email: signiasc@yahoo.com.mx
 Más InformaciónTelefonos:
55 - 55403393
UsuarioZazueta González Laura
Sección: Ciudad De México
Email: lzazueta36@hotmail.com
 Más InformaciónTelefonos:
55 - 55752065
- 52199616
- 54194537
UsuarioZorrilla Ducloux Claudia Victoria
Sección: Ciudad De México
Email: claudiazorrillamtz@hotmail.com
 Más InformaciónTelefonos:
55 - 51715357
55 - 56068587
- 25883825"