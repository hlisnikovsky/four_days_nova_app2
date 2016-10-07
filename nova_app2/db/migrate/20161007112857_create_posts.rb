class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content
      t.datetime :published_at
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :posts, :published_at
    add_index :posts, :user_id
  end
end
