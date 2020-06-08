require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# binding.pry

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
bobdoesportland_round_two = Trip.new("October", portland, bob)
puts " Bob's is always downn!!!!"
bobdoesnyc = Trip.new("February", nyc, bob)
bobdoesseattle = Trip.new("March", seattle, bob)
tammydoesportland = Trip.new("April", portland, tammy)
# tammydoesnyc = Trip.new("May", nyc, tammy)
# tammydoesseattle = Trip.new("June", seattle, tammy)
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
puts portland.trip_count.eql?(4)

puts ".find_all_by_city(city)
  - takes an argument of a city name (as a string) and returns all the listings for that city"
puts Listing.find_all_by_city("Portland").include?(portland)

puts ".most_popular
- finds the listing that has had the most trips"

puts Listing.most_popular.eql?(portland)

puts "#listings
- returns an array of all listings a guest has stayed at
"
puts bob.listings.include?(portland)

puts ".pro_traveller
- returns an array of all guests who have made over 1 trip"

puts Guest.pro_traveller.include?(bob)

puts !Guest.pro_traveller.include?(tammy)

puts ".find_all_by_name(name)
- takes an argument of a name (as a string), returns the all guests with that name"

puts Guest.find_all_by_name("tammy").include?(tammy)
