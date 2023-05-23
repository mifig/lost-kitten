# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying Pets DB..."
Pet.destroy_all

puts "Generating Pets..."

10.times do 
  pet = Pet.create(name: Faker::Creature::Animal.name, species: Pet::SPECIES.sample)
  puts "Created #{pet.name}!"
end

puts "Finished!"