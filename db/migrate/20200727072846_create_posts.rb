class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :country
      t.text :content
      t.string :image_path

      t.timestamps
    end
  end
end
