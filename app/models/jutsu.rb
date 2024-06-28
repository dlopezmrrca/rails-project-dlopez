class Jutsu < ApplicationRecord
  validates :name, presence: true
  belongs_to :character
end
