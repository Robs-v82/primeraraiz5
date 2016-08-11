class HomeController < ApplicationController

	def index
		redirect_to '/virtualtour'
		# if current_user
		# 	redirect_to "/users/#{session[:user_id]}/properties"
		# else
		# 	benito_juarez = Neighborhood.where("district='Benito Juárez'").order(:zone)
		# 	@benito_juarez_zones = benito_juarez.uniq.pluck(:zone)
		# 	cuauhtemoc = Neighborhood.where("district='Cuauhtémoc'").order(:zone)
		# 	@cuauhtemoc_zones = cuauhtemoc.uniq.pluck(:zone)
		# 	miguel_hidalgo = Neighborhood.where("district='Miguel Hidalgo'").order(:zone)
		# 	@miguel_hidalgo_zones = miguel_hidalgo.uniq.pluck(:zone)
		# 	neighborhood_list = Neighborhood.order(:zone)
		# 	@zones = neighborhood_list.uniq.pluck(:zone)
		# 	@zone_groups = Neighborhood.uniq(:zone)
		# 	respond_to do |format|
		# 		format.html
		# 		format.json { render json: { data: @zone_groups} }
		# 	end
		# end
	end

	def Uwtj2dr
	end

	def Test9jkJdTbj
		render '9jkJdTbj.html'
	end
	
end
