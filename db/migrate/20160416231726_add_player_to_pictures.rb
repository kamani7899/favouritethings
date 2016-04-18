class AddPlayerToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :player_id, :integer
  end
end
