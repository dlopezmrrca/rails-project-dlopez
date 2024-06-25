class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_1
      t.string :image_2
      t.date :birthdate
      t.string :sex
      t.references :village, null: false, foreign_key: true
      t.references :clan, null: false, foreign_key: true
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
