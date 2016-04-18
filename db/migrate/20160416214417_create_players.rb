class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :jersey
      t.string :name
      t.string :manager
      t.string :status
      t.integer :contract
      t.string :club

      t.timestamps null: false
    end
  end
end
