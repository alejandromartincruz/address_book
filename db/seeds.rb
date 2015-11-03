# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Lets create your imaginary friends"

(1..25).each do |i|
	Contact.create(name: "Imaginary Friend number #{i}", address: " fake street #{rand(1..1000)}", phone_number: rand(111111111..999999999), email: "fake#{i}@mail.com")
end