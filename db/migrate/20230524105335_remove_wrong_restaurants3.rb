class RemoveWrongRestaurants3 < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:reviews, :restaurants)
  end
end
