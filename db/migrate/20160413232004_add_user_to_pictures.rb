class AddUserToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :user_id, :integer
    add_index :pictures, :user_id
  end
end
