class ProductsController < ApplicationController
  
  def show
	product = Product.find(params[:id])
  	myUrl = product.url
  	redirect_to myUrl
  end
end
