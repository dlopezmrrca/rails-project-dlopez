class CharacterClan < ApplicationRecord
  belongs_to :character
  belongs_to :clan
end
