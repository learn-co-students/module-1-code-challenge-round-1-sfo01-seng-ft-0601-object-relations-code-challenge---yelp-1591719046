class Restaurant
  
  attr_reader :name

  @@all = []

  # Restaurant#initialize: Restaurants should be initialized with a name, as a string
  # Restaurant#name returns the restaurant's name, should not be able to change after the restaurant is created

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews # Restaurant#reviews returns an array of all reviews for that restaurant
    Review.all.find_all { |review| review.restaurant == self }
  end

  def customers # Restaurant#customers returns a unique list of all customers who have reviewed a particular restaurant.
    customers = []
    Review.all.find_all do |review|
      if review.restaurant == self
        customers << review.customer
      end
    end
    customers.uniq
  end

  def star_rating
    Review.all.map |review| review.restaurant == self
  end

  def average_star_rating # Restaurant#average_star_rating returns the average star rating for a restaurant based on its reviews. Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings
    total = []
    Review.all.map do |review|
      if review.restaurant == self
        total << review.rating
      end
    end
  average = total.sum/total.length
  end

end
