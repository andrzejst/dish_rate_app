class RemoveImageIdFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :image_id, :integer
  end
end