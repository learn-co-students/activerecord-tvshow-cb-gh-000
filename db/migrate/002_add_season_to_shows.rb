class AddSeasonToShows < ActiveRecord::Migration
  def create
    add_column :shows, :season, :string
  end
end