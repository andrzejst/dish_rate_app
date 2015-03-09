class CreateRestaurantRatings < ActiveRecord::Migration
  def change
    create_table :restaurant_ratings do |t|
      t.decimal :rate_value
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
