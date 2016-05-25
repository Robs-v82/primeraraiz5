class PropertiesController < ApplicationController

	def create
		property_info = property_params
		property_info.store("user_id","#{session[:user_id]}")
		property_info.store("agent_id","1")
		new_property = Property.new(property_info)
		if new_property.valid?
			new_property.save
			puts 'XXxx'*100, Property.last[:id]
			session[:property_id] = Property.last[:id]
			owner_name = [Property.last[:owner_first_name], Property.last[:owner_last_name], Property.last[:owner_second_last_name]].join(' ')
			render json: {
				property_id:"#{session[:property_id]}",
				owner_name: owner_name 
			} 
		else
			errors = new_property.errors.full_messages
			render json: {errors:errors} 
		end
	end

	def destroy
	end

	private

		def property_params
			params.require(:property).permit(:street, :number, :unit, :neighborhood_id, :owner_first_name, :owner_last_name, :owner_second_last_name)
		end

end
