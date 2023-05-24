class RemoveWrongRestaurants2 < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:restaurants, :restaurants)
  end
end
