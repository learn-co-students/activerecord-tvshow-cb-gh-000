class Show < ActiveRecord::Base
  def self.highest_rating
    Show.most_popular_show.rating
  end

  def self.most_popular_show
    Show.all.order("rating DESC").first
  end

  def self.lowest_rating
    Show.least_popular_show.rating
  end

  def self.least_popular_show
    Show.all.order("rating ASC").first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?",5)
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end
end
