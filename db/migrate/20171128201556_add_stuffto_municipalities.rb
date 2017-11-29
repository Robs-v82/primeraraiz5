class AddStufftoMunicipalities < ActiveRecord::Migration
  def change
  	add_column :municipalities, :poblac_2015, :integer
  	add_column :municipalities, :zm, :integer
  	add_column :municipalities, :zm_dico, :boolean
  	add_column :municipalities, :IIM0a100, :float
  	add_column :municipalities, :GIM_2010, :string
  	add_column :municipalities, :g_marginacion, :string
  	add_column :municipalities, :i_marginacion, :float
  	add_column :municipalities, :p_indigena, :float
  end
end