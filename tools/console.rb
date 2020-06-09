require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tony = Customer.new("Tony", "Stark")
steve1 = Customer.new("Steve", "Rogers")
carol = Customer.new("Carol", "Danvers")
wanda = Customer.new("Wanda", "Maximoff")
steve2 = Customer.new("Steve", "Maximoff")
tony2 = Customer.new("Tony", "Stark")

red_robin = Restaurant.new("Red Robin")
mcdonalds = Restaurant.new("McDonald's")
bjs = Restaurant.new("BJ's Brewhouse")

r1 = Review.new(tony, red_robin, 5)
r2 = Review.new(tony, mcdonalds, 2)
r3 = Review.new(tony, bjs, 3)
r4 = Review.new(steve1, red_robin, 4)
r5 = Review.new(steve1, bjs, 4)
r6 = Review.new(wanda, mcdonalds, 3)
r7 = Review.new(wanda, red_robin, 5)
r8 = Review.new(steve2, bjs, 1)
r9 = Review.new(steve2, red_robin, 4)
r10 = Review.new(carol, red_robin, 3)
r11 = Review.new(tony, red_robin, 3.7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line