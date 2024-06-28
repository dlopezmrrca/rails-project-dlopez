class Clan < ApplicationRecord
  validates :name, presence: true
  # Associations
  has_many :character_clans, dependent: :destroy
  has_many :characters, through: :character_clans
end
