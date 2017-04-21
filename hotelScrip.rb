hotel = "
	1
	Gran Hotel Alameda
	Liliana
	Liliana Enriquez
	reservacionesgranhotelalameda@hotmail.com
	Aguascalientes

	2
	Hotel Laffayette
	Sergio
	Sergio Castro
	ventasmex3@hotellaffayette.com
	Guadalajara

	3
	Hotel Celta	  
	Rosalba
	Rosalba González
	ventas2@hotelcelta.com
	Guadalajara

	4
	Hotel Malibu
	Patricia
	Patricia Orozco
	aorozco@hotelmalibu.com.mx
	Guadalajara

	5
	Real de Minas Bajío
	Susana
	Susana Rodríguez Ríos
	reservaciones@realdeminasbajio.mx
	León

	6
	Real de Minas Express
	Víctor
	Víctor Alonso Romero
	valonso@realdeminasexpress.com.mx
	León

	7
	Fortín Plaza
	Aline
	Aline Escalante Herrera
	gruposmex@hotelfortinplaza.com.mx
	Oaxaca

	8
	MM Gran Hotel
	Víctor
	Víctor Ramírez
	ventas1.mexico@mmgranhotel.com
	Puebla

	9
	Grupo Posadas
	Evelyn
	Evelyn Arenas
	ventas2fiqos@posadas.com
	Querétaro

	10
	Hoteles Misión
	Giovanni
	Giovanni Castañeda
	ventasgiovanni@hotelesmision.com.mx
	Ciudad de México
	"

hotel = "
	11
	Best Western Boka
	Vanessa
	Vanessa Carvajal
	vcarvajal@bwboka.com
	Veracruz

	12
	Brisas Hotels & Resorts
	Saneli
	Saneli Sánchez Rubin
	saneli.sanchez@brisas.com.mx
	Ciudad de México

	13
	Camino Real Veracruz
	Gabriela
	Gabriela Spinola Ramírez
	reservas.ver@caminoreal.com.mx
	Veracruz

	14
	Camino Real
	Ileana
	Ileana Jazmín lucas Alzúa
	villahermosa@caminoreal.com.mx
	Villahermosa

	15
	Galería Plaza
	Alma
	Alma Barrón
	alma.barrón@brisas.com.mx
	Veracruz

	16
	Gran Hotel Ancira
	Berenice
	Berenice Luna
	bls@hotel-ancira.com
	Monterrey
	
	17
	Grupo Habita
	Fernanda
	Fernanda Ibarra
	reservaciones@grupohabita.mx
	Ciudad de México

	18
	Grupo Posadas
	Eduardo
	Eduardo Tercero Basurto
	eduardo.tercero@posadas.com
	Ciudad de México

	19
	Hoteles Hilton
	Alicia
	Alicia Cooper
	alicia.cooper@hilton.com
	Ciudad de México

	20
	Hotel Garden Inn
	Keila
	Keila Tiburcio
	ventas.hilton@hgiveracruz.com
	Veracruz

	21
	Holiday Inn
	Sandra
	Sandra Hernández Sánchez
	ventas1@hiexguadalajaraexpo.com.mx
	Guadalajara

	22
	Holiday Inn
	NO
	NO
	sgarcia@hinnver.com.mx
	Veracruz

	23
	Hotel Costa Inn
	Rocío
	Rocío Becerra Magaña
	reservas@costainn.com
	Veracruz

	24
	Hotel Histórico Central
	Vladimir
	Vladimir Mayllen
	reservaciones@zocalocentral.com
	Ciudad de México

	25
	Hotel Imperial Veracruz
	Marcela
	Marcela Payón
	hotelimperialver@hotmail.com
	Veracruz

	26
	Hotel Mocambo
	Lidia
	Lidia Ruíz Ramón
	nfo@hotelmocambo.com.mx
	Veracruz

	27
	Hotel Punta Azul
	Lizeth
	Lizeth Chávez Vázquez
	ejecutivodeventas1@hotelpuntaazul.mx
	Veracruz

	28
	Hoteles Milenium
	NO
	NO
	cro@hotelesmilenium.com
	Monterrey

	29
	Hoteles NH
	Octavio
	Octavio Estrada
	group.mx@nh-hotels.com
	Ciudad de México

	30
	Resort Mundo Imperial
	Yayoi
	Yayoi Shibayama
	aca.reservaciones@mundoimperial.com
	Acapulco

	31
	Residencias D la Bonita
	Martín
	Martín Arce Herrera
	martin_a@dlabonita.com.mx
	Ciudad de México

	32
	Sevilla Palace
	Gustavo
	Gustavo López
	reservaciones@sevillapalace.com.mx
	Ciudad de México
"

hotelArr = hotel.split("\n\n")
hotelTres = []
hotelArr.each{|x| item=x.split("\n"); hotelTres.push(item)}
hotelTres.each{|x| Contact.create(:organization=>x[1], :name=>x[3], :email=>x[4], :state=>x[5], :category=>"hotel_restaurant")}