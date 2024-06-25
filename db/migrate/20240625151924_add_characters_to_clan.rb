class AddCharactersToClan < ActiveRecord::Migration[7.1]
  def change
    add_reference :clans, :characters, null: false, foreign_key: true
  end
end
