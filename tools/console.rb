# require_relative '../config/environment.rb'

# def reload
#   load 'config/environment.rb'
# end

# binding.pry

require_relative '../app/airbnb/guest.rb'
require_relative '../app/airbnb/listing.rb'
require_relative '../app/airbnb/trip.rb'
#Listings
portland = Listing.new("Portland")
seattle = Listing.new("Seattle")
nyc = Listing.new("New York City")

#Guests
bob = Guest.new("Bob")
tammy = Guest.new("Tammy")
billy = Guest.new("Billy")

#Trips
bobdoesportland = Trip.new("January", portland, bob)
bobdoesnyc = Trip.new("February", nyc, bob)
bobdoesseattle = Trip.new("March", seattle, bob)
tammydoesportland = Trip.new("April", portland, tammy)
tammydoesnyc = Trip.new("May", nyc, tammy)
tammydoesseattle = Trip.new("June", seattle, tammy)
billydoesportland = Trip.new("July", portland, billy)
billydoesnyc = Trip.new("August", nyc, billy)
billydoesseattle = Trip.new("September", seattle, billy)


puts "#guests
- returns an array of all guests who have stayed at a listing"
puts portland.guests.include?(bob)

puts "#trips
- returns an array of all trips at a listing"
puts portland.trips.include?(bobdoesportland)

puts "#trip_count
  - returns the number of trips that have been taken to that listing"
puts portland.trip_count.eql?(3)
