class Trip 
  attr_accessor :date, :listing, :guest
  @@all = []
  def initialize(date, listing, guest)
    @date = date
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end
end