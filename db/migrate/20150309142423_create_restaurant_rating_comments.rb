class CreateRestaurantRatingComments < ActiveRecord::Migration
  def change
    create_table :restaurant_rating_comments do |t|
      t.text :content, :null => false
      t.integer :user_id, :null => false
      t.integer :restaurant_rating_id, :null => false

      t.timestamps
    end
  end
end
