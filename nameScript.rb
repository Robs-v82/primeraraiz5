target = 1538..2075
contacts = []
target.each{|x|
	if Contact.find(x)
		myContact = Contact.find(x);
		myName = myContact.name;
		print(myName);
	end
}

source=[]
target.each{|x|
	myArray=[]
	myArray.push(x.id)
	myArray.push(x.name)
	source.push(myArray)
}

source.each{|x|
	print(x[1].length)
}