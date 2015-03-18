class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.boolean :is_active, :null => false
      t.integer :restaurant_id, :null => false

      t.timestamps
    end
  end
end
