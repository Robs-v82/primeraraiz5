canadevi = 
"1
Dia Veces Promotora
Mauricio
Mauricio Córdova Mora
dia_veces@yahoo.com.mx
(449) 914 4535
Aguascalientes

2
Casa Cómoda
Édgar
Édgar Erick García Zamarripa
gerencia.ventas@tucasacomoda.com
(449) 153 0520
Aguascalientes

3
Vicarar
Joel
Joel Camarena de Santiago
j.camarena@vicarar.com.mx
(449) 912 8950
Aguascalientes

4
Desarrollos Habitacionales de Aguascalientes
José Miguel
José Miguel López Castañeda
jmiguel@dhasa.com.mx
(449) 916 1515
Aguascalientes

5
GIG Desarrollos
José Rodolfo
José Rodolfo Lazalde Romo
jose.lazalde@gig.mx
(449) 996 2601
Aguascalientes

6
Iberomex Construcciones
Miguel
Miguel Wesolowski Ventosa
mwv@iberomex.com.mx
(449) 162 1212
Aguascalientes

7
Constructora Bóvedas
Axel
Axel Víctor Espinosa Teubel
axel.espinosa@bovedas.com
(449) 912 9270 
Aguascalientes

8
Desarrollos Urbanos El Encino
Alfonso
Alfonso Barba Aceves
alfonsoba@duelencino.com
(449) 996 6702 
Aguascalientes

9
Terrahome
Jaime Humberto
Jaime Humberto Álvarez Martínez
director@terrahome.com.mx
Abedul No.804-1 Col.
(449) 912 1332
Aguascalientes

10
Urban Vivendi
Fabián
Fabián García Zamarripa
urbanvivendi@gmail.com
(449) 251 3045
Aguascalientes

11
Grupo Sadasi
Jorge
Jorge Solano Vega
jsolano@sadasi.com
(55) 5201 0480
Aguascalientes

12
Consorcio Ara
Miguel Guillermo
Miguel Guillermo Lozano Pardinas
mglozano@ara.com.mx
(55) 5246 3100
Baja California

13
Consorcio Viva
Luis Felipe
Luis Felipe Tirado León
tiradoleon@yahoo.com.mx
(961) 60 00 501 
Tuxtla Gtz

14
DM Construcciones y Pavimentos
Luis Ernesto
Luis Ernesto Sauza Gutiérrez
lsauza@hotmail.com
(961) 613 9876
Tuxtla Gtz

15
Construcciones Sauce
Ricardo
Ricardo Abiud Fentanés Gutiérrez Zamora
casassauce@casassauce.com.mx
(961) 60 40 410
Tuxtla Gtz

16
Constructora e Inmubles del Valle
Raúl
Raúl González Robles
tuchtlan78@hotmail.com
(961) 61 32014
Tuxtla Gtz

17
Figo Construcciones
Eduardo
Eduardo Figueroa Gutiérrez
lasmejorescasas@lasmejorescasas.com
(961) 121 4288
Tuxtla Gtz

18
Ice Promotora
Rodolfo
Rodolfo Granda Sánchez
iceprohasa@hotmail.com
(961) 612 1690
Tuxtla Gtz

19
Maju del Sureste
Julio Gustavo Díaz Aragón
julio_diaza@hotmail.com
cmendez_78@hotmail.com
(961) 613 3719
Tuxtla Gtz

20
Altta Homes
Hilda
Hilda Cristina Arratia Granados
hiarratia@sadasi.com
(614) 543 0769
Chihuahua

21
Ruba
Francisco
Francisco Gaytán
francisco.gaytan@ruba.com.mx
(656) 692 0404
Chihuahua

22
Constructora Yva
Luis Eduardo
Luis Eduardo Ibarra Molina
yvasa@yvasa.com
(656) 639 8970
Chihuahua

23
Ruba
Otto
Otto Javier Schmal Thomae
otto.schmal@ruba.com.mx
(33) 8852 7000
Chihuahua

24
Grupo Sadasi
Jorge
Jorge Solano Vega
jsolano@sadasi.com
(55) 5201 0480
Chihuahua

25
Constructora y Urbanizadora de Piedras Negras
Juan José
Juan José Martínez Dávila
conursa@prodigy.net.mx
(878) 795 3201
Piedras Negras

26
Casas Pecsa
Manuel
Manuel González Zozaya
mgonzalez@casaspecsa.com
(844) 412 8721
Saltillo

27
Davisa
Víctor
Víctor Mohamar Servín
vmohamar@davisa.com.mx
01 (844) 134 2635
Saltillo

28
Prisma,
Andrés
Andrés Oyervides Ramírez
prismas@prodigy.net.mx
(866) 632 0404
Monclova

29
Construmarket
Juan Manuel
Juan Manuel Rodríguez Benavides
jrodriguez@rodeli.com
(878) 783 7800
Piedras Negras

30
Casas Trio
Vicente
Vicente Celedón Hernández
vceledon@casastrio.com
(871) 204 0030
Torreón
"

canadeviArr = canadevi.split("\n\n")
canadeviTres = []
canadeviArr.each{|x| item=x.split("\n"); canadeviTres.push(item)}
canadeviTres.each{|x| Contact.create(:organization=>x[1], :name=>x[3], :email=>x[4], :other_phone=>x[5], :state=>x[6])}

canadevi="
31
Uni Grupo
Federico
Federico Obeso Anaya
ventastrc@unigrupo.net 
(871) 228 1888
Torreón

32 
Grupo Manter
Manuel Ignacio
Manuel Ignacio López Villarreal
mlopez@grupomanter.com.mx
(844) 415 4677
Acuña

33
Jisa Bienes Raíces
Manuel
Manuel Jiménez Flores
jfjisabienesraices@hotmail.com
(844) 412 2334
Saltillo

35
Casas Alce
Sergio
Sergio Germán Alcalá Menoza
direccion@casasalce.com
(312) 311 1111
Colima

36
Jade Grupo Inmobiliario
Francisco
Francisco Javier Deniz Macías
arq.deniz@hotmail.com
(312) 308 9680
Colima

37
Lega Inmobiliaria
Eduardo
Eduardo Antonio Brun Solórzano
acardenas@lega.mx
(312) 316 3560
Colima

38
Desarrollos Inmobiliarios Caal
Carlos
Carlos Manuel Saucedo Munguía
caal@prodigy.net.mx
(312) 314 7070
Colima

39
Impulsora y Desarrolladora de Colima
Julio
Julio César Ceballos Cataneo
juliocataneo@gmail.com
(312) 396 7433
Colima

40
Hausbauer
Pablo
Pablo Terríquez Covarrubias
hausbauer@hotmail.com
(312) 330 9550
Colima

41
Desarrolladora Saro
José
José de Jesús Sánchez Romo
jesus@sarocolima.com
(312) 311 1213
Colima

42
Grupo Plainco
Jorge
Jorge Miranda Gutiérrez
jmiranda@grupoplainco.com
(314) 333 1710
Colima
"
canadevi="
43
Sayatec
Manuel
Manuel Francisco Valadez Ortega
sayatecplus@prodigy.net.mx
(477) 771 9854
Guanajuato

44
Comebi
Manuel
Manuel del Valle Lopez
mdelvalle@comebi.com.mx
(444) 811 1005
León

48
Diseño y Espacio
Eduardo
Eduardo Valdespino Furlong
e_valdespinof@disenoyespacio.com
(771) 718 0065
Pachuca

49
Blancomex
Ernesto
Ernesto del Blanco
ernestodelblanco@gcb.com.mx
(771) 715 9621
Pachuca

50
Los Amores de Don Juan
Juan Fernando
Juan Fernando González Gómez Tagle
inmobiliaria_ferrero@yahoo.com
(743) 741 1132
Villa de Tezontepec

51
Becma
Juan Manuel
Juan Manuel Batres Campos
batresjm@hotmail.com
(771) 713 6581
Pachuca

52
Constructora Crimsa
Marco Antonio
Marco Antonio Rico Moreno
constructora_crimsa@hotmail.com
(771) 711 0494
Pachuca
"
canadevi="
53
Constructora
Sylvia
Sylvia Rico Moreno 
sylma13@hotmail.com
(771) 791 5946 
Pachuca

54
Promotora Hidalguense de Vivienda
Andrés
Andrés Manning Novales
andmanning@yahoo.com
(771) 7144580
Pachuca

55
Hogares con vida
Eustacio
Eustacio Monroy Solis
eustaciomonroy@yahoo.com.mx
(771) 7167401 
Pachuca

56
Davivir
Dante
Dante Rodríguez
drodriguez@davivir.com.mx
5555801213
Pachuca

58
Constructora Real de Pachuca
Luciano
Luciano Carrera Rojas
real_pachuca@prodigy.net.mx
(771) 6991112
Pachuca

59
Promotora de Viviendas Integrales,
Juan
Juan Larrauri Hernández
juan.larrauri@realparaiso.com
(771) 107 7087 
Pachuca

60
Covita Inmobiliaria
Jorge
Jorge González Corona
covitasadecv@hotmail.com
(775) 75 23244
Tulancingo

61
Casas Geo
Luis
Luis Ramón Vives Sarmiento
lvives@casasgeo.com
(55) 54805000 
Pachuca

62
Residencial Villareal
Hugo
Hugo Alberto Escamilla Cidel
informes@villarrealpachuca.com.mx
771 71 92080 
Pachuca

63 
Edificadora Val
Fidencio
Fidencio Jiménez Hernández
chuy_290@hotmail.com
771 71 77720 
Pachuca

64 
GLM 
ALfredo
Alfredo León Martínez
glm_arquitectura@hotmail.com
771 7198536
Pachuca

65
Cuantica Asociados
Gonzalo
Gonzalo Vázquez y González
gonzalovyg@yahoo.com.mx
743 7412029
Tolcayuca

66
LR Construcciones
Mauricio
Mauricio López Ruíz
irtecnica@yahoo.com.mx
771 7198536
Pachuca

67
Constructora Vadonne
Israel
Israel Ibarra Ruíz
ventas@grupovadonne.com.mx
743 7412029
Tizayuca

69
Ara
Miguel
Miguel Guillermo Lozano Pardinas
mglozano@ara.com.mx
(55) 5246 3100
Hidalgo

70
Ohana Construcciones
Félix
Félix Fernández Castellanos
ffernandez@ohanaconstrucciones.com.mx
(333) 616 8017
Guadalajara

71Grupo Profesional Inmobilizaio
Santiago
Santiago Orozco
sorozco@gpi.com.mx
(33) 1368 9861
Guadalajara

72
Promotora Torres González
Flavio
Flavio Torres Ramírez
flaviotorresr@hotmail.com
(33) 3343 9936
Guadalajara

73 
Habita
Roberto
Roberto Salcedo Villalobos
rsalcedo@habita.mx
(33) 3647 9328
Guadalajara

74
Kekasa
Armando
Armando Anguiano Romo
aanguiano@kekasa.com.mx
(333) 616 7872
Guadalajara

75
Constructora Hospicio
Pilar
Pilar Marull Solana
hospicio@constructorahospicio.com
(333) 634 1822
Guadalajara

76
Grupo Inmobiliario PFC
Carlos
Carlos Ernesto García Ramírez
catovar30@gmail.com
(333) 833 0403
Guadalajara

77
AR Home
Archibaldo
Archibaldo Dorantes Vázquez Aldana
adorantes@arhome.com.mx
(33) 1201 7164
Guadalajara

78
Grupo San Carlos
Jesús
Jesús Leandro Camarena Solís
jcamarenas@gruposancarlos.com
(333) 615 1717
Guadalajara

80
Casas Ara
Miguel
Miguel Guillermo Lozano Pardinas
mglozano@ara.com.mx
(55) 5246 3100
Guadalajara

82
Grupo Evi
Adrián
Adrián Curiel Curza
adrian.curiel@grupoevi.com
(555) 661 6278
México

83
Inmobiliaria Basgar
Jaime
Jaime Bastida Mora
dg@basgar.com
(722) 214 9220
Toluca

85
Casas Procsa
Gabriel
Gabriel Aguilera Moreno
bpedraza@procsa.com.mx
(555) 272 9111
México

86
Ke Desarrolladora
Naftoli
Naftoli Mishkin Antokolsky
tmishkin@keco.com.mx
(555) 589 9119
México

90
Medacasa
Leopoldo
Leopoldo de Jesús Rodríguez Magallón
leopoldo.rodriguez@medacasa.com.mx
(351) 515797473
Morelia

91
Desarrollo Habitacional Santa Julia
Alejandro
Alejandro González Cussi
jfranco@casasarko.com.mx
(443) 113 5300
Morelia

95
Citaris Desarrollos
José Roberto
José Roberto Santillán Ferreyra
direccion@citarisinmobiliaria.com
(443) 340 6030
Morelia

96
Desarrolladora de Entornos Ecológicos, S.A. de
Raymundo
Raymundo López Olvera
desea_11@hotmail.com
(443) 323 1128
Morelia

97
Grupo Herso
Rosalba
Rosalba Méndez Solorio
rmendez@grupoherso.com.mx
(443) 324 2439
Morelia

98
Invisa
Manuel
Manuel Nocetti Tiznado
mcorona@grupoinvisa.com
(443) 308 8120
Morelia

99
Tres Marías
Alberto
Alberto Herrejón Abud
mprado@tresmarias.com.mx
(443) 113 2900
Morelia

100
Insignia Hogares
José
Jose Cruz Guzman Chavez
director@insigniahogares.com
(443) 2348862
Morelia

101
Inmobiliaria Country
Rodrigo
Rodrigo Flores Arreygue
rfarreygue@yahoo.com
(443) 3401420
Morelia

104
Casas Planet
Janet
Janet Morales López
janet_morales@casasplanet.com
(777) 102 1590
Temixco

105
Promotora de Inversiones del Nayar
José Antonio
José Antonio Salas Zapata
century21@century21pinsa.com
(311) 214 1802
Tepic

106
Ingeniería Mexicana
Jesús
Jesús Arjona Hernández
jarajona@ingenieriamexicana.mx
(311) 169 4685
Tepic

107
Construcciones y Diseños Óptima
Roberto
Roberto Riosegura Rodríguez
cons_optima@hotmail.com
(311) 216 8550
Tepic

108
Consorcio Patrimonial
Georgina
Georgina Mayorquin Pérez
consorcio_patrimonial@hotmail.com
(311) 141 8992
Tepic

109
Barrze Construcciones
Fernando
Fernando Rafael Barrutia Zepeda
barrze@gmail.com
(311) 217 8120
Tepic

110
Bigeyes
Miriam
Miriam Guadalupe Robles Jasso
bigeyes.factura@gmail.com
(311) 213 7695
Tepic

113
Casas Javer
Eugenio
Eugenio Garza y Garza
aro@javer.com.mx
(81) 1133 6699
Monterrey

115
Casas Javer
Argelia
Argelia Ileana Gil Cantú
aro@javer.com.mx
(81) 1133 6699
Monterrey

117
Ucalli
Rodolfo
Rodolfo Peña Ortega
vrodriguez@ucalli.com
(81) 8124 5454
Monterrey

118
Inversiones Inmobiliarias Alianza
Ricardo
Ricardo Javier Guerra Villarreal
rgv@ialianza.com
(818) 143 0373
Monterrey

119
Kora Desarrollos
Imelda
Imelda González Zavala
igonzalez@kora.com.mx
(81) 1366 3100
Monterrey

120
Vidusa
Eugenio
Eugenio Elizondo
eugenioelizondo@vidusa.com
(818) 221 2131
Monterrey

120
Vidusa
Marco
Marco Salazar
marcosalazar@vidusa.com
(818) 221 2131
Monterrey
"

"
123
Carza
Alejandro
Alejandro Javier Arévalo Muñiz
ajarevalo@carza.com
(818) 124 2300
Monterrey

127
Marfil Desarrollo
David
David Guzmán Barbosa
davidguzman@marfil.com
(818) 122 5522
Monterrey

128
Grupo Gocasa
Gerardo
Gerardo Infante Zárate
gocasa.infonavit@gocasa.cc
(818) 044 8202
Monterrey

130
Adara
Agustín
Agustín Pascal Dujovich
direccion@adara.mx
(951) 106 4997
Oaxaca

131
Casas Aguilar
Celia
Celia María Torres Aguilar
mtorres@casasaguilar.com.mx
(951) 502 6060
Oaxaca

132
Geso Vivienda
Gerardo
Gerardo Osorio Suárez
gerardo.osorio@gesovivienda.com.mx
(951) 132 4944
Oaxaca

134
Gómez Vallarta y
Asociados
Luis
Luis Gómez Vallarta
govallarta1@prodigy.net.mx
(222) 243 2524
Puebla

135
El Pilar
Sergio
Sergio Antonio Moreno Vieyra
osantamaria@elpilarcorp.com.mx
(222) 266 3040
Puebla

136
Ivi Constructora
Guillermo
Guillermo Jarrillo
guillermo.jarillo@iviconstructora.com
(222) 296 8365
Puebla

137
Hogar y Diseño
Sergio Antonio
Sergio Antonio Moreno Sánchez
smoreno@hyd.com.mx
(222) 891 3000
Puebla

139
Casas AMP
Adriana
Adriana Alcántara Montiel
contacto@casasamp.com
(222) 248 0300
Puebla

140
Aisa Constructora
José Pablo
José Pablo García Villar
jpgarcia@aisaconstructora.com
(222) 216 0191
Puebla

144
Grupo Lar
Hugo
Hugo Enedino Tostado Martínez
htostadom@grupolar.com
(555) 202 7871
México

145
Promotora Turística y Ecológica del Estado de Querétaro
Eduardo
Eduardo Ruiz Noriega
proteqsa@hotmail.com
(442) 216 7131 
Querétaro

146
ProdeQ
José Carlos
José Carlos Hernández Álvarez
ventas@prodeqro.com
(442) 295 0835
Querétaro

147
Magno Hogar
Gonzalo
Gonzalo Urquiza Corredor
ppolo@magnohogar.com.mx
(442) 218 4598
Querétaro

147
Magno Hogar
Gonzalo
Gonzalo Urquiza Corredor
gurquiza@magnohogar.com.mx
(442) 218 4598
Querétaro

148
Urbana México
Juan Camilo
Juan Camilo Suárez Zambrano
juanc.suarez@urbanamexico.com.mx
(442) 223 7554
Querétaro

152
Cadu Inmobiliaria
Manuel
Manuel Araiza Luévano
manuel@caducancun.com
(998) 193 1100
Cancún

154
La Quinta Bonita
Rurico
Rurico Millán Cepeda
bgconstructor@prodigy.net.mx
(998) 1494482
Chetumal

155
Urbi
Arturo
Arturo López Ávila
arturo.lopez@urbi.com
(998) 8436464
Cancún

155
Urbi
José
José
jose.ocon@urbi.com
(998) 8436464
Cancún

156
Impulsores de la Construcción y Asesores
Víctor Manuel
Víctor Manuel Tinajero Ceballos
victormtinajero@hotmail.com
(998) 
Cancún

158
Soluciones Inmobiliarias A2R
David
David Hernández Pérez
rene@ingenieriaynegocios.com
(998) 2730297
Cancún

160
Habitat de San Luis Potosí
Luis Alfonso
Luis Alfonso Nava Calvillo
lnava@prodigy.net.mx
(444) 812 9352
San Luis Potosí

161
Constructora Aicon
Carlos
Jesús Carlos Cepeda Rodríguez
carloscepeda@grupoaicon.com
(444) 813 7163
San Luis Potosí

162
Comebi
Manuel
Manuel del Valle Lopez
mdelvalle@comebi.com.mx
(444) 811 1005
San Luis Potosí

163
Promotora San Vicente
José María
José María Vlasich de la Rosa
roberto.ley@sanvicente.com.mx
(667) 146 9692
Culiacán

164
Arko Consultores
Ricardo
Ricardo Martín Garate Magaña
direccion.administrativa@arkoconsultores.com
(669) 913 1992
Mazatlán
"

canadevi="
165
Impulsora de Proyectos Inmobiliarios de Culiacán
Miguel
Miguel de la Cruz Navarro
rclouthier@impulsainmuebles.com.mx
01 (667) 716 5800
Culiacán

165
Impulsora de Proyectos Inmobiliarios de Culiacán
Miguel
Miguel de la Cruz Navarro
mdelacruz@impulsainmuebles.com.mx
01 (667) 716 5800
Culiacán

166
Stanza
Carlos
Carlos Alfredo Estrada Jiménez
carlosestrada@stanzaresidencial.com
(667) 713 1305
Culiacán

167
Micsa Desarrolladora
Jorge Francisco
Jorge Francisco Frías Melgoza
marredondo@micsadesarrolladora.com
(667) 712 8532
Culiacán

168
Hemme Desarrollos
Esteban
Esteban Morales Osuna
esteban.morales@grupoemme.mx
(668) 177 0707
Los Mochis

169
Derex Desarrollo Residencial
Francisco Javier
Francisco Javier Hurtado Amaya
derex@derex.com.mx
(662) 212 1242
Hermosillo

169
Derex Desarrollo Residencial
N.D.
López
clopez@derex.com.mx
(662) 212 1242
Hermosillo

169
Derex Desarrollo Residencial
N.D.
Espinoza
scespinoza@derex.com.mx
(662) 212 1242
Hermosillo

170
Grupo Crece
Edith
Edith
edith@grupocrece.com.mx
(662) 216 0555
Hermosillo

170
Grupo Crece
Ricardo
Ricardo
ricardo@grupocrece.com.mx;
(662) 216 0555
Hermosillo

170
Grupo Crece
Conrado
Conrado Francisco Javier Valenzuela Duarte
33estrategias@gmail.com
(662) 216 0555
Hermosillo

171
Constructora e Inmobiliaria La Bahía
Ramiro
Ramiro José Páez Cruz
cibsa@prodigy.net..mx
(662) 226 0880
Guaymas

172
Espacio CTU
Lizette
Lizette Munguía Varela
lmunguia@espacioctu.com.mx
01 (662) 216 8665
Hermosillo

173
Promotora de Hogares
Ricardo
Ricardo Yáñez Navarro
ryanez@promotoradehogares.com
(662) 214 7340
Hermosillo

174
Edificaciones Boza
Ángel
Ángel Bours
angelbours@gmail.com
01 (642) 422 6803
Navojoa

175
Residencial Villa California
Roberto
Roberto Duron Palomares
villacali@prodigy.net.mx
01 (644) 414 3344
Ciudad Obregón

176
SQ Axicasa
Samuel
Samuel Alfonso Sánchez Gándara
promosaga@prodigy.net.mx 
(644) 413 1868
Ciudad Obregón

177
Edificadora PIBO
Gerardo
Gerardo Martínez Jiménez
gerardo.martinez@pibo.com.mx
(644) 411 0603
Obregón

178
Constructora Altos Bajío
Gerardo
Gerardo Nieto Santoyo
abtorredeparis@hotmail.com
(644) 415 6800
Obregón

179
Constructora Vertex
José Antonio
José Antonio Iturribarria Félix
jiturribarria@vertex86.com.mx
(644) 410 3330
Obregón

180
Oasis Urbano Residencial
Jesús
Jesús Héctor Almeida Flores
jesus.almeida@oasisresidencial.com.mx
(662) 214 2334
Hermosillo

182
Vive Pomoca
Gustavo
Gustavo Carrera Falcón
gustavo.carrera@vivepomoca.com.mx
(993) 317 9498
Villahermosa

182
Vive Pomoca
Gustavo
Gustavo Carrera Falcón
gcf1964@hotmail.com
(993) 317 9498
Villahermosa

183
Hogares SM
Lázaro
Lázaro Rodríguez González
lazaror@hogaressm.com
(81) 4040 2252
Matamoros

184
Construcciones Horgon
Horacio
Horacio González Ramiro
consthorgon@gmail.com
(831) 232 7440
El Mante

185
Idecasa
Pablo Alberto
Pablo Alberto Moreno Torres
pmoreno@idecasa.com.mx
(899) 951 8701
Reynosa

188
Landus Grupo Inmobiliario
Mario Alberto
Mario Alberto Muñoz Ramos
mmunoz@landus.com.mx
(899) 921 2430
Reynosa

189
Grupo del Noreste
Antonio
Antonio Carlos Valdez Balboa
acvaldez@grupodelnoreste.com.mx
(834) 316 2555
Ciudad Victoria

191
Gi Tu Casa
José Alberto
José Alberto Cuapio Castrejón
gitucasa@hotmail.com
(246) 462 3497
Tlaxcala

191
Gi Tu Casa
José Alberto
José Alberto Cuapio Castrejón
proyectos.gitucasa@hotmail.com;
(246) 462 3497
Tlaxcala

192
Corporación Malintzi
José Alberto
José Alberto Cuapio Castrejón
corporacion_inmalintzi@prodigy.net.mx
(246)
Tlaxcala

193
Hábita Promotora y Constructora de Ciudades
Alejandro
Alejandro Jiménez Haces
aljiha@hotmail.com
(272)724 8644
Orizaba

194
CIUUSA
Remigio
Remigio Uscanga Domínguez
ciuusa@prodigy.net.mx
(229) 935 2118
Veracruz

195
Casas Díaz
Félix
Félix C. Díaz Reyes
direccion@casasdiaz.com.mx
(229) 931 3437
Veracruz

196
Urbanizadora Medellín
José Alahin
José Alahin Prieto Contreras
m2707136@yahoo.com.mx
(229) 989 6900
Veracruz

197
Constructora Itsa
Jaime
Jaime Berger Silva
jberger@itsa.com.mx
(229) 922 5555
Veracruz

198
Viviendas Veracruz
Sergio
Sergio Sánchez Gómez
sas59@megared.net.mx
(229) 980 3590
Veracruz

199
Casas Provisa
Armando
Armando Puente Lulet
armado_puente1@hotmail.com
(229) 932 7536
Veracruz

200
Constructora e Inmobiliaria Sosa Zamudio
Jorgé Miguel
Jorge Miguel Sosa Zamudio
jorgesozaz@yahoo.com.mx
(229) 924 1530
Veracruz

204
Construcasa
Ricardo
Ricardo Arturo Combaluzier Medina
rcomba@prodigy.net.mx
(999) 920 1255
Mérida

205
Promotores de Vivienda de Caucel
Dwight
Dwight Navarrete Muñoz
negociosmina@prodigy.net.mx
(999) 920 3499
Mérida

206
Cocoma
Pedro
Pedro Agustín Cabrera
cocomaingenieria@prodigy.net.mx
(999) 925 3686
Mérida

207
Provi Vivienda
Eduardo
Eduardo Ancona Cámara
eancona@grupoprovi.com.mx
(999) 944 6513
Mérida

208
Promotora AM
Alejandro
Alejandro José Acosta Paz
aacosta@casasneo.com
(999) 927 1006
Mérida

209
Neogar
Carlos
Carlos Guillermo Medina Rodríguez
carlosmedinarodriguez@neogar.com.mx
(999) 945 5241
Mérida

210
GDI de la Península
Hyrvan
Hyrvan Martínez Zapata
hcommsa@prodigy.net.mx
(999) 926 5959
Mérida

211
Crear Hogares
Pedro
Pedro Solís Millet
psm@crearhogares.com
(999) 913 8850
Mérida

213
Promotora Peninsular de Vivienda
Ermilda
Ermilda López Poot
huchimdoctor@yahoo.com.mx
(999) 987 8724
Mérida"


canadevi = "

1
Aprendha
Haydee
Haydee Mendoza Durán
aprendha@yahoo.com.mx
(499)-963-5604
Aguascalientes

2
Vicarar
Nora
Nora Rodríguez Mirelles 
n.rodriguez@vicarar.com.mx
(499)-912-8950
Aguascalientes

3
El Encino
NO
Alfonso Barba Aceves
mmacias@duelencino.com
(449)-996-6702
Aguascalientes

4
GCMEX Grupo Inmobiliario
Jaime
Jaime Álvaro Lares Rojas
jlares@gcmex.com
(333)-826-3228
Baja California

5
Promotora y Constructora Santa Fe
Eric David
Eric David Valenzuela Chon
santafepyc@gmail.com
646-2047083
Baja California

6
Promotora y Constructora Santa Fe
Eric David
Eric David Valenzuela Chon
ingchon@gmail.co
646-2047083
Baja California

7
Toledo & Asociados
Francisco
Francisco Toledo Cobarrubias
fco_toledo@msn.com
(686) 116-5560
Baja California

8
Derex Desarrollo Residencial
Ernesto
Ernesto Armenta
earmenta@derex.com
(664) 608-7070
Baja California

9
DSM Constructora
Daniel
Daniel Alberto Salgado Méndez
dsm_constructora@yahoo.com.mx
(646) 176-6922
Baja California

10
Constructora Marqco
Carlos Alberto
Carlos ALberto Mejía Santa Ana 
cmejia@constructoramarqco.com
(664)-400-9355
Baja California

11
Harvil
Raúl
Raúl Villanueva López
rvillanueva55@hotmail.com
(686)-556-5434
Baja California

12
Harvil
Raúl
Raúl Villanueva López
harvil55@hotmail.com
(686)-556-5434
Baja California

13
Camaos Supervisión y Construcción
Carlos
Carlos Ángeles González
camaos@prodigy.net.mx
(442) 166-1219
Querétaro

14
Sayco Homes
Adán
Adán Sánchez Martínez
sama_arq@hotmail.com
(442) 254-3173 

15
Desarrollos Inmobiliarios Laguna
Carlos
Carlos Muela Muñoz
cmuela@dil.com.mx
(55)- 5593-4500
Ciudad de México

16
Inmobiliaria Basgar
Fernando
Fernando González Martínez
inmobiliariabasgar@yahoo.es
(722) 214-4514
Estado de México

17
Alteq Construcciones
Juan José
Juan José González Mendoza
jgonzalez@metrovivienda.com.mx
(55) 9177-9090
Estado de México

18
GAMSA
Guillermo
Guillermo García Moreno
gamsa2@prodigy.net.mx
(728) 285-252
Estado de México

19
Altta Homes
Enrique
Enrique Nahum Vainer Girs
enrique@sadasi.com
(55) 5201-0480
Ciudad de México

20
Meda Casa
Gonzalo
Gonzalo Méndez Dávalos
gonzalo.mendez@medacasa.com.mx
(351) 515-7973
Michoacán

21
Desarrolladora de Entornos Ecológicos
Raymundo
Raymundo López Olvera
raymundo-lopez-@hotmail.com
(443) 324-7716
Morelia

22
Desarrolladora Delta
Miguel
Miguel Betancourt
mbetancourtn@gmail.com
(443) 334-2607
Morelia
  
23
Inmobiliaria Country
Manuel
Manuel Flores Arreygue
urbasurmorelia@yahoo.com.mx
(443) 315-2205
Morelia
"
"
17
Casas Alteq
Juan José
Juan José González Mendoza
jgonzalez@casasaltec.com
(55) 9177-9090
Estado de México

INMOBILIARIA COUNTRY SA DE CV MANUEL FLORES ARREYGUE  ext. 106 
RESIDENCIAL TORREÓN NUEVO S.A. DE C.V. MANUEL NOCETTI TIZNADO (443) 308-2250 residencial_torreon_nuevo@yahoo.com.mx
DESARROLLO INMOBILIARIO COINTZIO S.A. DE C.V. DIEGO VILCHIS MEDRANO (55) 5272-2044 dvilchis@casasarko.com.mx
DESARROLLO INMOBILIARIO ITZICUARO S.A. DE C.V. DIEGO VILCHIS MEDRANO (55) 5272-2044 dvilchis@casasarko.com.mx


ALTEQ CONSTRUCCIONES S.A. DE C.V. JUAN JOSE GONZÁLEZ MENDOZA  
CONSTRUCCIONES CIVILES GAMSA S.A. DE C.V. GUILLERMO GARCÍA MORENO 6 
CONSORCIO HOGAR DE OCCIDENTE S.A DE C.V. JUAN JOSÉ GONZÁLEZ M. (55) 5917-7990 jgonzalez@casasaltec.com
ALTTA HOMES CENTRO SUR ENRIQUE NAHUM VAINER GIRS  gbecerril@sadasi.com

   GRUPO FONSIER S.A. DE C.V. LUIS ALBERTO SÁNCHEZ CERVANTES (612)-129-4260  LURE CONSTRUCCIONES S.A. DE C.V. CARLOS DAVID CASTRO CHAPARRO (624)-173-0040 cdcastro82@hotmail.com DESARROLLADORA INMOBILIARIA DE LA PAZ, S.A. DE C.V. IVAN AHUMADA Ivan.ahumada@dipaz.com.mx DECORACIÓN CON CLASE, S.A. DE C.V. JOSÉ GERARDO FAZ MORENO (615)-152-1958 facturaciondamar@gmail.com Campeche CONSTRUCTORES UNIDOS DE CAMPECHE S.A. DE C.V. RAMÓN ESPÍNDOLA TORAYA (981) 815-1643 lucy.ruiz@cucsa.com.mx VÍCTOR MANUEL BURGOS PECH VÍCTOR MANUEL BURGOS PECH (981) 817-2703 uburgos62@hotmail.com CONSTRUCCIONES Y SISTEMAS DE ING. CIVIL S.A. DE C.V. BEATRIZ ESTHER PINZÓN CEBALLOS (981) 811-5394 csi92@hotmail.com INGENIERIA Y SERVICIOS ESPECIALIZADOS DE CAMPECHE S.A. DE C.V. OSWALDO AGUSTO ROSADO RODRÍGUEZ (981) 813-1316 o_r_rodriguez@hotmail.com ARMANDO MOLINA DURAN ARMANDO MOLINA DURA (981) 133-2331 modaxx@hotmail.com CARLOS RAMON CACARES ZETINA CARLOS RAMON CACARES ZETINA (981) 829-0322 ingenierocarloscaceres@gmail.com CONSTRUCTORA E INMOBILIARIA PIEDRA DE LUZ VICTOR MANUEL BURGOS PECH (981) 829-1969 piedraluz806002@hotmail.com INMOBILIARIA ISLA AGUADA S.A. DE C.V. CÉSAR ENRIQUE FERRER SOLIS (938) 266-4800 ceferrer@hotmail.com GRUPO CONSTRUCTOR VARO DE CAMPECHE S.A. DE C.V. MANUEL RODRIGO VALLADARES GUZMÁN (981) 816-1776 grupovaro@hotmail.com CONSTRUFUTURO LUIS MOISÉS CLEMENTE COUTIÑO (962) 626-1094 (962) 112- 9370 construfuturo@hotmail.com.mx FIGO CONSTRUCCIONES, S.A. DE C.V. ÓSCAR ALEJANDRO FIGUEROA (961) 140-2220 oscaralejandrofigueroa@gmail.com ARQASA CONSTRUCTORES S.A. DE C.V. JULIO CESAR BERMUDEZ BERMUDEZ (963) 632-3336 ggordillo@arqasa.com CONSTRUCTORA INMOBILIARIA HUITEPEC S.A. DE C.V. JOSE LUIS ORANTES PASTRANA (961) 615-6901 cihuitepec@hotmail.com INMOBILIARIA REALFE, S.A. DE C.V. GABRIEL MAJARREZ JUÁREZ (962) 624-0739 gabrielmanjarrezj@yahoo.com.mx PROYECTOS Y ACABADOS DEL SURESTE S.A. DE C.V. MIGUEL ÁNGEL DIAZ SOL (961)-175-9373 (961)-179-1989 Arq.miguelangeldiazsol@hotmail.com Chihuahua JOSÉ LUIS CARRASCO GIL JOSÉ LUIS CARRASCO GIL (614) 483-0709 jlcgil59@yahoo.com.mx ÁNGEL GUTIÉRREZ CASTILLO ÁNGEL GUTIÉRREZ CASTILLO (614) 410-1954 icangelgtz@prodigy.net.mx JESÚS MANUEL MONTILLA TREJO JESÚS MANUEL MONTILLA TREJO (614) 426-5650 jesusmontilla7@hotmail.com ALARIFE DE MÉXICO S.A. DE C.V. CÉSAR OCTAVIO NÁJERA RODRIGUEZ (656) 682-4256 alarifecesar@hotmail.com SIIMON S.A. DE C.V. LUIS CARLOS MONREAL LERMA (656) 617-7141 monreal@siimon.com.mx ALTTA HOMES NORTE S. DE R.L. DE C.V. JORGE SOLANO VEGA (55)-9138-9999 Ext. 71 jsolano@sadasi.com JOSE ALGEL CASTRO PALMA JOSE ALGEL CASTO PALMA (614) 256-1988 arq.angelcastro@hotmail.com JOSE CONCEPCIÓN MEDINA BATREZ JOSE CONCEPCIÓN MEDINA BATREZ jmedina_batres@hotmail.com EVA GABRIELA LOZANO MADRID EVA GABRIELA LOZANO MADRID (656) 407-5636 glmadrid@yahoo.com.mx LUIS FERNANDO RÍOS ORTIZ LUIS FERNANDO RÍOS ORTIZ (656) 618-6751 ing.fernando@hotmail.com Ciudad de México DESARROLLOS INMOBILIARIOS SADASI S.A DE C.V. JORGE SOLANO VEGA (55)-9138-9999 Ext. 71 jsolano@sadasi.com DESARROLLOS INMOBILIARIOS LAGUNA, S.A. DE C.V. CARLOS MUELA MUÑOZ (55)- 5593-4500 cmuela@dil.com.mx"






universe = 1..213
universeString = []
universe.each{|x| target = x.to_s}
universe.each{|x| target = x.to_s; universeString.push(target+"\n")}
universeString

canadeviArr = []
universeString.each{|x|}