class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :location
      t.decimal :gps_lat
      t.decimal :gps_lon
      t.string :category
      t.integer :image_id

      t.timestamps
    end
  end
end
