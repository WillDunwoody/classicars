class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :make
      t.integer :year
      t.string :type
      t.integer :passengers
      t.text :description
      t.string :location
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
