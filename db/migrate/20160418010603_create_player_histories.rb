class CreatePlayerHistories < ActiveRecord::Migration
  def change
    create_table :player_histories do |t|
      t.string :club
      t.integer :period
      t.string :performance
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
