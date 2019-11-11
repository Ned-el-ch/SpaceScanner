class RemoveLandingTimeFromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_column :trips, :landing_time
  end
end
