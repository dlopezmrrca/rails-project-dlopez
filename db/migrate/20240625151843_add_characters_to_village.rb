class AddCharactersToVillage < ActiveRecord::Migration[7.1]
  def change
    add_reference :villages, :characters, null: false, foreign_key: true
  end
end
