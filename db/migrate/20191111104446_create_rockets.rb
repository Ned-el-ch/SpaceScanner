class CreateRockets < ActiveRecord::Migration[6.0]
  def change
    create_table :rockets do |t|
      t.string :nickname
      t.string :model_name
      t.integer :speed
      t.integer :passenger_capacity
      t.string :thruster_model

      t.timestamps
    end
  end
end
