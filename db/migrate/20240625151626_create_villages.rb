class CreateVillages < ActiveRecord::Migration[7.1]
  def change
    create_table :villages do |t|
      t.string :name

      t.timestamps
    end
  end
end
