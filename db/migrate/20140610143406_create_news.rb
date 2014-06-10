class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
