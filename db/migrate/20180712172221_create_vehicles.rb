class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.integer :mileage, default: 0
      t.integer :mpg, default: 0
      t.belongs_to :user
      
      
      t.timestamps
    end
  end
end
