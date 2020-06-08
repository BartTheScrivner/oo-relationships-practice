class Trip 
  attr_accessor :id, :listing, :guest
  @@all = []
  def initialize(id, listing, guest)
    @id = id
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end
end