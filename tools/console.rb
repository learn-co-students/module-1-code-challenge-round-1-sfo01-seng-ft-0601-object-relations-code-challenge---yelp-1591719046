require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Customer (given_name, family_name)
anna = Customer.new("Anna", "Cassidy")
caitlin_m = Customer.new("Caitlin", "McAuley")
yoko = Customer.new("Yoko", "Ohara")
caitlin_s = Customer.new("Caitlin", "Sweeney")

# Restaurant (name)
grand_lake_kitchen = Restaurant.new("Grand Lake Kitchen")
sidebar = Restaurant.new("Sidebar")
kinja = Restaurant.new("Kinja Sushi")

# Review (customer, restaurant, rating)
r1 = Review.new(anna, grand_lake_kitchen, 4)
r2 = Review.new(anna, kinja, 3)
r3 = Review.new(caitlin_m, sidebar, 5)
r4 = Review.new(caitlin_m, kinja, 5)
r5 = Review.new(yoko, grand_lake_kitchen, 3)
r6 = Review.new(yoko, kinja, 5)
r7 = Review.new(yoko, sidebar, 5)
r8 = Review.new(caitlin_s, sidebar, 5)
r9 = Review.new(caitlin_s, grand_lake_kitchen, 5)
r10 = Review.new(caitlin_s, grand_lake_kitchen, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line