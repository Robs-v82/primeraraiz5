class AddDeathstoMunicipalities < ActiveRecord::Migration
  def change
  	add_column :municipalities, :violent_deaths_2008_2017, :integer
  end
end
