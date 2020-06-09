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
    Review.all.select {|review| review.customer == self}.uniq  
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    Review.all.count {|review| review.customer == self}
  end 

  # def self.find_by_name(given_name, family_name)
  #    #@@all.given_name == given_name 
  #    #@@all.family_name == family_name 
  #    #use find to return the first value from customer.all
  #    all.find |customer| {customer.given_name,family_name == self} 
  # end 

  def self.find_all_by_given_name(given_name)
    all.select {|customers| customers.given_name == self} 
  end 

end
