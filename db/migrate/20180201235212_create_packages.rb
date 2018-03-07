class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.references :contact, index: true
      t.references :municipality, index: true
      t.float :total
      t.integer :completo100
      t.integer :completo200
      t.integer :completo300
      t.integer :completo400
      t.integer :completo500
      t.integer :completo1000
      t.integer :basico60
      t.integer :basico60x2
      t.integer :basico100
      t.integer :toma360
      t.integer :video
      t.integer :plano
      t.integer :hosting
      t.integer :procesamiento
      t.integer :alimentos
      t.integer :hospedajeA
      t.integer :hospedajeB
      t.integer :avion
      t.integer :terrestre
      t.float :descuento

      t.timestamps
    end
  end
end
