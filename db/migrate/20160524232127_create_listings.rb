class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :website
      t.string :url
      t.references :property, index: true

      t.timestamps
    end
  end
end
