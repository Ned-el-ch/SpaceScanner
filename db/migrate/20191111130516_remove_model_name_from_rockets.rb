class RemoveModelNameFromRockets < ActiveRecord::Migration[6.0]
  def change
    remove_column :rockets, :model_name
  end
end
