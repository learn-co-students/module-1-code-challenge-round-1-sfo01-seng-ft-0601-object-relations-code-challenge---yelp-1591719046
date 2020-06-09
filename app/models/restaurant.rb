class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all << self
  end

  def review
    Review.all.colect {|review| review.self }
  end

  def customers
    Review.all.collect {|review| review.customers}.uniq
  end

  def average_star_rating
    average_rate = Review.all.map{|rate| rate.rating}
    
  end
  binding.pry
end
