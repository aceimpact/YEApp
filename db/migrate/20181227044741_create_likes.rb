class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true, null: false
      t.references :video, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
