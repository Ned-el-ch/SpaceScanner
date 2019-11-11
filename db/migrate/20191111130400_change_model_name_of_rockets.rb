class ChangeModelNameOfRockets < ActiveRecord::Migration[6.0]
  def change
    change_column :rockets, :model_name, :ship_model_name
  end
end
