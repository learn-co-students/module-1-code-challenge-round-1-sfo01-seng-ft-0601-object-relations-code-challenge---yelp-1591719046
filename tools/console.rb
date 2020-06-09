require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customer.new(given_name, family_name)
#Review.new(customer, restaurant, rating)
#Restaurant.new(name)

customer_one = Customer.new("given_one", "family_one")
customer_two = Customer.new("given_two", "family_two")
customer_three = Customer.new("given_three", "family_three")

restaurant_one = Restaurant.new("restaurant_one")
restaurant_two = Restaurant.new("restaurant_two")
restaurant_three = Restaurant.new("restaurant_three")

review_one = Review.new(customer_one, restaurant_one, "rating_one")
review_two = Review.new(customer_two, restaurant_two, "rating_two")
review_three = Review.new(customer_three, restaurant_three, "rating_three")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line