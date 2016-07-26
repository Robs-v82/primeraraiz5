class ClientsController < ApplicationController

	def create
		client_info = client_params
		unless client_info[:mobile_phone] == nil
			raw_number = client_info.delete("mobile_phone")
			client_info.delete("mobile_phone")
			puts "XXxx"*100, client_info
			lean_number = raw_number.gsub(/\D/, '')
			client_info.store("mobile_phone", lean_number)
		else 
			raw_number = client_info.delete("other_phone")
			lean_number = raw_number.gsub(/\D/, '')
			client_info.store("other_phone", lean_number)
		end
		new_client = Client.new(client_info)
		if new_client.valid?
			new_client.save
			if client_info[:mobile_phone]
				session[:client_phone] = client_info[:mobile_phone]
			else
				session[:client_phone] = client_info[:other_phone]
			end
			session[:client_id] = new_client.id
			session[:client_email] = client_info[:email]
			session[:client_name] = client_info[:name]
			render json: {result: "success"}
		else
			render json: {errors: new_client.errors.full_messages}, :status => 422
		end
	end

	private

	def client_params
		params.require(:client).permit(:name, :email, :mobile_phone, :other_phone, :contact)
	end
end
