rake class AddPostIdToDishRatings < ActiveRecord::Migration
  def change
    add_column :dish_ratings, :post_id, :integer
    add_index :dish_ratings, :post_id
  end
end
