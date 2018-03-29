class UserMailer < ActionMailer::Base
	
	default from: "Roberto Valladares Piedras <roberto@primeraraiz.com>"

	def number_with_delimiter(number, delimiter=",", separator=".")
		begin
			parts = number.to_s.split('.')
			parts[0].gsub!(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1#{delimiter}")
			parts.join separator
		rescue
			number
		end
	end

	def greeting
		current_time = Time.now.to_i-14400
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
		mail(to: user.email, cc: 'roberto@primeraraiz.com', subject: 'Cita agendada para el ' + @dateString + ' a las ' + @timeString)
	end

	def tour_email(client, location, appointment, charge)
		@client = client
		@name = client.name.partition(" ").first
		@amount = charge.amount
		@greeting = greeting
		@appointment = appointment
		@dateString = I18n.l(appointment.date, :format => "%A %e de %B") 
		@timeString = I18n.l(@appointment.time, :format => "%I:%M %p")
		mail(to: @client.email, cc: 'roberto@primeraraiz.com', subject: 'Tour virtual agendado para el ' + @dateString)
	end

	def wire_email(client, location, tour, appointment)
		@client = client
		@location = location
		@tour = tour
		@greeting = greeting
		@name = client.name.partition(" ").first
		@appointment = appointment
		@dateString = I18n.l(appointment.date, :format => "%A %e de %B") 
		@timeString = I18n.l(@appointment.time, :format => "%I:%M %p")
		downPayment = tour.total*0.25
		downPayment = (downPayment+0.5).to_i
		@downPayment = number_with_delimiter(downPayment)
		mail(to: @client.email, cc: 'roberto@primeraraiz.com', subject: 'Información para tranferencia bancaria')
	end

	def time_to_pay(client, location, tour)
		@client = client
		@tour = tour
		@name = client.name.partition(" ").first
		@location = location
		@greeting = greeting
		remainder = tour.total*0.75
		remainder = remainder.to_i
		@remainder = number_with_delimiter(remainder)
		mail(to: @client.email, cc: 'roberto@primeraraiz.com', subject: 'Ya puedes consultar tu modelo 3D')
	end

	def ready_email(client, product, message)
		@client = client
		@product = product
		@message = message
		@greeting = greeting
		@code = '<iframe width="853" height="480" src="'+product.url+'”  frameborder="0" allowfullscreen></iframe>'
		myDate = Date.today + 1.year
		@date = I18n.l(myDate, :format => "%e de %B de %Y")
		mail(to: @client.email, cc: 'irma@primeraraiz.com', subject: 'Ya puedes conultar el tour virtual de '+@product.name)
	end


	def user_remainder(user, property, appointment)
		@user = user
		@name = user.name.partition(" ").first
		@property = property
		@appointment = appointment
		@greeting = greeting
		@dateString = I18n.l(appointment.date, :format => "%A %e de %B") 
		@timeString = I18n.l(@appointment.time, :format => "%I:%M %p")
		mail(to: user.email, cc: 'roberto@primeraraiz.com', subject: 'Recordatorio: cita agendada para mañana a las ' + @timeString)
	end

	def quote_email(contact, emails, filename, message)
		@name = contact.first_name
		@greeting = greeting
		attachments[filename+".pdf"] = File.read('Quotes/'+filename+'.pdf')
		unless message.nil?
			@message = message
		end
		mail(to: emails, cc: 'irma@primeraraiz.com', reply_to: 'contacto@primeraraiz.com', subject: 'Cotización Primera Raíz: '+filename)
	end



end
