class MakeGeneralDafault < ActiveRecord::Migration
  def change
  	change_column_default(:contacts, :category, "general")
  end
end
