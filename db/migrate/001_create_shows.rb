class CreateShows < ActiveRecord::Migrate
  def create
    create_table :shows do |t|
      t.string :name
      t.string :name
      t.string :day
      t.integer :rating
    end
  end
end