class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.text :address, :null => false
      t.string :location, :null => false
      t.decimal :gps_lat, :null => false
      t.decimal :gps_lon, :null => false
      t.string :category, :null => false
      t.integer :image_id, :null => false

      t.timestamps
    end
  end
end
