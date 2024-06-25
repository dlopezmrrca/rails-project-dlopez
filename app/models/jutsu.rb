class Jutsu < ApplicationRecord
  has_many :character_jutsus
  has_many :characters, through: :character_jutsus

  validates :jutsu_name, presence: true, uniqueness: true
end
