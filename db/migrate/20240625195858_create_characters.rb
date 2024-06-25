class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_1
      t.string :image_2
      t.string :birthdate

      t.timestamps
    end
  end
end
