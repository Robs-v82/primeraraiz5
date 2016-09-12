class DefinePos < ActiveRecord::Migration
	def change
		add_column :posts, :title, :string
		add_column :posts, :subtitle, :string
		add_column :posts, :text, :string
		add_reference :posts, :agent, index: true
		change_table :posts do |t|
      		t.attachment :picture
    	end
	end
end
