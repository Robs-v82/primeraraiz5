class AdminsController < ApplicationController

	after_action :remove_contact_message, only: [:index]
	after_action :remove_institution_message, only: [:index]
	after_action :remove_product_message, only: [:index]
	after_action :remove_quote_message, only: [:index]

	def index
		session[:total] = 0
		@myStates= State.all
		@myNumbers = (0..20)
		@planeNumbers = ["0.00"]
		@planeIntegers = [0]
		@landNumbers = ["0.00"]
		@landIntegers = [0]
		(6..50).each{|x| delimeter = number_with_delimiter(300*x); @planeNumbers.push(delimeter)}
		(6..50).each{|x| @planeIntegers.push(300*x)}
		(1..20).each{|x| delimeter = number_with_delimiter(300*x); @landNumbers.push(delimeter)}
		(1..20).each{|x| @landIntegers.push(300*x)}
		@generalPrices = generalPrices
		@discountNumbers = [["0%",0.0],["10%",0.1],["20%",0.2]]
		if current_agent
			@institutions = Institution.all.order(:name)
			@states = State.all
			@cities = ["Ciudad de México", "Querétaro", "Acapulco", "Aguascalientes", "Cancún", "Celaya", "Cuernavaca", "Guadalajara", "Juárez", "León","Los Cabos", "Mérida", "Monterrey", "Morelia","Puebla","Puerto Vallarta","Saltillo", "San Luis Potosí","San Miguel de Allende","Tampico", "Tijuana", "Toluca", "Torreón", "Veracruz"]
			if session[:new_contact]
				@contact_success = true
			end
			if session[:contact_errors]
				@contact_errors = session[:contact_errors] 
			end
			if session[:new_institution]
				@institution_success = true
			end
			if session[:institution_errors]
				@institution_errors = session[:institution_errors] 
			end
			if session[:new_product]
				@product_success = true
			end
			if session[:product_errors]
				@product_errors = session[:product_errors] 
			end
			if session[:new_quote]
				@quote_success = true
			end
			if session[:quote_errors]
				@quote_errors = session[:quote_errors] 
			end
		else
			redirect_to '/admins/password'
		end
		if current_admin
			@admin = true
		else
			@admin = false
		end
	end

	def password
	end

	def download_contacts
	    @contacts = Contact.where("subscription and institution_id > 0")
	    render xlsx: 'download_contacts'
	    # respond_to do |format| 
	    #    format.xlsx {render xlsx: 'download',filename: "contactos_primera_raiz.xlsx"}
	end

	def login
		target_agent = Agent.find_by_email(agent_params[:email])
		if target_agent
			if target_agent.authenticate(agent_params[:password])
				session[:agent_id] = target_agent[:id]
				redirect_to '/admins'
			end
		else
			redirect_to '/admins/password'
		end
	end

	private

	def agent_params
		params.require(:agent).permit(:email, :password)
	end

end
