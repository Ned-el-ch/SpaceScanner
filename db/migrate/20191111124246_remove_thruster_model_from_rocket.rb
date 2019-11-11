class RemoveThrusterModelFromRocket < ActiveRecord::Migration[6.0]
  def change
    remove_column :rockets, :thruster_model
  end
end
