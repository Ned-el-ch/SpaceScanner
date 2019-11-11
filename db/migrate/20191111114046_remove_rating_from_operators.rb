class RemoveRatingFromOperators < ActiveRecord::Migration[6.0]
  def change
    remove_column :operators, :rating
  end
end
