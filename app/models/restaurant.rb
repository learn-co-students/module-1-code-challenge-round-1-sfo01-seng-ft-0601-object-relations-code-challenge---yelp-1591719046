class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews 
    Review.all.select{ |review| review.restaurant == self }
  end

  def customers
    reviews.collect { |review| review.customer }
  end

  def average_star_rating
    reviews_sum = reviews.collect { |review| review.rating }.sum
    
    # prevent code from breaking if no reviews were created for a restaurant
    if reviews.count > 0
      reviews_sum / reviews.count
    else
       nil
    end
  end
end
