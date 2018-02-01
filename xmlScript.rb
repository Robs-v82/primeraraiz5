require 'xmlsimple'
total = 0
myFiles = Dir.entries('XML')
myFiles.each{|x| myHash = XmlSimple.xml_in('XML/'+x); conceptos = myHash["Conceptos"]; conceptos.each{|y| total = total+y["Concepto"][0]["Importe"].to_f}}


myFiles = ["Home Depot.xml", "Uber_9.xml", "Axtel.xml", "Uber_10.xml", "Uber_1.xml", "Palacio de Hierro.xml", "Gaia.xml", "Gasolina_5.xml", "Uber_6.xml", "Adidas.xml", "Palacio de Hierro_2.xml", "Gasolina_3.xml", "Gasolina_4.xml", "Gasolina_1.xml", "Uber_4.xml", "Uber_7.xml", "Office Depot.xml", "Uber_3.xml", "Palacio de Hierro_3.xml", "Estacionamiento.xml", "Gasolina_2.xml", "Hotel W.xml", "Uber_5.xml", "Uber_8.xml", "Amazon.xml", "The Home Store.xml", "Uber_2.xml", "Telcel.xml", "pader.xml"]