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
		else
			session[:product_errors] = new_product.errors.full_messages
		end
		redirect_to "/admins"
	end

	private

	def product_params
		params.require(:product).permit(:name, :url, :cdn, :institution_id)
	end

end
