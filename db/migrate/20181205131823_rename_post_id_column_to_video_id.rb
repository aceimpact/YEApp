class RenamePostIdColumnToVideoId < ActiveRecord::Migration[5.1]
  def change
    rename_column :likes, :post_id, :video_id
  end
end
