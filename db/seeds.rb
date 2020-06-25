# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."
5.times do
   Flat.create!(
      name: Faker::Hipster.sentence,
      address: Faker::Address.street_name,
      description: Faker::Hipster.sentences(number: 2),
      price_per_night: rand(80..120),
      number_of_guests: rand(1..5)
    )
end

puts "Finished!"
