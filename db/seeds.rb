# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
theater = Theater.create!(name: "Riverside", location: "Reno", hours: 1400, matinee: true)
panda = theater.movies.create!(name: "Kung Fu Panda", rating: 2, adult_supervision: false)
matrix = theater.movies.create!(name: "The Matrix", rating: 4, adult_supervision: true)
