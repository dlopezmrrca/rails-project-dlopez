class Clan < ApplicationRecord
  validates :name, presence: true
  validates :name, confirmation: { case_sensitive: false }
  # Associations
  has_many :character_clans, dependent: :destroy
  has_many :characters, through: :character_clans
end
