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

	def intro
		@target_color = "#cc494f"
		product = Product.find(params[:id])
		@myUrl = product.url
		respond_to do |format|
			format.html
			format.json {
				render :json => @target_color.to_json
			}
		end
	end

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
