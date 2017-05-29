class InstitutionsController < ApplicationController
	
	def create
		institution_info = institution_params
		new_institution = Institution.new(institution_info)
		if new_institution.valid?
			new_institution.save
			session[:new_institution] = true
		else
			session[:institution_errors] = new_institution.errors.full_messages
		end
		redirect_to "/admins"
	end

	private

	def institution_params
		params.require(:institution).permit(:name, :website, :category, :state_id, :image)
	end

end