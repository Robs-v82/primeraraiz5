class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :state, index: true
      t.string :color
      t.string :category

      t.timestamps
    end
  end
end
