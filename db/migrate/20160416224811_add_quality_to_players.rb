class AddQualityToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :quality, :string
  end
end
