class Village < ApplicationRecord
  # Associations
  has_many :characters

  # Validations
  validates :name, presence: true
end
