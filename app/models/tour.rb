class Tour < ActiveRecord::Base
	belongs_to :location
	has_one :appointment, :as => :appointable, dependent: :destroy
	validates :size, :model_fee, :location_id, :total, :subtotal, :vat, :presence => true
	after_update :remainder_notice

	protected

	def remainder_notice
		target_location = Location.find(self[:location_id])
		target_client = Client.find(target_location[:client_id])
		if self.status == "model_ready"
			UserMailer.ready_email(target_client).deliver
		end 
	end
end
