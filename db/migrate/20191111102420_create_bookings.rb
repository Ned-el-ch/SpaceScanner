class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :trip_id
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
