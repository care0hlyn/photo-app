class DropNameColumn < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :password
  end
end
