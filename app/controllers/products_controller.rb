class ProductsController < ApplicationController
  
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

end
