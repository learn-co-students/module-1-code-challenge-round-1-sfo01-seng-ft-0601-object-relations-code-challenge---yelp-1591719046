require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Haleigh", "Dalke")
c2 = Customer.new("John", "Snow")
c3 = Customer.new("David", "Appleseed")
c4 = Customer.new("David", "Star")

r1 = Restaurant.new("Milias")
r2 = Restaurant.new("Los Pericos")

rev1 = Review.new(c1, r1, 5)
rev2 = Review.new(c2, r2, 3)
rev3 = Review.new(c3, r1, 4.5)
rev4 = Review.new(c1, r2, 3)
rev5 = Review.new(c2, r1, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line