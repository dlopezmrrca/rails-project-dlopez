class Character < ApplicationRecord
  validates :name, presence: true

  # Associations
  # Jutsus
  has_many :jutsus, dependent: :destroy
  # Clans
  has_many :character_clans
  has_many :clans, through: :character_clans
  # Villages
  has_many :character_villages
  has_many :villages, through: :character_villages
end
