class AddCaptionColumn < ActiveRecord::Migration
  def change
    add_column :photos, :caption, :string
    add_column :users, :name, :string
  end
end
