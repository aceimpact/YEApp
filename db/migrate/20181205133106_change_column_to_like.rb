class ChangeColumnToLike < ActiveRecord::Migration[5.1]
  def up
     change_column :likes, :video_id, :integer, null: false
     change_column :likes, :user_id, :integer, null: false
  end

  def down
    change_column :likes, :video_id, :integer
    change_column :likes, :user_id, :integer
  end
end
