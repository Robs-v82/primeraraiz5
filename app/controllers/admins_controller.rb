class AdminsController < ApplicationController

	after_action :remove_contact_message, only: [:index]
	after_action :remove_institution_message, only: [:index]

	def index
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
		else
			redirect_to '/admins/password'
		end
	end

	def password
	end

	def download_contacts
	    @contacts = Contact.where("subscription")
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
