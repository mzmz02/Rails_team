class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :country
      t.text :content
      t.string :image_path

      t.timestamps
    end
  end
end
