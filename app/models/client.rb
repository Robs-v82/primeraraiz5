class Client < ActiveRecord::Base
	has_one :location, dependent: :destroy
	has_one :tour, through: :location
	VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, format:  {with: VALID_EMAIL_REGEX }
	validates :name, length: { minimum: 3, message: "debe tener una extensión  mínima de 3 caracteres" }, allow_nil: true
	validates :mobile_phone, length: { is: 10 }, numericality: true, allow_nil: true
	validates :other_phone, length: { is: 10 }, numericality: true, allow_nil: true
end
