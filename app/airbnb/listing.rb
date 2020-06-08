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

end
