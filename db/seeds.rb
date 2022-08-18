# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
5 .times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.street_address
  restaurant.category = Restaurant::CATEGORIES.sample
  restaurant.description = Faker::Restaurant.description
  restaurant.save
  5.times do
    review = Review.new
    review.rating = rand(1..5)
    review.content = Faker::Restaurant.review
    review.restaurant = restaurant
    review.save
  end
end
