class AppointmentsController < ApplicationController

	def create
		puts 'XXxx', params
		errors = []
		long_date = appointment_params[:date]
		target_date = set_date(long_date)
		appointment_info = appointment_params
		appointment_info.store("property_id", "#{session[:property_id]}")
		appointment_info.store("status", "Agendada")
		appointment_info.delete("date")
		appointment_info.store("date",target_date)
		new_appointment = Appointment.new(appointment_info)
		if new_appointment.valid?
			user_update_info = user_update_params
			unless current_user.name
				unless user_update_info.has_key?("name")
					owner_name = [Property.last[:owner_first_name], Property.last[:owner_last_name], Property.last[:owner_second_last_name]].join(' ')
					user_update_info.store("name", "#{owner_name}")
				end
			end
			if params[:phone_type] == "mobile"  
				if user_update_info[:mobile_phone].length == 10 && user_update_info[:mobile_phone] =~ /\A\d+\z/ ? true : false
					User.update(session[:user_id], user_update_info)
					new_appointment.save
					session[:appointment_id] = Appointment.last[:id]
					UserMailer.welcome_email(current_user, new_appointment.date).deliver
					render json: {user_id: "#{session[:user_id]}"}
				else
					user_errors = User.update(session[:user_id], user_update_params).errors.full_messages
					user_errors.each do |error|
						errors << error
					end
					render json: {errors: errors}, :status => 422
				end
			elsif params[:phone_type] == "land_line" 
				if user_update_info[:other_phone].length == 10 && user_update_info[:other_phone] =~ /\A\d+\z/ ? true : false
					User.update(session[:user_id], user_update_info)
					new_appointment.save
					session[:appointment_id] = Appointment.last[:id]
					UserMailer.welcome_email(current_user, new_appointment.date).deliver
					render json: {user_id: "#{session[:user_id]}"}
				else
					user_errors = User.update(session[:user_id], user_update_params).errors.full_messages
					user_errors.each do |error|
						errors << error
					end
					render json: {errors: errors}, :status => 422
				end
			else
				user_errors = User.update(session[:user_id], user_update_params).errors.full_messages
				user_errors.each do |error|
					errors << error
				end
				render json: {errors: errors}, :status => 422
			end	
		else
			appointment_errors = new_appointment.errors.full_messages
			appointment_errors.each do |error|
				errors << error
			end
			User.update(session[:user_id], user_update_params).errors.full_messages.each do |error|
				errors << error
			end
			render json: {errors: errors}, :status => 422
		end
	end

	def getTime
		off_hours = []
		long_date = getTime_params[:date]
		target_date = set_date(long_date)
		appointments = Appointment.where("date = '#{target_date}'")
		taken_hours = appointments.pluck(:time)
		test_time = "2000-01-01 08:00:00 UTC"
		add_list = [8]
		if taken_hours.include? test_time
			add_list.each do |x|
				off_hours << x
			end
		end
		test_time = "2000-01-01 11:00:00 UTC" 
		add_list = [11]
		if taken_hours.include? test_time
			add_list.each do |x|
				off_hours << x
			end
		end
		test_time = "2000-01-01 14:00:00 UTC" 
		add_list = [14]
		if taken_hours.include? test_time
			add_list.each do |x|
				off_hours << x
			end
		end
		test_time = "2000-01-01 17:00:00 UTC" 
		add_list = [17]
		if taken_hours.include? test_time
			add_list.each do |x|
				off_hours << x
			end
		end
		render json: {hours: off_hours}
	end

	private

	def appointment_params
		params.require(:appointment).permit(:date, :time)
	end

	def user_update_params
		params.require(:user).permit(:name, :mobile_phone, :other_phone, :email, :contact)
	end

	def getTime_params
		params.require(:appointment).permit(:date)
	end



end
