class ProductsController < ApplicationController
	layout false
  
	def trackGA
		gabba = Gabba::Gabba.new("UA-83714284-1", "primeraraiz.com")
		gabba.identify_user(cookies[:__utma], cookies[:__utmz])
		gabba.page_view("products", request.fullpath)
	end

	def show
		# sleep 1
		trackGA
		product = Product.find(params[:id])
		myUrl = product.url
		redirect_to myUrl
	end

	def intro
		product = Product.find(params[:id])
		session[:product_id] = product.id
		@institution = Institution.find(product.institution_id)
		@name = product.name
		@myUrl = product.url
		@product_id = product.id.to_s
		domain = "https://primeraraiz.com"
		@thumb = domain+product.thumb.url
		@logoUrl = domain+@institution.image.url
		@target_color = product.institution.color
	end

	def hairdistrict
		product = Product.find(37)
		session[:product_id] = product.id
		@institution = Institution.find(product.institution_id)
		@name = product.name
		@myUrl = product.url
		@product_id = product.id.to_s
		domain = "https://primeraraiz.com"
		@thumb = domain+product.thumb.url
		@logoUrl = domain+@institution.image.url
		@target_color = product.institution.color
	end

	def vistabalbuena
		product = Product.find(42)
		session[:product_id] = product.id
		@institution = Institution.find(product.institution_id)
		@name = product.name
		@myUrl = product.url
		@product_id = product.id.to_s
		domain = "https://primeraraiz.com"
		@thumb = domain+product.thumb.url
		@target_color = product.institution.color
	end

	def StarPlatinoSanAntonio
		@name = "Star Platino San Antonio"
		@myUrl = "https://my.matterport.com/show/?m=2xNbRGfbxq9&lang=es"
		domain = "https://primeraraiz.com"
		@thumb = "https://primeraraiz.com/assets/san_antonio"
		@target_color = "#FFFFFF"
	end

	def starlaviga
		product = Product.find(226)
		session[:product_id] = product.id
		@institution = Institution.find(product.institution_id)
		@name = product.name
		@myUrl = product.url
		@product_id = product.id.to_s
		domain = "https://primeraraiz.com"
		@thumb = domain+product.thumb.url
		@target_color = product.institution.color
	end

	def rinconadalossauces
		x = params[:id].to_i
		if x == 1
			target_product = 76
		else
			target_product = 77
		end
		product = Product.find(target_product)
		session[:product_id] = product.id
		@institution = Institution.find(product.institution_id)
		@name = product.name
		@myUrl = product.url
		@product_id = product.id.to_s
		domain = "https://primeraraiz.com"
		@thumb = domain+product.thumb.url
		@target_color = product.institution.color
	end

	def pharos
		x = params[:id].to_i
		if x == 1
			target_product = 112
		else
			target_product = 113
		end
		product = Product.find(target_product)
		session[:product_id] = product.id
		@institution = Institution.find(product.institution_id)
		@name = product.name
		@myUrl = product.url
		@product_id = product.id.to_s
		domain = "https://primeraraiz.com"
		@thumb = domain+product.thumb.url
		@target_color = product.institution.color
	end



	def lang
		trackGA
		product = Product.find(params[:id])
		lang = params[:lang]
		myUrl = product.url
		myUrl = myUrl[0..-3]
		myUrl = myUrl+"&lang="+lang
		redirect_to myUrl
	end

	def create
		product_info = product_params
		puts "XXxx"*200
		unless product_info[:contact_id].nil?
			puts product_info[:contact_id]
			target_contact = Contact.find(product_info[:contact_id])
			product_info.delete('contact_id')
		end
		unless product_info[:message].nil?
			target_message = product_info[:message]
			product_info.delete('message')
		end
		thumbURL = product_info[:cdn]
		myString = product_info[:url]+"&lang=es"
		product_info.delete('url')
		product_info.store('url', myString)
		product_info.delete('cdn')
		new_product = Product.new(product_info)
		if new_product.valid?
			new_product.save
			product = Product.last
			product.thumb = URI.parse(thumbURL)
			product.save
			session[:new_product] = true
			session[:product_number] = product.id
		else
			session[:product_errors] = new_product.errors.full_messages
		end

		# ENVIAR CORREO
		if target_contact
			UserMailer.ready_email(target_contact, product, target_message).deliver
		end

		redirect_to "/admins"
	end

	  def getClients
	  	targetInstitution = getInstitution_params[:institution_id]
	    targetContacts = Institution.find(targetInstitution).contacts.order(:name)
	    render json: {clients: targetContacts}
	  end

	private

	def product_params
		params.require(:product).permit(:name, :url, :cdn, :institution_id, :contact_id, :message)
	end


	  def getInstitution_params
	    params.require(:contact).permit(:institution_id)
	  end

end
