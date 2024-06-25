require 'rest-client'
require 'json'


Character.destroy_all

# Creation of Characters
(1..72).each do |page|
  url = "https://dattebayo-api.onrender.com/characters?page=#{page}"
  characters_seed = JSON.parse(RestClient.get(url))


  characters_seed['characters'].each do |character|
    # initialize image_1, image_2 and birthdate with nil
    image_1 = nil
    image_2 = nil
    birthdate = nil

    # check if character['images'] is an array
    if character['images'].is_a?(Array)
      image_1 = character['images'][0]
      image_2 = character['images'][1] if character['images'].length > 1
    end

    # check if character['personal'] is an array
    if character['personal'].is_a?(Hash) && character['personal']['birthdate'].present?
      birthdate = character['personal']['birthdate']
    end

    Character.create(
      id: character['id'],
      name: character['name'],
      image_1: image_1,
      image_2: image_2,
      birthdate: birthdate
    )
  end
end

puts "Total characters seeded: #{Character.count}"
puts "Seed operation completed successfully!"
