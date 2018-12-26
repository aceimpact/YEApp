class RemoveLikescountFromVideos < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :likes_count, :string
  end
end
