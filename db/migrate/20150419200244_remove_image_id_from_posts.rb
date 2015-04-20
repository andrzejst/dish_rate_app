class RemoveImageIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :image_id, :integer
  end
end