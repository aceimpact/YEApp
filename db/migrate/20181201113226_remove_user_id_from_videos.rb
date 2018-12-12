class RemoveUserIdFromVideos < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :user_id, :integer
  end
end
