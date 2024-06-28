class CharacterClan < ApplicationRecord
  validates :character_id, presence: true
  validates :clan_id, presence: true
  belongs_to :character
  belongs_to :clan
end
