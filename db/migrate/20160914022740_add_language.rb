class AddLanguage < ActiveRecord::Migration
  def change
  	add_column :contacts, :language, :string
  	change_column_default(:contacts, :language, "Spanish")
  end
end
