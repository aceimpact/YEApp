class CreateTree < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string "name"
      t.string "video_id"
      t.integer "user_id"
      t.text "comment"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
