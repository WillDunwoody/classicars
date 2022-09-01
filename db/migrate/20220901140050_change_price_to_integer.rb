class ChangePriceToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column(:vehicles, :price, :integer)
  end
end
