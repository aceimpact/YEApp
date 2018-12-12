class RenameVudeoIdColumnToUuid < ActiveRecord::Migration[5.1]
  def change
    rename_column :videos, :video_id, :uuid
  end
end
