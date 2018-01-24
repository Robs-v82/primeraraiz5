rails g model Displacement date:date type source no_individuals:integer no_families:integer municipality:references localities

dataArr=[]
rawData.each_line{|l| line = l.split(","); dataArr.push(line)}
dataArr.each{|x|x.each{|y|y.strip!}}
dataArr.each{|x| id=Municipality.where(:clave_munici=>x[2]).last.id; Displacement.create(:date=>x[1], :type=>x[5], :source=>x[0], :no_individuals=>x[6], :no_families=>x[7], :municipality_id=>id, :localities=>x[3])}

rawData="http://bajopalabra.com.mx/piden-medidas-cautelares-para-indigenas-desplazados-por-crimen-en-guerrero#.V0iaxjXhAdU, 2016-02-17, 12028, , , Violencia generada por GCO y Edo, 500, 
http://www.prensalibrechiapas.com/2014/index.php/secciones/portada/item/3465-exigen-retorno-seguro-para-familias-desplazadas-de-oxchuc, 2016-03-30, 07064,  ,  , Violencia Política y Conflictividad Social,  , 36
http://www.jornada.unam.mx/2016/03/10/politica/006n1pol, 2016-03-10, 12026, , , Violencia generada por GCO y Edo, , 15
http://bajopalabra.com.mx/chilpancingo-asesinatos-desplazados-extorsion-y-115-policias-vigilan#.V2LMJdLhAdU, 2016-03-12, 12029,  ,  , Violencia generada por GCO y Edo,  , 40
http://www.milenio.com/region/Huicholes-expulsan-bautistas-Tuxpan_0_673132906.html;http://www.1070noticias.com.mx/confirma-gobierno-desplazados-religiosos-en-tuxpan/, 2016-01-28, 14019, Tuxpan de Bolaños, 140190109, Intolerancia Religiosa, 30, 
http://www.debate.com.mx/mazatlan/Aumenta-a-22-las-familias-desplazadas-por-violencia-20160309-0021.html, 2016-03-09, 25014, Corral de Piedra, 250140014, Violencia generada por GCO y Edo,  , 22
http://www.eluniversal.com.mx/articulo/estados/2016/05/15/saquean-y-destruyen-84-casas-de-tzotziles-en-chiapas, 2016-05-15, 07078, Mitzitón, 070780078, Intolerancia Religiosa, 350, 
https://www.elindependientedehidalgo.com.mx/archivo/2016/05/327357, 2016-05-04, 13070, Cerro del Gavilán, 130700028, Violencia Política y Conflictividad Social, 74,  
http://www.jornada.unam.mx/2016/06/17/politica/003n1pol, 2016-06-17, 25003, La Tuna, 250030835, Violencia generada por GCO y Edo, , 250
http://www.sinembargo.mx/20-06-2016/3056490, 2016-06-20, 25014,  ,  , Violencia generada por GCO y Edo,  , 52
http://www.proceso.com.mx/445140/desalojo-en-nochixtlan-provoco-desplazamiento-50-indigenas-mixtecos-codigo-dh, 2016-06-23, 20006, , , Violencia generada por GCO y Edo, 50, 
http://expreso.press/2016/07/29/huyen-50-familias-por-la-inseguridad/, 2016-07-29, 28003, , , Violencia generada por GCO y Edo, , 50
http://www.eluniversal.com.mx/articulo/estados/2016/08/8/familias-huyen-por-crimen-organizado, 2016-08-08, 12001, Barra Vieja, 120010085, Violencia generada por GCO y Edo,  , 30
http://suracapulco.mx/2/huyen-mas-de-600-pobladores-de-dos-comunidades-de-coyuca-de-catalan-ante-balaceras-entre-sicarios/, 2016-08-29, 12022, Rincón de Chámacua, 120220094, Violencia generada por GCO y Edo, 600, 
http://www.elsiglodedurango.com.mx/noticia/688432.familias-huyen-de-pueblo-nuevo-por-violencia.html, 2016-09-27, 10023, La Mesa de San Pedro,  , Violencia generada por GCO y Edo,  , 25
http://www.proceso.com.mx/441364/aumenta-desplazamiento-forzado-en-la-tarahumara-en-pleno-proceso-electoral, 2016-05-21, 08020, Huicochi, 80200411, Violencia generada por GCO y Edo, , 1000
http://www.versiones.com.mx/exodo-en-tlapacoyan-familias-abandonan-el-lugar-por-miedo-a-la-delincuencia/, 2016-04-22, 30183,  ,  , Violencia generada por GCO y Edo,  , 30
http://www.grieta.org.mx/index.php/2016/03/27/habitantes-de-la-sierra-viven-en-una-constante-intimidacion-por-parte-del-crimen-organizado/http://radiza.com.mx/juarez/noticia.individual.php?id=73687, 2016-03-30, 08029, , , Violencia generada por GCO y Edo, 304, 
http://www.laopinion.com/2016/03/18/ademas-de-pobre-y-violento-guerrero-se-queda-sin-medicos/, 2016-03-18, 12029,  ,  , Violencia generada por GCO y Edo, 60,  
http://diario.mx/Nacional/2016-05-28_73c1eab5/desplaza-a-familias-disputa-en-chenalho/, 2016-05-29, 07026, Puebla, 070260038, Violencia Política y Conflictividad Social, , 80
http://www.proceso.com.mx/467543/denuncian-desalojo-en-zacatecas-favorecer-a-minera-slim, 2016-12-23, 32026, Salaverna, 320260075, MegaProyectos,  , 16
http://www.eluniversal.com.mx/articulo/nacion/seguridad/2016/10/2/huyen-de-badiraguato-ante-clima-de-violencia, 2016-10-02, 25003, Huixiopa, 250030727, Violencia generada por GCO y Edo,  , 170
http://la-cronica.com.mx/los-desplazados-por-el-narco-huixiopa-sinaloa.html, 2016-10-21, 25003, Huixiopa, 250030727, Violencia generada por GCO y Edo, 1793, 
http://www.jornada.unam.mx/2016/11/04/estados/031n3est?partner=rss, 2016-11-04, 25007, Agua Caliente de Baca, 250070002, Violencia generada por GCO y Edo, 500,  
http://www.prensalibrechiapas.com/2014/index.php/secciones/portada/item/4128-desalojan-a-32-familias-de-amatenango-del-valle, 2016-11-21, 07007, La Granada, 070070006, Violencia Política y Conflictividad Social, , 32
https://www.sdpnoticias.com/local/guerrero/2016/12/07/destierran-a-50-familias-por-negarse-a-sembrar-amapola, 2016-12-16, 12074, Tlaltempanapa, 120740015, Violencia generada por GCO y Edo,  , 50
http://www.educaoaxaca.org/la-minuta/2166-violencia-pol%C3%ADtica-en-los-mixes-arroja-mil-desplazados.html, 2016-01-10, 20200, Guadalupe Victoria, 202000003, Violencia Política y Conflictividad Social, 1000,"	