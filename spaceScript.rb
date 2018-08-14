contacts = Contact.all
myArr=[]
contacts.each{|contact| x=contact.first_name.nil?; if x==false; myArr.push(contact.id) end}
myArr.each{|y| target=Contact.find(y); newString=target.first_name.strip; target.update(:first_name=>newString)}


contacts = Contact.all
myArr=[]
contacts.each{|contact| x=contact.name.nil?; if x==false; myArr.push(contact.id) end}
myArr.each{|y| target=Contact.find(y); newString=target.name.strip; target.update(:name=>newString)}
	