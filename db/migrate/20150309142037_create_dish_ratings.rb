class CreateDishRatings < ActiveRecord::Migration
  def change
    create_table :dish_ratings do |t|
      t.decimal :rate_value
      t.integer :user_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
