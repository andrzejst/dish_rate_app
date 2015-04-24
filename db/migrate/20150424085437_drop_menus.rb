class DropMenus < ActiveRecord::Migration
  def change
    def up
      drop_table :menus
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  end
end
