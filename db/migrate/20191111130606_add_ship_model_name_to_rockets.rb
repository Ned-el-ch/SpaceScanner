class AddShipModelNameToRockets < ActiveRecord::Migration[6.0]
  def change
    add_column :rockets, :ship_model_name, :string
  end
end
