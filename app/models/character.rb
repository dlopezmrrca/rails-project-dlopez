class Character < ApplicationRecord
  validates :name, presence: true

  has_many :jutsus, dependent: :destroy
end
