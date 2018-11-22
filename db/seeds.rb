# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name: 'Light & Spacious Garden Loft',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Nice & Cosy Flat',
    address: '10 Oxford Street London W9 1DT',
    description: 'Well it is a nice flat',
    price_per_night: 50,
    number_of_guests: 2
  },
  {
    name: 'Light & Spacious Offices',
    address: '16 villa Gaudelet 75011 Paris',
    description: 'La meilleur expérience de ma vie',
    price_per_night: 250,
    number_of_guests: 60
  },
  {
    name: 'Cosy flat near Buttes Chaumont',
    address: '6 rue Euryale Dehaynin 75019 Paris',
    description: 'Home Sweet Home',
    price_per_night: 45,
    number_of_guests: 2
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
