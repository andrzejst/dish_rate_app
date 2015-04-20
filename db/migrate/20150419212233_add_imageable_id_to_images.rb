class AddImageableIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :imageable_id, :integer
    add_index :images, :imageable_id
  end
end
