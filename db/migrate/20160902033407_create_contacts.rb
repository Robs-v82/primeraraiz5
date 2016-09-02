class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone
      t.string :other_phone
      t.string :category
      t.references :client, index: true

      t.timestamps
    end
  end
end
