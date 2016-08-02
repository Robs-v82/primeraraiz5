class Tour < ActiveRecord::Base
  belongs_to :location
  has_one :appointment, :as => :appointable, dependent: :destroy
  validates :size, :model_fee, :location_id, :total, :subtotal, :vat, :presence => true
end
