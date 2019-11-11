class AddExpiryToBankCards < ActiveRecord::Migration[6.0]
  def change
    add_column :bank_cards, :expiry_month, :integer
    add_column :bank_cards, :expiry_year, :integer
  end
end
