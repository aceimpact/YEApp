class ChangeColumnToVideo < ActiveRecord::Migration[5.1]
  def up
    change_column :videos, :name, :string, null: false
    change_column :videos, :uuid, :string, null: false
    change_column :videos, :comment, :text, null: false
      change_column :videos, :user_id, :integer, null: false
  end

  def down
    change_column :videos, :name, :string
    change_column :videos, :uuid, :string
    change_column :videos, :comment, :text
    change_column :videos, :user_id, :integer
  end
end
