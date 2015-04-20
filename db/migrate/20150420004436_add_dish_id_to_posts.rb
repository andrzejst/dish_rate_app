class AddDishIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :dish_id, :integer
  end
end
