operationArr = []
operationString.each_line{|l| line = l.split(","); operationArr.push(line)}
operationArr.each{|x|x.each{|y|y.strip!}}

operationArr.each{|x| Operation.create(date:x[1], name:x[2], source:x[3], scope:x[5], location:x[6], state_id:x[7], sedena:x[9], semar:x[10], pf:x[11], prg:x[12], state_in:x[13], municipality_in:x[14], manpower:x[15], goals:x[16])}
	

	


    t.integer  "state_id"
    t.string   "clave_estado"
    t.boolean  "sedena"
    t.boolean  "semar"
    t.boolean  "pf"
    t.boolean  "prg"
    t.boolean  "state_in"
    t.boolean  "municipality_in"

Event.create(:municipality_id=>"2015", :type_of_place=>"Vía pública urbana", :date=>"2017-09-25", :source=>"http://www.valorportamaulipas.info/2017/09/vive-vallehermoso-tarde-infernal-se.html", :type_of_event=>"Enfrentamiento", :type_of_aggressor=>"Crimen organizado", :notes=>"Bloqueos y enfrentamientos en diversos puntos entre grupos del crimen organizado. Atención.", :critical_event=>true)

Event.create(:municipality_id=>2007, :type_of_place=>"Vía pública urbana", :date=>"2017-09-25", :source=>"http://www.valorportamaulipas.info/2017/09/emboscan-soldados-en-oxxo-jacalitos-de.html", :type_of_event=>"Agresión", :target_organization=>"SEDENA", :type_of_aggressor=>"Crimen organizado", :critical_event=>true)

Event.create(:municipality_id=>495, :type_of_place=>"Vía pública urbana", :date=>"2017-09-25",:source=>"http://www.newshidalgo.mx/policias-de-zimapan-son-vinculados-a-proceso-por-el-delito-de-homicidio/", :type_of_event=>"Agresión", :subtype_of_event=>"Homicidio", :type_of_aggressor=>"Autoridad", :aggressor_name=>"Policía municipal", :notes=>"Ejecución en custodia", :critical_event=>true, :dead_unarmed_civilians=>1)

Event.create(:municipality_id=>835, :type_of_place=>"Carretera", :reference=>"Comunidad Nueva Italia", :date=>"2017-09-25", :source=>"http://www.eldiariodecoahuila.com.mx/seguridad/2017/9/26/zona-caliente-679728.html", :type_of_event=>"Agresión", :subtype_of_event=>"Homicidio", :type_of_aggressor=>"Crimen organizado", :notes=>"Ejecución de exlíder templario y sucesor de El Cenizo", :critical_event=>true, :dead_unarmed_civilians=>1)

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

  create_table "events", force: true do |t|
    t.integer  "serial_no"
    t.integer  "operation_id"
    t.integer  "municipality_id"
    t.string   "locality"
    t.string   "type_of_place"
    t.string   "reference"
    t.integer  "zip"
    t.date     "date"
    t.string   "source"
    t.string   "type_of_event"
    t.string   "subtype_of_event"
    t.string   "target_organization"
    t.string   "type_of_aggressor"
    t.string   "aggressor_name"
    t.string   "identity"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "critical_event"
    t.integer  "wounded_civil_servants"
    t.integer  "wounded_officers"
    t.string   "wounded_officers_agency"
    t.integer  "wounded_unarmed_civilians"
    t.integer  "wounded_armed_civilians"
    t.integer  "wounded_women"
    t.integer  "wounded_minors"
    t.integer  "wounded_indigenous"
    t.integer  "dead_civil_servants"
    t.integer  "dead_officers"
    t.string   "dead_officers_agency"
    t.integer  "dead_unarmed_civilians"
    t.integer  "dead_armed_civilians"
    t.integer  "dead_women"
    t.integer  "dead_minors"
    t.integer  "dead_indigenous"
    t.integer  "missing_civil_servants"
    t.integer  "missing_officers"
    t.string   "missing_officers_agency"
    t.integer  "missing_unarmed_civilians"
    t.integer  "missing_armed_civilians"
    t.integer  "missing_women"
    t.integer  "missing_minors"
    t.integer  "missing_indigenous"
    t.integer  "under_arrest_civil_servants"
    t.integer  "under_arrest_officers"
    t.string   "under_arrest_officers_agency"
    t.integer  "under_arrest_unarmed_civilians"
    t.integer  "under_arrest_armed_civilians"
    t.integer  "under_arrest_women"
    t.integer  "under_arrest_minors"
    t.integer  "under_arrest_indigenous"
    t.date     "detention_date"
    t.time     "detention_time"
    t.boolean  "detention_denial"
    t.boolean  "detention_violence"
    t.string   "detention_location"
  end


  target = Event.where(:type_of_event=>"Persecusión")
  target.each{|x| x.update(:type_of_event=>"Persecución")}

rawData=["09016","08037","08037","08029","08029","08019","08019","08019","08006","07026","06009","03008","02004","02004","02002","02002","32017","30178","30144","30087","30039","28041","28032","28032","28027","28025","28025","27014","27014","27002","25008","25008","25008","23005","23005","20303","20153","19048","19039","18020","18017","18017","18004","17025","16102","16102","16084","16009","15081","15033","15033","13076","12054","12039","12029","12006","12006","12001","12001","11037","11028","11020","11020","11011","11007"]

rawData="11028
11004
12032
12024
12001
12032
21012
30003
2001
8019
12039
14001
18004
28027
2004
3008
9007
12029
15057
16069
16102
19048
20067
28032
28025
28021
2004
3008
7106
9016
11007
11020
11037
12039
24035
30087
8037
8019
11017
11020
16053
25008
28041
28032
28032
30144
30144
8012
8012
5035
6001
6007
11015
11007
15057
16108
19039
23005
23008
25006
25006
28015
8019
5035
11035
12058
12001
12011
12035
13048
14098
18017
18020
27002
28015
28032
8019
5009
6007
11007
11026
11028
12011
12035
15061
16076
16084
19031
23010
26030
30115
30183
2003
7027
5035
12006
16009
17007
20153
21110
25006
25011
30039
30144
30175
3008
8007
6009
11007
11007
12001
15081
18017
20067
25001
25006
32010
1004
12006
16006
19031
25001
25008
28007
32017
1001
8019
5035
5035
13076
21132
25008
28032
30178
30087
1001
2002
2004
7026
8037
8019
8037
5012
11011
12035
16108
17025
23005
27006
28032
30087
2004
12054
23005
23005
25012
8027
6007
12011
14101
15122
18015
21132
25012
26029
26029
8017
16006
2002
9007
11028
19034
23005
26029
27014
27014
28032
3008
8032
15070
16076
18012
20213
25006
26029
27009
2004
2004
11027
12048
14085
16076
18017
23005
28041
6007
14100
15109
16078
20303
26030
28021
11020
12057
14030
19005
20288
20067
27013
1001
2001
8019
8037
11020
11008
12035
27016
28032
5035
12035
16009
18017
25006
2004
2004
2004
8066
9010
17029
17029
28025
28025
28027
30087
32034
8029
8029
8019
12001
13067
23005
23005
28021
30193
2004
2004
2001
2004
3003
7048
8029
8029
8066
9017
11023
12001
12059
16071
23005
30087
32010
3008
3003
12055
12055
15033
30193
18017
30157
30003
7045
11042
12038
16009
16102
18010
18017
22014
26029
1001
7101
8019
8025
8019
8048
11004
11042
12028
15033
15033
24028
28032
2004
8019
8006
12022
18017
18017
19039
20002
24028
26043
28021
28021
30130
32005"

