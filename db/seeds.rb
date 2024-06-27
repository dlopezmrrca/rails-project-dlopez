Character.destroy_all
Jutsu.destroy_all
Clan.destroy_all
CharacterClan.destroy_all

# Seed v 1.0
(1..72).each do |page|
  url = "https://dattebayo-api.onrender.com/characters?page=#{page}"
  characters_seed = JSON.parse(RestClient.get(url))

  characters_seed['characters'].each do |character|
    # Initialize variables
    image_1 = nil
    image_2 = nil
    birthdate = nil

    # Assign images if present
    if character['images'].is_a?(Array)
      image_1 = character['images'][0]
      image_2 = character['images'][1] if character['images'].length > 1
    end

    # Assign birthdate if present
    if character['personal'].is_a?(Hash) && character['personal']['birthdate'].present?
      birthdate = character['personal']['birthdate']
    end

    # Create Character record
    char = Character.create(
      id: character['id'],
      name: character['name'],
      image_1: image_1,
      image_2: image_2,
      birthdate: birthdate
    )

    # Create Jutsu records
    if character['jutsu'].is_a?(Array)
      character['jutsu'].each do |jutsu_name|
        Jutsu.create(
          name: jutsu_name,
          character: char
        )
      end
    end
  end
end

# Seed clans
(1..4).each do |page|
url = "https://dattebayo-api.onrender.com/clans?page=#{page}"
clans_seed = JSON.parse(RestClient.get(url))

clans_seed['clans'].each do |clan_data|
  clan = Clan.create(
    id: clan_data['id'],
    name: clan_data['name']
  )

  clan_data['characters'].each do |character_id|
    character = Character.find_by(id: character_id)
    if character && clan
      CharacterClan.create(
        character: character,
        clan: clan
      )
    end
  end
end
end


puts "Total characters seeded: #{Character.count}"
puts "Total jutsus seeded: #{Jutsu.count}"
puts "Total clans seeded: #{Clan.count}"
puts "Total character-clan associations seeded: #{CharacterClan.count}"
puts "Seed operation completed successfully!"
