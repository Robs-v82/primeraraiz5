class AdminsController < ApplicationController

	after_action :remove_contact_message, only: [:index]

	def index
		if session[:new_contact]
			@contact_success = true
		end
		if session[:contact_errors]
			@contact_errors = session[:contact_errors] 
		end
	end

	def download_contacts
	    @contacts = Contact.where("subscription")
	    render xlsx: 'download_contacts'
	    # respond_to do |format| 
	    #    format.xlsx {render xlsx: 'download',filename: "contactos_primera_raiz.xlsx"}
	end


end
