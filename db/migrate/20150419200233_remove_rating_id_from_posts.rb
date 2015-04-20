class RemoveRatingIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :rating_id, :integer
  end
end