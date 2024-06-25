class Character < ApplicationRecord
  belongs_to :village
  belongs_to :clan

  validates :name, presence: true, uniqueness: true
  validates :image_1, presence: true
  validates :birthdate, presence: true
end
