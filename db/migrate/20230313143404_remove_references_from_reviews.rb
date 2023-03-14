class RemoveReferencesFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :user, null: false, foreign_key: true
    remove_reference :reviews, :vehicle, null: false, foreign_key: true
  end
end
