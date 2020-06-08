class Listing
  attr_reader :city
  @@all = []
  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end
  
  def trips
    Trip.all.select{|trip| trip.listing == self}
  end

  def guests
    self.trips.map{|listing| listing.guest}
  end

  def trip_count
    self.trips.count 
  end

  def self.find_all_by_city(city_name)
    self.all.select do |listing|
      listing.city.downcase == city_name.downcase
    end
  end

  def self.most_popular
    self.all.max_by do |listing|
      listing.trip_count  
    end
  end

end
