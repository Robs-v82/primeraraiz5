class ChargesController < ApplicationController

	def create

		begin
		  @charge = Conekta::Charge.create({
		    "amount"=> session[:tourPrice]*25,
		    "currency"=> "MXN",
		    "description"=> "Anticipo tour virtual",
		    "reference_id"=> session[:reference_id],
		    "card"=> params[:conektaTokenId],  # Ej. "tok_a4Ff0dD2xYZZq82d9"
		    "details"=> {
		      "name"=> session[:client_name],
		      "phone"=> session[:client_phone],
		      "email"=> session[:client_email],
		      "customer"=> {
		        "logged_in"=> true,
		        "successful_purchases"=> 14,
		        "created_at"=> 1379784950,
		        "updated_at"=> 1379784950,
		        "offline_payments"=> 4,
		        "score"=> 9
		      },
		      "line_items"=> [{
		        "name"=> "Box of Cohiba S1s",
		        "description"=> "Tour virtual",
		        "unit_price"=> 20000,
		        "quantity"=> 1,
		        "sku"=> "cohb_s1",
		        "category"=> "food"
		      }],
		      "billing_address"=> {
		        "street1"=>"77 Mystery Lane",
		        "street2"=> "Suite 124",
		        "city"=> "Darlington",
		        "state"=>"NJ",
		        "zip"=> "10192",
		        "country"=> "Mexico",
		        "tax_id"=> "xmn671212drx",
		        "company_name"=>"X-Men Inc.",
		        "phone"=> "77-777-7777",
		        "email"=> "purshasing@x-men.org"
		      }
		    }
		  })

			if @charge.status == "paid"
				session[:charge] = @charge
				puts "xxXX"*100, "working!"
				target_client = Client.find(session[:client_id])
				target_location = Location.find(session[:location_id])
				target_appointment = Appointment.find(session[:appointment_id])
				UserMailer.tour_email(target_client, target_location, target_appointment, @charge).deliver
				redirect_to '/virtualtour'
			end

		rescue Conekta::ParameterValidationError => e
		  puts e.message_to_purchaser 
		  #alguno de los parámetros fueron inválidos

		rescue Conekta::ProcessingError => e
		  puts e.message_to_purchaser 
		  #la tarjeta no pudo ser procesada

		rescue Conekta::Error => e
		  puts e.message_to_purchaser 
		  #un error ocurrió que no sucede en el flujo normal de cobros como por ejemplo un auth_key incorrecto

	end

	end

end
