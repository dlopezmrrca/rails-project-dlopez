class Family < ApplicationRecord
  has_many :characters

  validates :family_name, presence: true, uniqueness: true
end
