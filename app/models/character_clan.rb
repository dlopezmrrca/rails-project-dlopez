class CharacterClan < ApplicationRecord
  validates :character_id, presence: true
  validates :clan_id, presence: true
  belongs_to :character
  belongs_to :clan

  def self.ransackable_attributes(auth_object = nil)
    ["character_id", "clan_id", "created_at", "id", "id_value", "updated_at"]
  end
end
