class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :clave_estado
      t.string :clave_munici
      t.string :munici

      t.timestamps
    end
  end
end
