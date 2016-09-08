class AppointmentsController < ApplicationController

	def create
		errors = []
		long_date = appointment_params[:date]
		target_date = set_date(long_date)
		appointment_info = appointment_params
		appointment_info.store("appointable_id", "#{session[:property_id]}")
		appointment_info.store("appointable_type", "Property")
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
					target_user = User.find(session[:user_id])
					target_property = Property.find(session[:property_id])
					new_appointment.save
					session[:appointment_id] = Appointment.last[:id]
					UserMailer.welcome_email(target_user, target_property, new_appointment).deliver
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
		appointmentDate = DateTime.parse(target_date) 
		today = Date.today
		difference = appointmentDate - today
		if difference > 4
			transfer = true 
		else
			transfer = false
		end
		testTimeArr = [
			"2000-01-01 08:00:00 UTC",
			"2000-01-01 09:00:00 UTC",
			"2000-01-01 10:00:00 UTC",
			"2000-01-01 11:00:00 UTC",
			"2000-01-01 12:00:00 UTC",
			"2000-01-01 13:00:00 UTC",
			"2000-01-01 14:00:00 UTC",
			"2000-01-01 15:00:00 UTC",
			"2000-01-01 16:00:00 UTC",
			"2000-01-01 17:00:00 UTC",
		]
		appointments = Appointment.where("date = '#{target_date}'")
		appointments.each do |appointment|
			numberOfHours = appointment.hours - 1
			(0..numberOfHours).each do |x|
				test_time = appointment.time + x.hours
				testTimeArr.each do |testHour|
					if test_time == testHour
						string_time = test_time.to_s 
						integer_time = string_time[11,2].to_i
						off_hours << integer_time 
					end
				end
			end
		end
		appointmentDuration = session[:interval]/60
		appointments.each do |appointment|
			numberOfHours = appointmentDuration - 1
			string_time = appointment.time.to_s
			integer_time = string_time[11,2].to_i
			(1..numberOfHours).each do |x|
				off_hours << integer_time - x
			end
		end
		render json: {
			hours: off_hours,
			interval: session[:interval],
			transfer: transfer,
		}
	end

	def tourAppointment
		session[:tourDate] = appointment_params[:date]
		session[:tourTime] = appointment_params[:time]
		appointment_info = appointment_params
		long_date = appointment_params[:date]
		target_date = set_date(long_date)
		appointment_info = appointment_params
		appointment_info.store("status", "Agendada")
		appointment_info.delete("date")
		appointment_info.store("date",target_date)
		appointment_info.store("appointable_id", session[:tour_id])
		appointment_info.store("appointable_type", "Tour")
		hourSpan = session[:interval]/60
		appointment_info.store("hours", hourSpan)
		tourAppointment = Appointment.new(appointment_info)
		if tourAppointment.valid?
			tourAppointment.save
			session[:appointment_id] = tourAppointment.id
			dateString = I18n.l(tourAppointment.date, :format => "%A %e de %B") 
			session[:tourDate] = dateString.slice(0,1).capitalize + dateString.slice(1..-1) 
			session[:tourTime] = I18n.l(tourAppointment.time, :format => "%-I:%M %p")
			render json: {
				result: "success",
				tourDate: session[:tourDate],
				tourTime: session[:tourTime],
				short_address: session[:short_address],
				client_phone_number: session[:client_phone_number],
				client_email: session[:client_email]
			}
		else
			render json: {error: tourAppointment.errors.full_messages}
		end
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
