class ToursController < ApplicationController
	
	after_action :remove_success_message, only: [:main]
	before_action :require_metro_area, only: [:new]


	def main
		session[:metro_area] = nil
		if session[:tour_status] == 'down_payment'
			@charge = true
		end
		if session[:tour_status] == 'fully_paid'
			@paid = true
		end
		if session[:tour_status] == 'scheduled'
			@wire = true
			downPayment = Tour.find(session[:tour_id]).total*0.25
			downPayment = (downPayment+0.5).to_i
			@downPayment = '$'+number_with_delimiter(downPayment)
		end

		if session[:tour_status] == 'down_payment'
			@charge = true
		end
		if session[:tour_status] == 'fully_paid'
			@paid = true
		end
		if session[:tour_status] == 'scheduled'
			@wire = true
			downPayment = Tour.find(session[:tour_id]).total*0.25
			downPayment = (downPayment+0.5).to_i
			@downPayment = '$'+number_with_delimiter(downPayment)
		end
		areas_order = Area.where("metro_area='CDMX'").order(:district)
		areas_wrong = areas_order.uniq.pluck(:district)
		@areas = areas_wrong.rotate(-1) 
		@floorplanPrices = ['$1,240','$1,380','$1,520','$1,660','$1,800','$1,940']
		@modelPrices = ['$2,940','$3,620','$4,280','$4,940','$4,560','$6,280']
		session[:subscription] = true
		session[:installments] = 1
	end

	def new
		if session[:metro_area] == "CDMX"
			@banner = "CDMX"
		elsif session[:metro_area] == "Guadalajara"
			@banner = "GDL"
		elsif session[:metro_area] == "Querétaro"
			@banner = "QRO"
		end
		areas_order = Area.where("metro_area='#{session[:metro_area]}'").order(:district)
		areas_wrong = areas_order.uniq.pluck(:district)
		@areas = areas_wrong.rotate(-1) 
		@floorplanPrices = ['$1,240','$1,380','$1,520','$1,660','$1,800','$1,940']
		@modelPrices = ['$2,940','$3,620','$4,280','$4,940','$5,560','$6,280']
		session[:subscription] = true	
	end

	def demo
	end

	def setPrice
		tour_info = price_params
		floorplanPrices = [1240,1380,1520,1660,1800,1940]
		modelPrices = [2940,3620,4280,4940,5560,6280]
		modelTime = [180,180,240,240,360,360]
		sizeArr = ['150','300','450','600','750','1000']
		timeArr = ['de una a dos', 'de una a dos', 'de dos a tres', 'de dos a tres', 'de tres a cuatro','de tres a cuatro']
		(0..5).each do |x|
			if modelPrices[x] == tour_info[:model_fee].to_i
				tour_info.store('size', sizeArr[x])
				tour_info.delete('model_fee')
				tour_info.store('model_fee', modelPrices[x])
				session[:interval] = modelTime[x]
				puts 'XXxx'*100, session[:interval]
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
			# session[:tourPrice] = tour_info[:total]
			session[:tourPrice] = session[:total]
			session[:tourRemainder] = tour_info[:total]*(0.75)
			session[:tour_id] = tour.id
			if session[:metro_area] == "CDMX" || session[:metro_area] == nil
				disabledDates = []
				offDates = Day.pluck(:day)
				offDates.each{|day| thisDay = day.split(",").map { |s| s.to_i } ;disabledDates << thisDay}
			else
				disabledDates = [true]
				onDates = Day.where("metro_area='#{session[:metro_area]}'")
				onDates = onDates.pluck(:day)
				onDates.each{|day| thisDay = day.split(",").map { |s| s.to_i } ;disabledDates << thisDay}
			end
			render json: {
				price: session[:tourPrice],
				dates: disabledDates,
				interval: session[:interval],
			}
		end
	end

	def getNeighborhoods
		targetDistric = getNeighbothoods_params[:district]
		targetNeighborhoods = Area.where("district='#{targetDistric}'").order(:name)
		render json: {neighborhoods: targetNeighborhoods}
	end

	def getDistricts
		targetMetroArea = getDistricts_params[:metro_area]
		session[:metro_area] = targetMetroArea
		targetAreas = Area.where("metro_area='#{targetMetroArea}'").order(:district)
		targetDistricts = targetAreas.order(:district).select(:district).distinct
		session[:districts] = targetDistricts
		render json: {
			districts: targetDistricts,
			city: targetMetroArea,
		}
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

	def update
		target_tour = Tour.find(update_params[:id])
		target_tour.update("public_url" => update_params[:public_url])
		target_location = Location.find(target_tour[:location_id])
		target_client = Client.find(target_location[:client_id])
		if target_tour.public_url
			UserMailer.time_to_pay(target_client, target_location, target_tour).deliver
		end
		redirect_to '/admins'
	end

	def payment
		@greeting = greeting
		@tour = Tour.find(params[:id])
		@total = number_with_delimiter(@tour[:total])
		@model_fee = number_with_delimiter(@tour[:model_fee])
		if @tour[:floorplan_fee]
			@floorplan_fee = number_with_delimiter(@tour[:floorplan_fee])
		else
			@floorplan_fee = number_with_delimiter(0)
		end
		@downPayment = number_with_delimiter(@tour[:total]*0.25)
		@remainder = number_with_delimiter(@tour[:total]*0.75)
		target_location = Location.find(@tour[:location_id])
		@client = Client.find(target_location[:client_id])
		@name = @client.name.partition(" ").first
		deadline = @tour[:updated_at] + 1.year
		@deadline = I18n.l(deadline, :format => "%e de %B de %Y")
		session[:tourPrice] = @tour[:total]*3
		session[:status] = "remainder"
		session[:tour_id] = @tour.id
		session[:location_id] = target_location.id
		session[:client_id] = @client.id
	end

	def installments
		session[:installments] = 6
	end

	private

	def price_params
		params.require(:tour).permit(:model_fee, :floorplan)
	end

	def getNeighbothoods_params
		params.require(:location).permit(:district)
	end

	def getDistricts_params
		params.require(:location).permit(:metro_area)
	end

	def update_params
		params.require(:tour).permit(:id, :public_url)  
	end
end
