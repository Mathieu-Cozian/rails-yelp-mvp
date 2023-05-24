# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Restaurant.destroy_all
5.times do
  Restaurant.create(name: Faker::Company.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: Restaurant::CATEGORIES.sample)
  Review.create(rating: (0..5).to_a.sample, restaurant_id: Restaurant.last.id, content: Faker::Lorem.sentence)
end
