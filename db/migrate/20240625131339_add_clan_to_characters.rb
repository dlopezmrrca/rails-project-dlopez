class AddClanToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_reference :characters, :clan, null: false, foreign_key: true
  end
end
