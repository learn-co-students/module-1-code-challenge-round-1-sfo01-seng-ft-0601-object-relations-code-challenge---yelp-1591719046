class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  ##instance methods
  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.reviews.collect { |review| review.customer }.uniq
  end

  def average_star_rating
    total_rating = self.reviews.sum { |review| review.rating }
    total_rating.to_f / self.reviews.count
  end

  ##class methods
  def self.all
    @@all
  end

end
