class Character < ApplicationRecord
  belongs_to :village
  belongs_to :clan
  belongs_to :family
  has_many :character_jutsus
  has_many :jutsus, through: :character_jutsus
end
