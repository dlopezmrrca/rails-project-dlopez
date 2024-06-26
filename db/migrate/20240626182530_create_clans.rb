class CreateClans < ActiveRecord::Migration[7.1]
  def change
    create_table :clans do |t|
      t.string :name

      t.timestamps
    end
  end
end
