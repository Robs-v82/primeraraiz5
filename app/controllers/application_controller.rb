class ApplicationController < ActionController::Base
 
 	protect_from_forgery with: :exception
	helper_method :current_user, :greeting, :set_auth, :set_date
	def greeting
		current_time = Time.now.to_i
		midnight = Time.now.beginning_of_day.to_i
		noon = Time.now.middle_of_day.to_i
		five_pm = Time.now.change(:hour => 17 ).to_i
		eight_pm = Time.now.change(:hour => 20 ).to_i
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
		if session[:charge]
			session[:charge] = nil
		end
		if session[:tour_status]
			session[:tour_status] = nil
		end
	end


	private

		def current_user
			@current_user ||= User.find(session[:user_id]) if session[:user_id]
		end


		def set_auth
			@auth = session[:omniauth] if session[:omniauth]
		end


end
