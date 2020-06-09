class Customer
  attr_accessor :given_name, :family_name
@@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.collect {|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    new_review = Review.new(self, resturant, rating)
  end

  def num_reviews
    Review.all.map{|review| review.restaurant}.count
  end

  def self.find_by_name(name)
    binding.pry
        self.each do |name|
      name == name.customer
    end
  end

    def self.find_all_by_given_name(name)
      Review.each do |name|
        if name == self.given_name
          self
        end
    end
  end

end
