class CharacterJutsu < ApplicationRecord
  belongs_to :character
  belongs_to :jutsu

  validates :character_id, presence: true
  validates :jutsu_id, presence: true
end
