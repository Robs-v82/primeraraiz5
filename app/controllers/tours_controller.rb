class ToursController < ApplicationController
	
	after_action :remove_success_message, only: [:main]


	def main
		if session[:tour_status] == 'scheduled'
			@wire = true
			downPayment = Tour.find(session[:tour_id]).total*0.25
			downPayment = (downPayment+0.5).to_i
			@downPayment = '$'+number_with_delimiter(downPayment)
		end
		areas_order = Area.all.order(:district)
		areas_wrong = areas_order.uniq.pluck(:district)
		@areas = areas_wrong.rotate(-1) 
	end

	def demo
	end

	def new
	end

	def setPrice
		tour_info = price_params
		floorplanPrices = [1440,1680,1920,2160,2400,2640]
		modelPrices = [4640,5800,6960,8120,9280,10440]
		sizeArr = ['150','300','450','600','750','1000']
		timeArr = ['de una a dos', 'de dos a tres', 'de cuatro a cinco', 'de cinco a siete', 'de seis a ocho','alrededor de ocho']
		(0..5).each do |x|
			if modelPrices[x] == tour_info[:model_fee].to_i
				tour_info.store('size', sizeArr[x])
				tour_info.delete('model_fee')
				tour_info.store('model_fee', modelPrices[x])
				session[:timeSpan] = timeArr[x]
				if price_params[:floorplan] == "on"
					puts floorplanPrices, floorplanPrices[x]
					tour_info.store('floorplan_fee', floorplanPrices[x])
					session[:total] = tour_info[:model_fee] + tour_info[:floorplan_fee]
				else
					session[:total] = tour_info[:model_fee]
				end
				tour_info.delete('floorplan')
			end
		end
		tour_info.store("status","scheduled")
		subtotal = session[:total]/1.16
		vat = session[:total] - subtotal
		tour_info.store("total", session[:total])
		tour_info.store("subtotal", subtotal)
		tour_info.store("vat", vat)
		tour_info.store("status","scheduled")
		tour_info.store("location_id",session[:location_id])
		tour = Tour.new(tour_info)
		if tour.valid?
			tour.save
			session[:tour] = Tour.find(tour.id)
			session[:tour_id] = tour[:id]
			session[:tourPrice] = tour_info[:total]
			session[:tourRemainder] = tour_info[:total]*(0.75)
			session[:tour_id] = tour.id
			render json: {price: session[:tourPrice]}
		end
	end

	def getNeighborhoods
		targetDistric = getNeighbothoods_params[:district]
		targetNeighborhoods = Area.where("district='#{targetDistric}'").order(:name)
		render json: {neighborhoods: targetNeighborhoods}
	end

	def wire
		target_client = Client.find(session[:client_id])
		target_location = Location.find(session[:location_id])
		target_tour = Tour.find(session[:tour_id])
		target_appointment = Appointment.find(session[:appointment_id])
		UserMailer.wire_email(target_client, target_location, target_tour, target_appointment).deliver
		session[:tour_status] = target_tour.status
		redirect_to '/virtualtour'
	end

	private

	def price_params
		params.require(:tour).permit(:model_fee, :floorplan)
	end

	def getNeighbothoods_params
		params.require(:location).permit(:district)
	end
end
