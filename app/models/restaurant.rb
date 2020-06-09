require 'pry'
 
class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews 
    Review.all.select {|review| review.restaurant == self} 
  end 

  def customers 
    reviews.customers.uniq 
  end 
  
  def average_star_rating 
    #run reviews then average all values in returned array 
    #inject iterates over each element 
    # and then applies an accumulator value to it 
    # which reflects the sum of all of the previous elements 
    reviews.inject{ |sum, el| sum + el }.to_f / arr.size 
  end 

end
