class Show < ActiveRecord::Base

  # Returns the highest value in the ratings column
  def self.highest_rating
    Show.maximum("rating")
  end

  # Returns the show with the highest rating
  def self.most_popular_show
    Show.find_by(rating: self.highest_rating)
  end

  # Returns the lowest value in the ratings column
  def self.lowest_rating
    Show.minimum("rating")
  end

  #least_popular_show: returns the show with the lowest rating.

  #ratings_sum: returns the sum of all of the ratings.

  #popular_shows: returns an array of all of the shows that have a rating greater than 5.
  # hint: use the #where Active Record method.

  #shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names.
  # hint: use the #order Active Record method.
end