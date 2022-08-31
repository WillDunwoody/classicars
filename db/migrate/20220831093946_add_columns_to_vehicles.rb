class AddColumnsToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :city, :string
    add_column :vehicles, :country, :string
  end
end
