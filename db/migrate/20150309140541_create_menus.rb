class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.boolean :is_active
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
