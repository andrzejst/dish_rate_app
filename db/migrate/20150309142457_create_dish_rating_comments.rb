class CreateDishRatingComments < ActiveRecord::Migration
  def change
    create_table :dish_rating_comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :dish_rating_id

      t.timestamps
    end
  end
end
