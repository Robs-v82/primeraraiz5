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
		@logoUrl = domain+@institution.image.url
		@target_color = product.institution.color
		# respond_to do |format|
		# 	format.html
		# 	format.json {
		# 		render :json {
		# 			color: target_color
		# 		}
		# 	}
		# end
	end

	# def find
	# 	target_color = Product.find(session[:product_id]).institution.color
	# 	render json: { color: target_color }
	# end

	def lang
		# sleep 1
		trackGA
		product = Product.find(params[:id])
		lang = params[:lang]
		myUrl = product.url
		myUrl = myUrl[0..-3]
		myUrl = myUrl+"&lang="+lang
		redirect_to myUrl
	end

end
