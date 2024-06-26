class CreateCharacterClans < ActiveRecord::Migration[7.1]
  def change
    create_table :character_clans do |t|
      t.references :character, null: false, foreign_key: true
      t.references :clan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
