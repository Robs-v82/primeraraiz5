newYearSript.rb

myClients = []
myProducts = Product.all
myKeys = []
myProducts.each{|x| myKey=x.id; myKeys.push(myKey)}


myInstitution = []
myProducts.each{|x| if x.institution_id?; myInstitution.push(x.institution_id); end}

myContacts=[]
myInstitution.each{|x| productNames=[]; unless Institution.find(x).products==nil; myProducts=Institution.find(x).products; myProducts.each{|fo| productNames.push(fo.name)}; myProducts=myProducts.uniq end; unless Institution.find(x).contacts==nil; Institution.find(x).contacts.each{|y| z=y.id; thisArr=[]; thisArr.push(Contact.find(z).email); thisArr.push(Contact.find(z).first_name); thisArr.push(Contact.find(z).name); thisArr.push(Contact.find(z).mobile_phone); thisArr.push(Contact.find(z).other_phone); thisArr.push(productNames); myContacts.push(thisArr)}; end}


myContacts = myContacts.uniq


myID 
(107..222).each{|x| target=Product.find(x)}


