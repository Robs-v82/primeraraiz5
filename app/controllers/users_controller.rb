class UsersController < ApplicationController

	before_action :require_login, except: [:create, :login]
	before_action :require_correct_user, except: [:create, :login]
	before_action :valid_property, only: [:show]


	def create
		new_user = User.new(user_params)
		respond_to do |format|
			if new_user.valid?
				new_user.save
				session[:user_id] = User.last[:id]
				format.json { render json: {user_id:"#{session[:user_id]}"} }
			else
				errors = new_user.errors.full_messages
				format.json { render json: {errors:errors} }
			end
		end
	end

	def login
		login_user = User.find_by_email(login_params[:email])
		respond_to do |format|
			if login_user
				if login_user.authenticate(login_params[:password])
					session[:user_id] = login_user[:id]
					if login_user.appointments.any?
						session[:property_id] = User.find(session[:user_id]).properties.last.id
						format.json { render json: {
							user_id:"#{session[:user_id]}",
							property_id:"#{session[:property_id]}"
							} }
					else
						format.json { render json: {user_id:"#{session[:user_id]}"} }
					end
				else
					format.json { render json: {error_message:"La contraseña proporcionada no es válida"} }
				end
			else
				format.json { render json: {error_message:"Correo no registrado"} }
			end
		end		
	end

	def profile
		@neighborhoods = Neighborhood.all
		@working_hours = []
		(8..20).each {|x| @working_hours << "#{x}:00"}
		if current_user.name
			@user_name = current_user.name
			user_name_array = @user_name.split(" ")
			@user_first_name = user_name_array[0]
			@auth = set_auth
		end
		@email = current_user.email
	end

	def show
		if current_user.name
			@user_name = current_user.name
			user_name_array = @user_name.split(" ")
			@user_first_name = user_name_array[0]
			@auth = set_auth
		end
		@user_properties = current_user.properties
		@property = Property.find(session[:property_id])
		@property_appointments = Property.find(session[:property_id]).appointments
		listing_arr = ["metroscubicos","segundamano","inmuebles-24","lamudi"]
		@listings = []
		listing_arr.each do |x|
			listing = Listing.find_by_website(x) 
			if listing.nil?
				@listings << {status: "inactive", file:x+".png"}
			else
				@listings << {status: "active", file:x+"_active.png", url:listing.url}
			end
		end
		@agent = Property.find(session[:property_id]).agent 
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)			
		end

		def login_params
			params.require(:user).permit(:email, :password)
		end

end
