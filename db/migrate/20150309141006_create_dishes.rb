class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.string :category, :null => false
      t.integer :image_id, :null => false
      t.integer :menu_id, :null => false

      t.timestamps
    end
  end
end
