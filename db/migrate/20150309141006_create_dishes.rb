class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :image_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
