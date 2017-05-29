class AddInstitutionToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :institution, index: true
  end
end
