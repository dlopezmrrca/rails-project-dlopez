class Village < ApplicationRecord
  has_many :characters

  validates :village_name, presence: true, uniqueness: true
end
