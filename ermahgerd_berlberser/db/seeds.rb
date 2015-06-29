# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pokemon_data = []
pokemon_data[0] = nil
(155..200).each do |number|
  pokemon_data[number] = HTTParty.get("http://pokeapi.co/api/v1/pokemon/#{number}/")
end

puts pokemon_data[155]["name"]

base_uri = "http://pokeapi.co"

pokemon_data.each do |pokemon|
  if pokemon #only run when array entry is not nil
    pokemon_description = HTTParty.get(base_uri + pokemon["descriptions"][0]["resource_uri"])
    pokemon_sprite = HTTParty.get(base_uri + pokemon["sprites"][0]["resource_uri"])
    Pokemon.create(name: pokemon["name"], 
                   number: pokemon["national_id"],
                   description: pokemon_description["description"],
                   sprite: base_uri + pokemon_sprite["image"])
  end
end

puts Pokemon.find(1).description