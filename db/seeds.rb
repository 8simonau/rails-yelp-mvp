# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Faker::Config.locale = 'fr'

(1..10).each do |restaurant|
  restaurant = Restaurant.new(name: Faker::Company.name,
    address: Faker::Address.full_address,
    category: Restaurant::VALID_CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number)
  restaurant.save
end
