# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
sushi_yana = { name: "Sushi Yana", address: "Flughafenstr. 43", phone_number:"030 345 32 21", category: "chinese" }
bereket_doner = { name: "Bereket Döner", address: "Karl Marxstr. 21", phone_number:"030 122 323 31 37", category: "italian" }
pizza_pezzi = { name: "Pizza a pezzi", address: "Sonnenalle. 10", phone_number:"030 439 43 73", category: "italian" }
mami_ramen = { name: "Mami Ramen", address: "Emserstr. 59", phone_number:"030 869 11 97", category: "japanese" }
sushi_muri = { name: "Sushi Muri", address: "Berlinerstr. 23", phone_number:"030 222 53 60", category: "japanese" }


[ sushi_yana, bereket_doner, pizza_pezzi, mami_ramen, sushi_muri ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
