require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


sarah = Customer.new("Sarah", "Robinson")
jacob = Customer.new("Jacob", "Jackson")
mandy = Customer.new("Mandy", "Thomson")


chillis = Restaurant.new("Chillis")
mcdonalds = Restaurant.new("Mcdonals")
goldstar = Restaurant.new("Goldstar")

r1 = Review.new("Sarah", "Chilies", 5.0)
r2 = Review.new("Jacob", "Mcdonals", 2.2)
r3 = Review.new("Mandy", "Goldstar", 4.2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line