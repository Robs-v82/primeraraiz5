class AddExtension < ActiveRecord::Migration
  def change
  	add_column :contacts, :extension, :string
  end
end
