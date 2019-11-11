class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :destination_id
      t.integer :origin_id
      t.integer :rocket_id
      t.integer :operator_id
      t.datetime :take_off_time
      t.datetime :landing_time

      t.timestamps
    end
  end
end
