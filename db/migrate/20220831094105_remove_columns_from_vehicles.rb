class RemoveColumnsFromVehicles < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehicles, :location, :string
  end
end
