class LocationsController < ApplicationController

	def create
		location_info = location_params
		location_info.delete("district")
		location_info.store("client_id", session[:client_id])
		newLocation = Location.new(location_info)
		if newLocation.valid?
			newLocation.save
			session[:location_id] = newLocation.id
			session[:reference_id] = 'VT' + Location.last[:id].to_s
			session[:street] = location_info[:street] 
			session[:number] = location_info[:number]
			session[:unit] = location_info[:unit]
			if session[:unit] != ""
				unit_string = "-" + session[:unit]
			else
				unit_string = ""
			end
			session[:area] = Area.find("#{location_params[:area_id]}").name
			session[:comment] = location_params[:comment]
			session[:short_address] = session[:street] + " " + session[:number] + unit_string + ", Col. " + session[:area] 
			render json: {success: "success"}
		else
			render json: {errors: newLocation.errors.full_messages}
		end
	end

	private

	def location_params
		params.require(:location).permit(:street, :number, :unit, :area_id, :comment, :district)
	end

end
