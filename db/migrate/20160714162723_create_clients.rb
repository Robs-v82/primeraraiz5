class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone
      t.string :other_phone
      t.string :contact

      t.timestamps
    end
  end
end
