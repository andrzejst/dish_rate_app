class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :hashed_pass
      t.string :email

      t.timestamps
    end
  end
end
