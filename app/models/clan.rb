class Clan < ApplicationRecord
  validates :name, presence: true
  validates :name, confirmation: { case_sensitive: false }
  # Associations
  has_many :character_clans, dependent: :destroy
  has_many :characters, through: :character_clans

  def self.ransackable_associations(auth_object = nil)
    ["character_clans", "characters"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "name", "updated_at"]
  end
end
