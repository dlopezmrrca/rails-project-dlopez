class Character < ApplicationRecord
  # validations
  validates :name, presence: true
  validates :image_1, presence: true
  validates :image_2, presence: true
  validates :birthdate, presence: true
end
