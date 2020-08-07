class AddPointsToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :points, :integer
  end
end
