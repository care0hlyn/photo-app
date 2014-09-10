class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end

    create_table :photos do |t|
      t.integer :user_id

      t.timestamps
    end

    create_table :tags do |t|
      t.integer :user_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
