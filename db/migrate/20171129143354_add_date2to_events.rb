class AddDate2toEvents < ActiveRecord::Migration
  def change
  	add_column :events, :date_2, :date
  end
end
