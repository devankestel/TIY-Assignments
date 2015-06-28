# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pokemon_data = []
pokemon_data[0] = nil
(1..5).each do |number|
  pokemon_data[number] = HTTParty.get("http://pokeapi.co/api/v1/pokemon/#{number}/")
end

puts pokemon_data[1]["name"]
