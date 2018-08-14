def score(array)
  hash = Hash.new(0)
  array.each{|key| hash[key] += 1}
  hash
end

freqTable=score(rawData)

rawData=[11028,11004,12032,12024,12001,12032,21012,30003,2001,8019,12039,14001,18004,28027,2004,3008,9007,12029,15057,16069,16102,19048,20067,28032,28025,28021,2004,3008,7106,9016,11007,11020,11037,12039,24035,30087,8037,8019,11017,11020,16053,25008,28041,28032,28032,30144,30144,8012,8012,5035,6001,6007,11015,11007,15057,16108,19039,23005,23008,25006,25006,28015,8019,5035,11035,12058,12001,12011,12035,13048,14098,18017,18020,27002,28015,28032,8019,5009,6007,11007,11026,11028,12011,12035,15061,16076,16084,19031,23010,26030,30115,30183,2003,7027,5035,12006,16009,17007,20153,21110,25006,25011,30039,30144,30175,3008,8007,6009,11007,11007,12001,15081,18017,20067,25001,25006,32010,1004,12006,16006,19031,25001,25008,28007,32017,1001,8019,5035,5035,13076,21132,25008,28032,30178,30087,1001,2002,2004,7026,8037,8019,8037,5012,11011,12035,16108,17025,23005,27006,28032,30087,2004,12054,23005,23005,25012,8027,6007,12011,14101,15122,18015,21132,25012,26029,26029,8017,16006,2002,9007,11028,19034,23005,26029,27014,27014,28032,3008,8032,15070,16076,18012,20213,25006,26029,27009,2004,2004,11027,12048,14085,16076,18017,23005,28041,6007,14100,15109,16078,20303,26030,28021,11020,12057,14030,19005,20288,20067,27013,1001,2001,8019,8037,11020,11008,12035,27016,28032,5035,12035,16009,18017,25006,2004,2004,2004,8066,9010,17029,17029,28025,28025,28027,30087,32034,8029,8029,8019,12001,13067,23005,23005,28021,30193,2004,2004,2001,2004,3003,7048,8029,8029,8066,9017,11023,12001,12059,16071,23005,30087,32010,3008,3003,12055,12055,15033,30193,18017,30157,30003,7045,11042,12038,16009,16102,18010,18017,22014,26029,1001,7101,8019,8025,8019,8048,11004,11042,12028,15033,15033,24028,28032,2004,8019,8006,12022,18017,18017,19039,20002,24028,26043,28021,28021,30130,32005]

Mensaje,52
Agresión,569
Operación,101
Enfrentamiento,257
Persecución,28
Disputa de tierras,6
Desplazamiento,14
Detención arbitraria,10


rawData=["Implementar medidas de protección individual y colectiva","Convocar Comité de Justicia Transicional","Reforzar despliegue","Controlar deforestación","Verificar cumplimiento de protocolos de cese al fuego","Informar al SAT","Implementar medidas de protección individual y colectiva","Dar seguimiento al escenario de riesgo","Prestar asistencia humanitaria","Brindar atención a menores víctimas","Convocar Comité de Justicia Transicional","Brindar servicios para la prevención o atención de adicciones","Informar a las víctimas sobre sus derechos","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Acciones para prevenir ataques","Reforzar despliegue","Evitar que el despliegue genere miedo o afecte derechos de particulares","Convocar Comité de Justicia Transicional","Informar a las víctimas sobre sus derechos","Coordinar programa para evitar reclutamiento forzado","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Implementar medidas de protección individual y colectiva","Convocar Comité de Justicia Transicional","Ejecutar operaciones de registro y control","Reforzar despliegue","Reforzar operativos contra grupos armados ilegales","Proteger organizaciones indígenas","Investigar conductas reportadas","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Realizar comisiones humanitarias","Entregar ayudar humanitaria","Implementar la Ruta de Protección Colectiva","Reforzar operativos contra grupos armados ilegales","Convocar Comité de Justicia Transicional","Coordinar programa para evitar reclutamiento forzado","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Implementar medidas de protección individual y colectiva","Convocar Comité de Justicia Transicional","Reforzar despliegue","Prestar asistencia humanitaria","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Implementar medidas de protección individual y colectiva","Implementar programa de prevención del delito","Implementar programas sociales","Implementar un plan de asistencia sicosocial","Implementar programa de empleo","Coordinar programa para evitar reclutamiento forzado","Desarollar programas de superación de las condiciones de vulnerabilidad social","Brindar servicios para la prevención o atención de adicciones","Desarrollar un proceso de formación en derechos humanos y exigibilidad dirigido a líderes","Dirigir programas de autoprotección a líderes","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Acciones para prevenir ataques","Entregar ayudar humanitaria","Entregar ayuda respetando los criterios de especifidad cultural aplicables","Proporcionar los medios de transporte necesarios para la evacuación de familias","Conformar misiones con presencia de organismos intrnacionales de Derechos Humanos","Implementar medidas de protección individual y colectiva","Implementar medidas de protección individual y colectiva","Ejecutar operaciones de registro y control","Investigar conductas reportadas","Informar al SAT","Implementar medidas de protección individual y colectiva","Reforzar despliegue","Dar seguimiento al escenario de riesgo","Implementar medidas de protección individual y colectiva","Entregar ayudar humanitaria","Dar apoyo técnico a la alcaldiá, para construir un plan de contingencia","Brindar atención a menores víctimas","Brindar servicios para la prevención o atención de adicciones","Informar a las víctimas sobre sus derechos","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Implementar medidas de protección individual y colectiva","Convocar Comité de Justicia Transicional","Ejecutar operaciones de registro y control","Implementar medidas de protección individual y colectiva","Investigar conductas reportadas","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Reforzar operativos contra grupos armados ilegales","Seguir protocolos para ingresar a territorios de jurisdicción indígena","Ejecutar operaciones de registro y control","Convocar Comité de Justicia Transicional","Entregar ayudar humanitaria","Investigar conductas reportadas","Apoyar la coordinación de la respuesta estatal","Informar al SAT","Implementar medidas de protección individual y colectiva","Convocar Comité de Justicia Transicional","Ejecutar operaciones de registro y control","Investigar conductas reportadas","Entregar ayudar humanitaria","Apoyar la coordinación de la respuesta estatal","Apoyar la coordinación de la respuesta estatal","Informar al SAT"]


keys=["02004","08019","28032","23005","18017","05035","25006","12001","03008","28021","11007","30087","12035","26029","11020","08037","06007","01001","08029"]
munici=[]
keys.each{|x| outcome=Municipality.where(:clave_munici=>x).last; munici.push(outcome.munici)}

Tijuana
Chihuahua
Reynosa
Benito Juárez
Tepic
Torreón
Culiacán
Acapulco de Juárez
Los Cabos
El Mante
Celaya
Xalapa
Iguala de la Independencia
Guaymas
León
Juárez
Manzanillo
Aguascalientes
Guadalupe y Calvo 

rawData=["Gobernador","Gobernador","Fuerza de Tarea Conjunta Omega","Corpoamazonia","Mecanismo de Monitoreo y Verificación Tripartito","Autoridades","Gobernador","Gobernador","Unidad para la Atención y Reparación a Víctimas","Instituto Colombiano de Bienestar Familiar","Gobernador","Gobernador","Personería municipal","Comisión intersecretarial de alertas tempranas","Autoridades","Alcaldías","Ejército Nacional","Ejército Nacional","Gobernador","Personería municipal","Instituto Colombiano de Bienestar Familiar","Comisión intersecretarial de alertas tempranas","Autoridades","Gobernador","Gobernador","Ejército Nacional","Brigada 29 del Ejército Nacional","Brigada 29 del Ejército Nacional","Unidad Nacional de Protección","Fiscalía General de la Nación","Comisión intersecretarial de alertas tempranas","Autoridades","Dirección de Derechos Humanos del Ministerio del Interior","Unidad para la Atención y Reparación a Víctimas","Unidad Nacional de Protección","Fuerza pública","Gobernador","Instituto Colombiano de Bienestar Familiar","Personería municipal","Autoridades","Gobernador","Gobernador","Fuerza pública","Unidad para la Atención y Reparación a Víctimas","Comisión intersecretarial de alertas tempranas","Autoridades","Fuerza pública","Policía Nacional","Alcaldías","Hospital Divino Niño","Alcaldías","Instituto Colombiano de Bienestar Familiar","Instituto Colombiano de Bienestar Familiar","Instituto de salud deparrtamental","Personería municipal","Unidad Nacional de Protección","Comisión intersecretarial de alertas tempranas","Autoridades","Gobernador","Unidad para la Atención y Reparación a Víctimas","Unidad para la Atención y Reparación a Víctimas","Unidad para la Atención y Reparación a Víctimas","Dirección de Derechos Humanos del Ministerio del Interior","Unidad Nacional de Protección","Fuerza pública","Comandancia de Policía Departamental","Fiscalía General de la Nación","Autoridades","Gobernador","Comandancia de Policía Departamental","Gobernador","Alcaldías","Unidad para la Atención y Reparación a Víctimas","Unidad para la Atención y Reparación a Víctimas","Instituto Colombiano de Bienestar Familiar","Instituto Colombiano de Bienestar Familiar","Personería municipal","Comisión intersecretarial de alertas tempranas","Autoridades","Gobernador","Gobernador","Ejército Nacional","Unidad Nacional de Protección","Fiscalía General de la Nación","Comisión intersecretarial de alertas tempranas","Autoridades","Gobernador","Fuerza pública","Comandancia de Policía Departamental","Gobernador","Unidad para la Atención y Reparación a Víctimas","Fiscalía General de la Nación","Comisión intersecretarial de alertas tempranas","Autoridades","Gobernador","Gobernador","Tercera brigada del Ejército","Dirección seccional de fiscalías","Unidad para la Atención y Reparación a Víctimas","Comisión intersecretarial de alertas tempranas","Procuraduría provincial","Autoridades"]

 "Implementar medidas de protección individual y colectiva"=>12,
 "Convocar Comité de Justicia Transicional"=>9,
 "Reforzar despliegue"=>5,
 "Controlar deforestación"=>1,
 "Verificar cumplimiento de protocolos de cese al fuego"=>1,
 "Informar al SAT"=>12,
 "Dar seguimiento al escenario de riesgo"=>2,
 "Prestar asistencia humanitaria"=>2,
 "Brindar atención a menores víctimas"=>2,
 "Brindar servicios para la prevención o atención de adicciones"=>3,
 "Informar a las víctimas sobre sus derechos"=>3,
 "Apoyar la coordinación de la respuesta estatal"=>11,
 "Acciones para prevenir ataques"=>2,
 "Evitar que el despliegue genere miedo o afecte derechos de particulares"=>1,
 "Coordinar programa para evitar reclutamiento forzado"=>3,
 "Ejecutar operaciones de registro y control"=>5,
 "Reforzar operativos contra grupos armados ilegales"=>3,
 "Proteger organizaciones indígenas"=>1,
 "Investigar conductas reportadas"=>5,
 "Realizar comisiones humanitarias"=>1,
 "Entregar ayudar humanitaria"=>5,
 "Implementar la Ruta de Protección Colectiva"=>1,
 "Implementar programa de prevención del delito"=>1,
 "Implementar programas sociales"=>1,
 "Implementar un plan de asistencia sicosocial"=>1,
 "Implementar programa de empleo"=>1,
 "Desarollar programas de superación de las condiciones de vulnerabilidad social"=>
  1,
 "Desarrollar un proceso de formación en derechos humanos y exigibilidad dirigido a líderes"=>
  1,
 "Dirigir programas de autoprotección a líderes"=>1,
 "Entregar ayuda respetando los criterios de especifidad cultural aplicables"=>
  1,
 "Proporcionar los medios de transporte necesarios para la evacuación de familias"=>
  1,
 "Conformar misiones con presencia de organismos intrnacionales de Derechos Humanos"=>
  1,
 "Dar apoyo técnico a la alcaldiá, para construir un plan de contingencia"=>1,
 "Seguir protocolos para ingresar a territorios de jurisdicción indígena"=>1}




Chihuahua,121
Chiapas,18
Ciudad de México,17
Guanajuato,63
México,52
Nayarit,41
Tamaulipas,106
Veracruz,67
Baja California,46
Guerrero,78
Sonora,17
Tabasco,15
Colima,16
Michoacán,66
Sinaloa,28
Baja California Sur,27
Jalisco,28
Oaxaca,35
Puebla,32
Tlaxcala,4
Quintana Roo,42
San Luis Potosí,20
Zacatecas,15
Coahuila,17
Aguascalientes,12
Nuevo León,11
Hidalgo,12
Morelos,18
Querétaro,3
Durango,5
Yucatán,5