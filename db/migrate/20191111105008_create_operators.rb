class CreateOperators < ActiveRecord::Migration[6.0]
  def change
    create_table :operators do |t|
      t.string :name
      t.integer :rating
      t.string :range

      t.timestamps
    end
  end
end
