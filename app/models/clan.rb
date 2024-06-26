class Clan < ApplicationRecord
  # Validations
  validates :name, presence: true
  # Associations
  has_many :characters_clans
  has_many :characters, through: :characters_clans
end
