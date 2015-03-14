class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :null => false
      t.text :content, :null => false
      t.integer :user_id, :null => false
      t.integer :image_id, :null => false
      t.integer :rating_id, :null => false

      t.timestamps
    end
  end
end
