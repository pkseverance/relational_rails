class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :is_installed
      t.integer :hours_played
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
