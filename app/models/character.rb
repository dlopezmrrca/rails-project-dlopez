class Character < ApplicationRecord
  belongs_to :village
  belongs_to :clan
  belongs_to :family
  has_many :character_jutsus
  has_many :jutsus, through: :character_jutsus

  validates :name, presence: true
  validates :birthdate, presence: true, comparison: { less_than_or_equal_to: Date.today }
  validates :sex, presence: true, inclusion: { in: %w[male female other] }
end
