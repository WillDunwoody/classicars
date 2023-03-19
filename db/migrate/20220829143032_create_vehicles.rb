class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :v_model
      t.string :v_make
      t.integer :year
      t.string :vehicle_type
      t.integer :passengers
      t.text :description
      t.string :location
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
