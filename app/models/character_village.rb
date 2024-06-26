class CharacterVillage < ApplicationRecord
  belongs_to :character
  belongs_to :village
end
