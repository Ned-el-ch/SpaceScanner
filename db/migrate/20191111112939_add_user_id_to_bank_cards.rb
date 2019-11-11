class AddUserIdToBankCards < ActiveRecord::Migration[6.0]
  def change
    add_column :bank_cards, :user_id, :integer
  end
end
