# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: "1, rue Emile Zola", phone_number: "06 30 44 07 73", category: "french")
tour_d_argent.save!

chez_gladines = Restaurant.new(name: "Chez Gladines", address: "1, rue Victor Hugo", phone_number: "06 30 44 07 73", category: "french")
chez_gladines.save!

le_lion_et_lagneau = Restaurant.new(name: "Le lion et l'agneau", address: "1, rue Emile Pehant", phone_number: "06 30 44 90 73", category: "french")
le_lion_et_lagneau.save!

mcdo = Restaurant.new(name: "mcdo", address: "1, rue Pierre Hermes", phone_number: "06 30 44 88 73", category: "belgian")
mcdo.save!

petit_francois = Restaurant.new(name: "Le petit françois", address: "12, rue Emile Zola", phone_number: "06 30 65 07 73", category: "french")
petit_francois.save!
puts 'Finished!'

require 'faker'

puts 'Creating 5 fake reviews...'
5.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating:  rand(0..5),
    restaurant: Restaurant.all.sample
  )
  review.save!
end
puts 'Finished!'