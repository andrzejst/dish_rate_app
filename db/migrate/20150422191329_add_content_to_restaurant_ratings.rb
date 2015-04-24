class AddContentToRestaurantRatings < ActiveRecord::Migration
  def change
    add_column :restaurant_ratings, :content, :text
  end
end
