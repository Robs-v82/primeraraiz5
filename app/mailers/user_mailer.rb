class UserMailer < ActionMailer::Base
	
	default from: "Roberto Valladares Piedras <roberto@primeraraiz.com>"

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

	def welcome_email(user, property, appointment)
		@user = user
		@name = user.name.partition(" ").first
		@property = property
		@appointment = appointment
		@greeting = greeting
		@dateString = I18n.l(appointment.date, :format => "%A %e de %B") 
		@timeString = I18n.l(@appointment.time, :format => "%I:%M %p")
		mail(to: user.email, subject: 'Cita agendada para el ' + @dateString + ' a las ' + @timeString)
	end

	def tour_email(client, location, appointment, charge)
		@client = client
		puts 'XXxx', @client.mobile_phone
		@greeting = greeting
		@appointment = appointment
		@dateString = I18n.l(appointment.date, :format => "%A %e de %B") 
		@timeString = I18n.l(@appointment.time, :format => "%I:%M %p")
		mail(to: @client.email, subject: 'Tour virtual agendado para el ' + @dateString)
	end

	def user_remainder(user, property, appointment)
		@user = user
		@name = user.name.partition(" ").first
		@property = property
		@appointment = appointment
		@greeting = greeting
		@dateString = I18n.l(appointment.date, :format => "%A %e de %B") 
		@timeString = I18n.l(@appointment.time, :format => "%I:%M %p")
		mail(to: user.email, subject: 'Recordatorio: cita agendada para mañana a las ' + @timeString)
	end

end
