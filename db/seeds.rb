require 'rest-client'
require 'json'



(1..72).each do |page|
  url = "https://dattebayo-api.onrender.com/characters?page=#{page}"
  characters_seed = JSON.parse(RestClient.get(url))

  characters_seed.each do |character|
    Character.create(
      name: character["name"],
      image_1: character["image_1"],
      image_2: character["image_2"],
      birthdate: character["birthdate"]
    )
  end
end
