class ApplicationController < ActionController::Base
 
 	protect_from_forgery with: :exception
	helper_method :current_agent, :current_user, :current_admin, :greeting, :set_auth, :set_date, :number_with_delimiter
	
	def greeting
		current_time = Time.zone.now.to_i
		midnight = Time.zone.now.beginning_of_day.to_i
		noon = Time.zone.now.middle_of_day.to_i
		five_pm = Time.zone.now.change(:hour => 17 ).to_i
		eight_pm = Time.zone.now.change(:hour => 20 ).to_i
		if midnight.upto(noon).include?(current_time)
			@greeting = "Buenos días"
		elsif noon.upto(eight_pm).include?(current_time)
			@greeting = "Buenas tardes"
		elsif eight_pm.upto(midnight + 1.day).include?(current_time)
			@greeting = "Buenas noches"
		end	
	end

	def require_login
		redirect_to "/" if session[:user_id] == nil
	end

	def require_metro_area
		redirect_to "/" if session[:metro_area] == nil
	end

	def require_correct_user
		user = User.find(params[:id])
		redirect_to "/" if current_user != user
	end

	def valid_property
		user = User.find(session[:user_id])
		unless user.properties.any?
			redirect_to "/users/#{session[:user_id]}"
		else
			userLastProperty = user.properties.last
			session[:property_id] = userLastProperty.id
			unless userLastProperty.appointments.any?
				redirect_to "/users/#{session[:user_id]}"
			end 
		end

	end

	def set_date(myString)
		words = myString.split(' ')
		if words[3] == "enero"
			month = "01"
		elsif words[3] == "febrero"
			month = "02"
		elsif words[3] == "marzo"
			month = "03"
		elsif words[3] == "abril"
			month = "04"
		elsif words[3] == "mayo"
			month = "05"
		elsif words[3] == "junio"
			month = "06"
		elsif words[3] == "julio"
			month = "07"
		elsif words[3] == "agosto"
			month = "08"
		elsif words[3] == "septiembre"
			month = "09"
		elsif words[3] == "octubre"
			month = "10"
		elsif words[3] == "noviembre"
			month = "11"
		elsif words[3] == "diciembre"
			month = "12"
		end
		return date = words[5] + "-" + month + "-" + words[1]
	end

	def remove_success_message
		if session[:status]
			session[:status] = nil
		end
		if session[:charge]
			session[:charge] = nil
		end
		if session[:tour_status]
			session[:tour_status] = nil
		end
	end

	def remove_contact_message
		if session[:new_contact]
			session[:new_contact] = nil
		end
		if session[:contact_errors]
			session[:contact_errors] = nil
		end
	end

	def remove_event_message
		if session[:new_event]
			session[:new_event] = nil
		end
		if session[:event_errors]
			session[:event_errors] = nil
		end
	end
	
	def remove_contact_message
		if session[:new_contact]
			session[:new_contact] = nil
		end
		if session[:contact_errors]
			session[:contact_errors] = nil
		end
	end	

	def remove_operation_message
		if session[:new_operation]
			session[:new_operation] = nil
		end
		if session[:operation_errors]
			session[:operation_errors] = nil
		end
	end

	def remove_institution_message
		if session[:new_institution]
			session[:new_institution] = nil
		end
		if session[:institution_errors]
			session[:institution_errors] = nil
		end
	end

	def remove_product_message
		if session[:new_product]
			session[:new_product] = nil
		end
		if session[:product_errors]
			session[:product_errors] = nil
		end
	end

	def remove_quote_message
		if session[:new_quote]
			session[:new_quote] = nil
		end
		if session[:quote_errors]
			session[:quote_errors] = nil
		end
	end

	def remove_event_destroyed_message
		if session[:destroyed_event] 
			session[:destroyed_event] = nil
		end
		if session[:product_errors]
			session[:product_errors] = nil
		end
	end

	def number_with_delimiter(number, delimiter=",", separator=".")
		begin
			number = number.floor
			parts = number.to_s.split('.')
			parts[0].gsub!(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1#{delimiter}")
			parts.join separator
		rescue
			number
		end
	end


	private

		def current_user
			@current_user ||= User.find(session[:user_id]) if session[:user_id]
		end

		def current_agent
			@current_agent ||= Agent.find(session[:agent_id]) if session[:agent_id]
		end

		def current_admin
			if session[:agent_id]
				@current_admin ||= true if Agent.find(session[:agent_id]).admin == true
			end
		end


		def set_auth
			@auth = session[:omniauth] if session[:omniauth]
		end

		def generalPrices
			@generalPrices = [
				{:item=>"completo100", :amount=>3300},
				{:item=>"completo200", :amount=>4200},
				{:item=>"completo300", :amount=>5100},
				{:item=>"completo400", :amount=>6000},
				{:item=>"completo500", :amount=>6900},
				{:item=>"completo1000", :amount=>7800},
				{:item=>"basico60", :amount=>3300},
				{:item=>"basico60x2", :amount=>4800},
				{:item=>"basico100", :amount=>4200},
				{:item=>"toma360", :amount=>150},
				{:item=>"video", :amount=>900},
				{:item=>"plano", :amount=>1200},
				{:item=>"hosting", :amount=>540},
				{:item=>"procesamiento", :amount=>1200},
				{:item=>"alimentos", :amount=>900},
				{:item=>"hospedajeA", :amount=>1200},
				{:item=>"hospedajeB", :amount=>1500},
				{:item=>"avion", :amount=>1},
				{:item=>"terrestre", :amount=>1}
			]
		end
end
