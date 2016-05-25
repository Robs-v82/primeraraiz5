class OwnerFullName < ActiveRecord::Migration
	def change
		remove_column :properties, :owned_by
		add_column :properties, :owner_first_name, :string
		add_column :properties, :owner_last_name, :string
		add_column :properties, :owner_second_last_name, :string
	end
end
