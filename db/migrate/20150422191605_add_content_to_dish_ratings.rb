class AddContentToDishRatings < ActiveRecord::Migration
  def change
    add_column :dish_ratings, :content, :text
  end
end
