class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :video_id
      t.references :user_id, foreign_key: true

      t.timestamps null: false
    end
  end
end
