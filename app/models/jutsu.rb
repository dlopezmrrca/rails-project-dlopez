class Jutsu < ApplicationRecord
  validates :name, presence: true
  validates :character_id, presence: true
  belongs_to :character

  def self.ransackable_attributes(auth_object = nil)
    ["character_id", "created_at", "id", "id_value", "name", "updated_at"]
  end
end
