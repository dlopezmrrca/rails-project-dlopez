class AddVillageToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_reference :characters, :village, null: false, foreign_key: true
  end
end
