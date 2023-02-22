# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '325435356', category:  'japanese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St,', phone_number: '36357457', category: 'belgian' }
toto_restaurant = { name: 'Toto_restaurant', address: 'Port-Franc 17', phone_number: '753474', category: 'chinese' }
lorem =  { name: 'Lorem', address: 'Chemin de Lausanne 45', phone_number: '4325345', category: 'french' }
ipsum =  { name: 'Ipsum', address: 'Chemin de Renens 54', phone_number: '57675', category: 'italian' }
[dishoom, pizza_east, toto_restaurant, lorem, ipsum].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
