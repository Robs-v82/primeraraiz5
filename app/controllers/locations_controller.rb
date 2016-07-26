class LocationsController < ApplicationController

	def create
		newLocation = Location.new(location_params)
		if newLocation.valid?
			newLocation.save
			session[:location_id] = newLocation.id
			session[:reference_id] = 'VT' + Location.last[:id].to_s
			session[:street] = location_params[:street] 
			session[:number] = location_params[:number]
			session[:unit] = location_params[:unit]
			session[:area] = location_params[:area] 
			session[:comment] = location_params[:comment]
			render json: {success: "success"}
		else
			render json: {errors: newLocation.errors.full_messages}
		end
	end

	private

	def location_params
		params.require(:location).permit(:street, :number, :unit, :area_id, :comment)
	end

end
