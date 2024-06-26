class CreateCharacterVillages < ActiveRecord::Migration[7.1]
  def change
    create_table :character_villages do |t|
      t.references :character, null: false, foreign_key: true
      t.references :village, null: false, foreign_key: true

      t.timestamps
    end
  end
end
