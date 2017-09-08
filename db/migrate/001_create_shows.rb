
class CreateShows < ActiveRecord::Migration
	def change
		create_table :shows do |s|
			#The table should have name, network, day, and rating columns. name, network, and day
			s.string :name
			s.string :network
			s.string :day
			s.integer :rating
		end
	end
end
