class Customer
  
  attr_accessor :given_name, :family_name

  @@all = []

  # Customer#initialize: Customer should be initialized with a given name and family name, both strings (i.e., first and last name, like George Washington)"
  # Customer#given_name returns the customer's given name, should be able to change after the customer is created
  # Customer#family_name returns the customer's family name, should be able to change after the customer is created

  def initialize(given_name, family_name) 
    @given_name = given_name 
    @family_name  = family_name

    @@all << self
  end

  def full_name # Customer#full_name returns the full name of the customer, with the given name and the family name concatenated, Western style.
    "#{given_name} #{family_name}"
  end

  def self.all # Customer.all returns all of the customer instances
    @@all
  end

  def restaurants # Customer#restaurants returns a unique array of all restaurants a customer has reviewed
    restaurants = []
    Review.all.find_all do |review|
      if review.customer == self
        restaurants << review.restaurant
      end
    end
    restaurants.uniq
  end

  def add_review(restaurant, rating) # Customer#add_review(restaurant, rating) given a restaurant object and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    Review.new(self, restaurant, rating)
  end

  def num_reviews # Customer#num_reviews returns the total number of reviews that a customer has authored
    Review.all.find_all { |review| review.customer == self }.count
  end

  def self.find_by_name(customer_name) # Customer.find_by_name(name) given a string of a full name, returns the first customer whose full name matches
    all.find { |customer| customer.full_name ==customer_name }
  end

  def self.find_all_by_given_name(name) # Customer.find_all_by_given_name(name) given a string of a given name, returns an array containing all customers with that given name
    all.find_all { |customer| customer.given_name == name }
  end

end
