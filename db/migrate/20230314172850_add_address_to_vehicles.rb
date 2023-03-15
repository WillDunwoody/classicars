class AddAddressToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :address, :string
  end
end
