class CreateRestaurantRatingComments < ActiveRecord::Migration
  def change
    create_table :restaurant_rating_comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :restaurant_rating_id

      t.timestamps
    end
  end
end
