class AddReferenceToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :restaurants, index: true
  end
end
