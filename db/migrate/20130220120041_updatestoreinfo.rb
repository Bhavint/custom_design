class Updatestoreinfo < ActiveRecord::Migration
 	def change
 		add_column :stores, :domain, :string
 		add_column :stores, :phone_number, :string
 		add_column :stores, :description, :text
 		add_column :stores, :country, :string
 		add_column :stores, :email, :string
 	end
end
