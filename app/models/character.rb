class Character < ApplicationRecord
  validates :name, presence: true

  # Associations
  # Jutsus
  has_many :jutsus, dependent: :destroy
  # Clans
  has_many :character_clans, through: :clans
  # has_many :clans, through: :character_clans

end
