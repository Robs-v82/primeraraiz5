class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :clave_estado
      t.string :estado
      t.string :iso_code

      t.timestamps
    end
  end
end
