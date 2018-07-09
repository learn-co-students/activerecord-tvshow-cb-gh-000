class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |k|
      k.string :name
      k.string :network
      k.string :day
      k.integer :rating
      k.timestamps
    end
  end
end