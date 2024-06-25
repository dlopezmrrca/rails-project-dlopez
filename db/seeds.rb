require 'net/http'
require 'json'

# Clear database
Character.delete_all
Clan.delete_all
Village.delete_all

# Define URLs
characters_url = URI('https://dattebayo-api.onrender.com/characters')

# Get JSON data
characters_response = Net::HTTP.get(characters_url)
characters = JSON.parse(characters_response)

# Imprimir el nombre del primer personaje y su tipo de dato
first_character = characters.first
character_name = first_character['name']

puts "Nombre del primer personaje:"
puts character_name
puts "Tipo de dato del nombre:"
puts character_name.class
