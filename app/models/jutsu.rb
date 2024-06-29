class Jutsu < ApplicationRecord
  validates :name, presence: true
  validates :character_id, presence: true
  belongs_to :character
end
