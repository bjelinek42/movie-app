# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

# 10.times do
#   actor = Actor.new({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, known_for: Faker::Movie.title})
#   actor.save
# end

10.times do
  movie = Movie.new({title: Faker::Movie.title, year: Faker::Date.between(from: '1990-09-23', to: '2021-09-25'), plot: Faker::Movie.quote})
  movie.save
end