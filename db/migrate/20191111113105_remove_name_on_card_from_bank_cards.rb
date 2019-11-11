class RemoveNameOnCardFromBankCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :bank_cards, :name_on_card
  end
end
