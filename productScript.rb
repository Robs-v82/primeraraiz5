
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
	thumbURL = "https://my.matterport.com/api/v1/player/models/xxFNJsQyZ3r/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/p61dkc7gKbF/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/UFT43gaV5Cx/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/svwjr3khutq/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/YpuasirHuEN/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/fZKAjzNr4WV/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/krTAD9qMUHF/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/Lmmwa2tiCXQ/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/LRryspkiPQ6/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/xrRzRN6ecNN/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/6QBWBQyCXA9/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/QHsSL4vvQWk/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/5yHWqkuQsRG/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/XFK9P9dgwPv/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/kepwBzMSmKs/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/Eecv33ug8rJ/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/vRJQ6Qp5YtT/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/QEmWENkhsPm/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/8FT9xCbZbyt/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/NYncDCAyfJh/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/oCHj1fAgcuo/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/4fc8G9Wu7y9/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/tCNEFjkgFDD/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/eyUaDHTwaWA/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/K45UkKcwDVU/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/hi7XRUW47DP/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/hi7XRUW47DP/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/3MQ7RDtnnyc/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/3x8xYQYWn5J/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/gXstTx8VxM7/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/fNW2ovwamDq/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/9jGZnTQHK45/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/NzdfGrzotp2/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/x3jJnm42FRp/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/96gnv7VhtKK/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/CxbfHPUx63c/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/yQzhaFLfu2q/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/NjoMrUD1Zkd/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/ogo1a3iXsXb/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/TKDuKvREfdz/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/Ss55nQM96pK/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/ndw2wJtD37A/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/e2djtSEzLBo/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/VJYYKwEvyyo/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/jA9RV7UMkMt/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/JS3Zwjemmt7/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/o94sobZb7sK/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/BM7ar5X6V71/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/koHrJTsAss6/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/z7KY9QPPah5/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/Gk5cGB1EJiS/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/MZVv78qvuDp/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/pVJDf2A43q2/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/7WHTHYUJo1y/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/4eo8iGthYQT/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/XxtDvUdjPJu/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/9STKxMMAm7H/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/g28FaHBZug3/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/2KehLRJkHDT/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/CvTBdFX95RV/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/9R8yxioL8RJ/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/5MWVPCyS6MT/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/NHKEFuyANxD/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/7ebD2XwtUa5/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/UaRW1tBtYe4/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/6ACBybojnkp/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/udxknsQ3hUe/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/4mfAWs3pNNQ/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/hiemnNhvdjC/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/RA6egkGPrkg/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/BS94C3PbYHn/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/9rZEz4peNbK/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/CpwNfaBumDt/thumb";
	thumbURL = "https://my.matterport.com/api/v1/player/models/sVjZmBPmW87/thumb";
	thumbURL = https://my.matterport.com/show/?m=YpuasirHuEN
	product.thumb = URI.parse(thumbURL);
	product.save
}

	thumbURL = "https://cdn-1.matterport.com/apifs/models/SVWJr3KhutQ/images/KvLeJohp3rv/06.08.2017_18.47.43.jpg?t=2-47dfab5d19e6d716afaef296814d58d7a8879dcf-1497652308-1";


urls = [
	"https://my.matterport.com/show/?m=j5RbFzib5uJ",	
	"https://my.matterport.com/show/?m=gwHtBNuPHdb",	
	"https://my.matterport.com/show/?m=YSh2sw9DegH",
]

https://my.matterport.com/show/LRryspkiPQ6&lang=es

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

target.each{|x| Product.find(x).update(:institution_id=>773)}

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

x = Municipality.create(clave_estado: "23", clave_munici: "23009", munici: "Tulum")
x = Municipality.create(clave_estado: "23", clave_munici: "23010", munici: "Bacalar")
x = Municipality.create(clave_estado: "23", clave_munici: "23011", munici: "Puerto Morelos")