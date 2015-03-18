class CreateDishRatings < ActiveRecord::Migration
  def change
    create_table :dish_ratings do |t|
      t.decimal :rate_value, :null => false
      t.integer :user_id, :null => false
      t.integer :dish_id, :null => false

      t.timestamps
    end
  end
end
