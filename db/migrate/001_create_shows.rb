class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.stirng :network
      t.string :day
      t.integer :rating
    end
  end
end