class Review

    attr_reader :customer, :restaurant, :rating

    @@all = []

    # Review#initialize: Reviews should be initialized with a customer, restaurant, and a rating (a number)
    # Review#rating returns the rating for a restaurant.
    # Review#customer returns the customer object for that review, Once a review is created, should not be able to change the customer
    # Review#restaurant returns the restaurant object for that given review Once a review is created, should not be able to change the restaurant

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all # Review.all returns all of the reviews
        @@all
    end
  
end