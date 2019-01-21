require 'xmlsimple'
total = 0
dirName = "septiembre/Primera Raíz/Irapuato"
thisFiles = Dir.entries(dirName)
myFiles = []
thisFiles.each {|file| if File.extname(file)==".xml";
	myFiles.push(file); 
	end
	}
myFiles = myFiles.sort
myItems = []
myFiles.each{|x| myHash = XmlSimple.xml_in(dirName+'/'+x); conceptos = myHash["Conceptos"][0]["Concepto"]; conceptos.each{|y| total = total+y["Importe"].to_f; puts y["Importe"]; myItem={}; myItem["name"]=myHash["Emisor"][0]["Nombre"]; myItem["item"]=y["Descripcion"]; myItem["amount"]=y["Importe"].to_f;myItems.push(myItem)}}




myFiles = ["Home Depot.xml", "Uber_9.xml", "Axtel.xml", "Uber_10.xml", "Uber_1.xml", "Palacio de Hierro.xml", "Gaia.xml", "Gasolina_5.xml", "Uber_6.xml", "Adidas.xml", "Palacio de Hierro_2.xml", "Gasolina_3.xml", "Gasolina_4.xml", "Gasolina_1.xml", "Uber_4.xml", "Uber_7.xml", "Office Depot.xml", "Uber_3.xml", "Palacio de Hierro_3.xml", "Estacionamiento.xml", "Gasolina_2.xml", "Hotel W.xml", "Uber_5.xml", "Uber_8.xml", "Amazon.xml", "The Home Store.xml", "Uber_2.xml", "Telcel.xml", "pader.xml"]

target["Conceptos"]


filenames = ["enero/Primera Raíz", "febrero/Primera Raíz", "marzo 2/Primera Raíz", "abril/Primera Raíz", "mayo/Primera Raíz", "junio/Primera Raíz", "julio/Primera Raíz", "agosto/Primera Raíz", "agosto/Primera Raíz/Querétaro", "agosto/Primera Raíz/San Luis Potosí", "agosto/Primera Raíz/Toluca", "septiembre/Primera Raíz", "septiembre/Primera Raíz/Irapuato"]