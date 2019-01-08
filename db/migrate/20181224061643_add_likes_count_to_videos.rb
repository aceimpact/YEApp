class AddLikesCountToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :likes_count, :integer
  end
end
