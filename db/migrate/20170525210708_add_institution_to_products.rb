class AddInstitutionToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :institution, index: true
  end
end
