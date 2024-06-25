class CreateJutsus < ActiveRecord::Migration[7.1]
  def change
    create_table :jutsus do |t|
      t.string :jutsu_name

      t.timestamps
    end
  end
end
