# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  user = User.new(name: Faker::Name.name , email: Faker::Internet.email, password: Faker::Internet.password ,description: Faker::Beer.brand)
  user.save
  "#{user.id} has been created"
end


5.times do
  beer = Beer.new(name: Faker::Beer.name, price: rand(2...10), description: Faker::Beer.style, user_id:rand(1...10))
  beer.save
  "#{beer.id} has been created"
end
