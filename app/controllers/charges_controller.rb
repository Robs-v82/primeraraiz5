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
		        "name"=> "Anticipo tour virtual",
		        "description"=> "Tour virtual",
		        "unit_price"=> session[:tourPrice]*25,
		        "quantity"=> 1,
		        "sku"=> "none",
		        "category"=> "3D showcase"
		      }],
		      "billing_address"=> {
		        "street1"=>"Río Niágara 38-202",
		        "street2"=> "Colonia Cuauhtémoc",
		        "city"=> "Cuauhtémoc",
		        "state"=>"CDMX",
		        "zip"=> "06500",
		        "country"=> "Mexico",
		        "tax_id"=> "",
		        "company_name"=>"",
		        "phone"=> "5544545312",
		        "email"=> "roberto.valladarespiedras@gmail.com"
		      }
		    }
		  })

			if @charge.status == "paid"
				session[:charge] = @charge
				target_client = Client.find(session[:client_id])
				target_location = Location.find(session[:location_id])
				target_tour = Tour.find(session[:tour_id])
				if session[:status] == "remainder"
					target_tour.update(:status=>"fully_paid")
					session[:tour_status] = "fully_paid"
				else
					target_tour.update(:status=>"down_payment")
					target_appointment = Appointment.find(session[:appointment_id])
					UserMailer.tour_email(target_client, target_location, target_appointment, @charge).deliver
					session[:tour_status] = "down_payment"
				end
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
