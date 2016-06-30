class User < ActiveRecord::Base
  
	has_secure_password
	has_many :properties
	has_many :appointments, through: :properties
	VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :password, length: { minimum: 7, message: "debe tener una extensión mínima de 7 caracteres"}, :if => :password
	validates :email, uniqueness:  {case_sensitive: false }
	validates :email, format:  {with: VALID_EMAIL_REGEX }
	validates :name, length: { minimum: 3, message: "debe tener una extensión  mínima de 3 caracteres" }, allow_nil: true
	validates :mobile_phone, length: { is: 10 }, numericality: true, allow_nil: true
	validates :other_phone, length: { is: 10 }, numericality: true, allow_nil: true

	def third_party_user
		provider != nil
	end

	def self.sign_in_from_omniauth(auth)
		find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
	end

	def self.create_user_from_omniauth(auth)
		create(
			provider: auth['provider'],
			uid: auth['uid'],
			name: auth['info']['name'],
			email: auth['info']['email'],
			password: 'Paloma001',
			password_confirmation: 'Paloma001',
		)
	end

	private

end
