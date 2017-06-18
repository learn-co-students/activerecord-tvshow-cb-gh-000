class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where("? = ?", :rating, self.maximum(:rating)[0])
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.where("? = ?", :rating, self.minimum(:rating)[0])
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("? > 5", :rating)
  end

  def self.shows_by_alphabetical_order
    self.order("? ASC", :name)
  end

  
end