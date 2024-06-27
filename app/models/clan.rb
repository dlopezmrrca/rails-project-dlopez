class Clan < ApplicationRecord
  validates :name, presence: true
  has_many :character_clans, through: :characters
  # has_many :characters, through: :character_clans
end
