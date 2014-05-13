class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uuid, :null => false
      t.string :name, :null => false
      t.float :money, :null => false

      t.timestamps
    end
    add_index :users, :uuid, :unique => true
  end
end
