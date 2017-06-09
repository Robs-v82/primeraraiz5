
productURL = "https://my.matterport.com/show/?m=UFT43gaV5Cx&lang=es"
productKey = productURL[34,11]
thumbURL = "https://my.matterport.com/api/v1/player/models/"+productKey+"/thumb"
product.thumb = URI.parse(thumbURL)

"https://my.matterport.com/api/v1/player/models/UFT43gaV5Cx/thumb"




urls = ["https://my.matterport.com/show/?m=JSqN5b3jeS4","https://my.matterport.com/show/?m=W43t7bYLcxV","https://my.matterport.com/show/?m=E5PUvwmHUcJ","https://my.matterport.com/show/?m=ZqL4fKCGivw","https://my.matterport.com/show/?m=Tvk9x5sZ7HZ","https://my.matterport.com/show/?m=Z5JscHJAuPV","https://my.matterport.com/show/?m=SE9ZzJYGbki","https://my.matterport.com/show/?m=fRYNjFNmWs5","https://my.matterport.com/show/?m=pxHHLwHBKmd","https://my.matterport.com/show/?m=jqAdGtVcrt3","https://my.matterport.com/show/?m=G61RdaBV2bP","https://my.matterport.com/show/?m=mJwM9vQ9fyG","https://my.matterport.com/show/?m=hysB5idbbVv","https://my.matterport.com/show/?m=8jikKCzqSy5","https://my.matterport.com/show/?m=Wtg2hfNQWWD","https://my.matterport.com/show/?m=ih5fbjgByVC"]

urls.each{|x| 
	myString=x[0]+"&lang=es"; 
	myName=x[1];
	myInstitution=x[2];
	Product.create(:url=>myString, :name=>myName, :institution_id=>myInstitution);
	product = Product.last;
	productKey = product.url[34,11];
	thumbURL = "https://my.matterport.com/api/v1/player/models/"+productKey+"/thumb";
	product.thumb = URI.parse(thumbURL);
	product.save
}

	thumbURL = "https://cdn-1.matterport.com/apifs/models/ZqL4fKCGivw/images/vFie4QzGj93/10.19.2016_17.04.23.jpg?t=2-3cfaff84fa12e209d2d752bcc7fd123626cc565d-1497633186-1";


urls = [
	"https://my.matterport.com/show/?m=j5RbFzib5uJ",	
	"https://my.matterport.com/show/?m=gwHtBNuPHdb",	
	"https://my.matterport.com/show/?m=YSh2sw9DegH",
]

urls = [
	"https://my.matterport.com/show/?m=8U6YM3KjVxH",
	"https://my.matterport.com/show/?m=Q4fxSzeX4mE",
	"https://my.matterport.com/show/?m=jrXcPZcFuok",
	"https://my.matterport.com/show/?m=NRWh4VHXoqT",
	"https://my.matterport.com/show/?m=TEpczd3rbJC",
	"https://my.matterport.com/show/?m=1yu7dkogBdW",
	"https://my.matterport.com/show/?m=V5twLeUCbpY",
	"https://my.matterport.com/show/?m=rfSzcjsgzwV",
	"https://my.matterport.com/show/?m=j29ePYThHfG"
]

urls = [
	"https://my.matterport.com/show/?m=xpW3txBEPQn"
]

urls = [
	"https://my.matterport.com/show/?m=SVWJr3KhutQ"
]
urls = [
	["https://my.matterport.com/show/?m=UFT43gaV5Cx","Ambar Tower",30]
]

urls = [
	["https://my.matterport.com/show/?m=p61dkc7gKbF","Fuentes de Balvanera",33]
]


(1..34).each{|x| Product.find(x).update(:name=>names[x-1])}

names = [
	"Depa Colonia Cuauhtémoc",
	"Cava - Casa 1810",
	"Rosewood Suite",
	"GAIA - Tienda Prado Norte",
	"Vive San Isidro - Casa 2",
	"Joy Juriquilla",
	"Vive San Isidro - Casa 1",
	"Enquentro",
	"Tres Lagos",
	"Departamentos Gutiérrez Zamora",
	"Salón de Jóvenes",
	"Salón de Fiestas A",
	"Ludoteca",
	"Salón de Fiestas B",
	"Gimnasio",
	"Departamento Muestra",
	"Plaza",
	"Lobby",
	"Roof Garden",
	"Condesa Cimatario",
	"Parque Norte Residencial - 75 Metros",
	"Parque Norte Residencial - 95 Metros",
	"Parque Norte Residencial - 88 Metros",
	"Celeste - Casas Atlas",
	"Dorato - Casas Atlas",
	"Nero - Casas Atlas",
	"Marbella - Casas Atlas",
	"Sabolla - Casas Atlas",
	"Olimpia - Casas Atlas",
	"Génova - Casas Atlas",
	"Torino - Casas Atlas",
	"Florentino - Casas Atlas",
	"Catedral Metropolitana de México",
	"Casa Interlomas - Luxury Habitat",
]
