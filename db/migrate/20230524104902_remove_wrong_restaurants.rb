class RemoveWrongRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :restaurants_id
  end
end
