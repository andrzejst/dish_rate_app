class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :image_id
      t.integer :rating_id

      t.timestamps
    end
  end
end
