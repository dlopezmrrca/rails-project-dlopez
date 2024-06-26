class Village < ApplicationRecord
  # Validations
  validates :name, presence: true
  # Associations
  has_many :characters_villages
  has_many :characters, through: :characters_villages
end
