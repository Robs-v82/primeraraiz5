class AppointmentsController < ApplicationController

	def create
		appointment_info = appointment_params
		appointment_info.store("property_id", "#{session[:property_id]}")
		appointment_info.store("status", "Agendada")
		new_appointment = Appointment.new(appointment_info)
		if new_appointment.valid?
			user_update_info = user_update_params
			unless current_user.name
				unless user_update_info.has_key?("name")
					owner_name = [Property.last[:owner_first_name], Property.last[:owner_last_name], Property.last[:owner_second_last_name]].join(' ')
					user_update_info.store("name", "#{owner_name}")
				end
			end
			if User.update(session[:user_id], user_update_info)
				new_appointment.save
				UserMailer.welcome_email(current_user).deliver
				redirect_to "/users/#{session[:user_id]}/properties"
			else
				errors = User.update(session[:user_id], user_update_params).errors.full_messages
				render json: {errors: errors}
			end
		else
			errors = new_appointment.errors.full_messages
			User.update(session[:user_id], user_update_params).errors.full_messages.each do |error|
				errors << error
			end
			render json: {errors: errors}
		end
	end

	private

	def appointment_params
		params.require(:appointment).permit(:date, :time)
	end

	def user_update_params
		params.require(:user).permit(:name, :mobile_phone, :other_phone, :email, :contact)
	end

end
