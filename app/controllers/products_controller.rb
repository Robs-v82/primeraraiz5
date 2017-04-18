class ProductsController < ApplicationController
  
	def trackGA
		Gabba::Gabba.new("UA-83714284-1", "primeraraiz.com").page_view("products", request.fullpath)
	end

	def show
		trackGA
		product = Product.find(params[:id])
		myUrl = product.url
		redirect_to myUrl
	end

end
