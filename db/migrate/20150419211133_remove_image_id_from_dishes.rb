class RemoveImageIdFromDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :image_id, :integer
  end
end