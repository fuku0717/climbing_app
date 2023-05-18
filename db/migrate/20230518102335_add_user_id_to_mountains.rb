class AddUserIdToMountains < ActiveRecord::Migration[6.0]
  def change
    add_column :mountains, :user_id, :integer
  end
end
