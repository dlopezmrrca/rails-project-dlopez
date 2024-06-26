class Clan < ApplicationRecord
  validates :name, presence: true
  has_many :character_clans
  has_many :characters, through: :character_clans
end
