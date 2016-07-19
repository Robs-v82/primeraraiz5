class ClientsController < ApplicationController

	def create
		new_client = Client.new(client_params)
		if new_client.valid?
			new_client.save
			if client_params[:mobile_phone]
				session[:client_phone] = client_params[:mobile_phone]
			else
				session[:client_phone] = client_params[:other_phone]
			end
			session[:client_email] = client_params[:email]
			session[:client_name] = client_params[:name]
			render json: {result: "success"}
		else
			render json: {errors: new_client.errors.full_messages}
		end
	end

	private

	def client_params
		params.require(:client).permit(:name, :email, :mobile_phone, :other_phone, :contact)
	end
end
