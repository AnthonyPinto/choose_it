class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :parent_id
      t.string :title, null: false
      t.string :body, null: false

      t.timestamps
    end
    add_index :posts, :parent_id
  end
end
