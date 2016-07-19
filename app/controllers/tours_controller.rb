class ToursController < ApplicationController
	def main
		areas_order = Area.all.order(:district)
		areas_wrong = areas_order.uniq.pluck(:district)
		@areas = areas_wrong.rotate(-1) 
	end

	def demo
	end

	def new
	end

	def setPrice
		session[:tourPrice] = price_params[:price].to_i
		render json: {price: session[:tourPrice]}
	end

	def getNeighborhoods
		targetDistric = getNeighbothoods_params[:district]
		targetNeighborhoods = Area.where("district='#{targetDistric}'").order(:name)
		render json: {neighborhoods: targetNeighborhoods}
	end

	private

	def price_params
		params.require(:tour).permit(:price)
	end

	def getNeighbothoods_params
		params.require(:tour).permit(:district)
	end
end
