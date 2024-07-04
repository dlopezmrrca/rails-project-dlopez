class Character < ApplicationRecord
  validates :name, presence: true
  validates :id, uniqueness: true
  validates :name, confirmation: { case_sensitive: false }

  # Associations
  # Jutsus
  has_many :jutsus, dependent: :destroy
  # Clans
  has_many :character_clans, dependent: :destroy
  has_many :clans, through: :character_clans

  def self.ransackable_associations(auth_object = nil)
    ["character_clans", "clans", "jutsus"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["birthdate", "created_at", "id", "id_value", "image_1", "image_2", "name", "updated_at"]
  end



end
