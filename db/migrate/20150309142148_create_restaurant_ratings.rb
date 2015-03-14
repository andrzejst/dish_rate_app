class CreateRestaurantRatings < ActiveRecord::Migration
  def change
    create_table :restaurant_ratings do |t|
      t.decimal :rate_value, :null => false
      t.integer :user_id, :null => false
      t.integer :restaurant_id, :null => false

      t.timestamps
    end
  end
end
