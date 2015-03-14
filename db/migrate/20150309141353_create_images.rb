class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name, :null => false
      t.text :description
      t.string :location_path

      t.timestamps
    end
  end
end
