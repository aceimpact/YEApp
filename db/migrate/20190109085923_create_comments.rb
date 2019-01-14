class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.references :user, foreign_key: true, null: false
      t.references :video, foreign_key: true, null: false
      t.timestamps  null: false
    end
  end
end
