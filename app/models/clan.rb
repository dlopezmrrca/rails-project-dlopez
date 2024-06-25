class Clan < ApplicationRecord
  has_many :characters

  validates :clan_name, presence: true, uniqueness: true
end
