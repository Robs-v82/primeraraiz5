operationArr = []
operationString.each_line{|l| line = l.split(","); operationArr.push(line)}
operationArr.each{|x|x.each{|y|y.strip!}}

operationArr.each{|x|
	targetState = State.where(:clave_estado=>x[7]).first
	targetStateId = targetState.id
	targetMunicipality = Municipality.where(:clave_munici=>x[8]).first
	targetId = targetMunicipality.id
	Operation.create(date:x[1], name:x[2], source:x[3], scope:x[5], location:x[6], state_id:targetStateId, municipality_id:targetId, sedena:x[9], semar:x[10], pf:x[11], prg:x[12], state_in:x[13], municipality_in:x[14] manpower:x[15], goals:x[16], )
}


    t.integer  "state_id"
    t.string   "clave_estado"
    t.boolean  "sedena"
    t.boolean  "semar"
    t.boolean  "pf"
    t.boolean  "prg"
    t.boolean  "state_in"
    t.boolean  "municipality_in"




operationString = "1,2017-01-07,Operativo Costa-Soconusco,https://elorbe.com/seccion-politica/local/2017/07/02/autoridades-policiacas-y-militares-inician-operativo-costa-chiapas-2017.html,,Regional,Soconusco, Costa, Sierra de Chiapas y municipios fronterizos,07,,true,true,true,,true,,300,Reducir el índice delictivo como los robos a casas habitación, asaltos, extorsiones, tráfico de migrantes, de drogas y de armas
2,2017-01-07,Despliegue en Los Llanos,http://www.reporteciudadanochiapas.com/?p=154639,,Estatal,,07,,,,,,true,,500,Redoblar la seguridad y participar en la restitución de predios
3,2017-09-25,Operativo de blindaje,http://www.noventagrados.com.mx/seguridad/refuerza-ssp-seguridad-en-limites-con-edomex-jalisco-guerrero-colima-y-guanajuato.htm,,Regional,Edomex, Jalisco, Guerrero, Colima y Guanajuato,,,,,true,,,,,Evitar el paso de grupos delictivos entre estados
4,2017-01-07,Operativo Permanente de Vigilancia,http://tijuanainformativo.info/index.php/notcias-policiacas-y-seguridsad-de-tijuana-y-baja-california/item/64976-policias-municipales-retiran-de-las-calles-dos-bolsas-y-40-envoltorios-al-parecer-con-substancias-prohibidas,,Local,Ensenada,02,,true,,true,,true,,,Disuasión del delito y lograr entornos más seguros
6,2017-09-27,Regresan Militares a Zona serrana,http://laopcion.com.mx/noticia/187417/regresaran-170-militares-a-la-zona-serrana-invertiran-8-mdp-,,Municipal,Guachochi,08,08027,true,,,,,,170,Restituir a la policía municipal
7,2017-03-01,Operativo Escudo Chihuahua,http://laopcion.com.mx/noticia/187392/mantiene-gobierno-municipal-operativo-escudo-chihuahua-en-acceso-noroeste,,Municipal,Chihuahua,08,8037,,,,,,,,Evitar traslado de armas y delincuentes a la capital por la carretera
8,2017-09-27,Operativo Permanente contra Delincuencia,http://www.noventagrados.com.mx/seguridad/mantiene-ssp-operativo-permanente-contra-la-delincuencia.htm,,Estatal,Michoacán,16,,,,,,true,,,Con el objetivo de inhibir acciones delictivas en Michoacán, la institución trabaja con la instalación de puestos de control, filtros de revisión a personas y antecedentes vehiculares, patrullajes de prevención y recorridos pie tierra para coadyuvar a la reconstrucción del tejido social
9,2017-03-16,Operativo Puebla Segura,http://www.e-consulta.com/nota/2017-03-16/gobierno/trabajare-por-una-puebla-segura-senala-gali-al-arrancar-operativo,,Estatal,Acajete, Tepeaca, Acatzingo, Quecholac, Palmar de Bravo, Tecamachalco y Puebla,21,,true,,true,,true,,500,Atender delitos de alto impacto económico y social, que van desde el robo a transeúntes y pequeños negocios, hasta el de combustible
10,2017-09-29,Operativo Noas,https://www.elsiglodetorreon.com.mx/noticia/1384770.arranca-operativo-noas-buscan-disminuir-delitos-patrimoniales.html,,Municipal,Torreón,05,05035,true,,,,,true,114,Disminuir los delitos patrimoniales en sectores específicos de la ciudad.
11,2017-09-29,Llegan tropas a López,http://www.lapolaka.com/chihuahua-se-militariza/,,Municipal,López,08,08039,true,,,,,,,Permanecer en vigilancia constante tras la ola de violencia en aquella región al sur de Jimenez
12,2017-09-29,Brigada Policía Militar a Irapuato,https://www.am.com.mx/2017/09/29/local/anuncian-cuando-llegara-policia-militar-377598,,Municipal,Irapuato,11,11017,true,,,,,,3200,Ayudar con labor operativa
13,2017-09-29,Operativo colonia Americana,http://www.notisistema.com/noticias/desplegaran-operativo-en-la-colonia-americana-para-combatir-la-delincuencia/,,Localidad,Colonias Americana y Ladrón de Guevara,14,014120,,,,,true,true,80,Combatir la delincuencia
14,2017-01-10,Aumenta presencia militar en Coahuila,http://www.eldiariodecoahuila.com.mx/seguridad/2017/10/1/albergara-coahuila-ocho-soldados-ejercito-mexicano-680796.html,,Estatal,Coahuila,05,,true,,,,,,8000,Blindar el estado ante el acoso de la delincuencia organizada
15,2017-01-10,Operativo Noas,https://www.elsiglodetorreon.com.mx/noticia/1385166.canaco-aprueba-el-operativo-noas.html,,Municipal,Torreón,05,05035,,,true,,true,true,114,Evitar que se incrementen los delitos patrimoniales en sectores específicos de esta ciudad.
16,2017-01-10,Mega Cuartel de San Pedro,https://www.elsiglodetorreon.com.mx/noticia/1385374.llegan-otros-600-elementos-de-la-policia-militar-a-mega-cuartel-de-san-pedro.html,,Municipal,San Pedro,5,05033,true,true,,,,,3400,
17,2017-10-04,Apoyo a Tamaulipas,http://www.valorportamaulipas.info/2017/10/envian-militares-de-quintanaroo.html,,Estatal,Tamaulipas,28,,true,,,,,,370,Apoyar labores de seguridad. (Es el séptimo Regimiento de Caballería Motorizado de la 34 Zona Militar)
18,2017-10-06,Operativo MEGA,https://www.la-prensa.com.mx/policia/234811-inicia-operativo-mega-en-iztapalapa-gam-y-azcapotzalco,,Estatal,Distrito Federal,09,,,,,,true,,,Reducir el índice de delitos de alto impacto, generar presencia y certeza de seguridad siempre en defensa de tu integridad e intereses.
19,2017-11-10,Operativo retiro de polarizados,http://www.bcsnoticias.mx/bcs-reforzaran-los-cateos-operativos-seguridad-continua-retiro-polarizados/,,Municipal,La Paz,03,3003,true,true,,,true,true,,Aumentar número de cateos y operativos conttra la delincuencia organizada
20,2017-10-13,Operativo en Uruachi,http://entrelineas.com.mx/seguridad/despliega-fge-operativo-en-uruachi-para-brindar-seguridad-a-los-habitantes/,,Municipal,Uruachi,08,8066,,,,,true,,100,
21,2017-10-13,Operativo en Reynosa,http://www.valorportamaulipas.info/2017/10/trasciende-fuerte-operativo-en.html,,Municipal,Reynosa,28,028032,,,true,,,,,Salvaguadar integridad de habitantes (evitar enfrentamientos)"