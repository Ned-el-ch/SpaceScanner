class ChangeColumnCvcOnBankCards < ActiveRecord::Migration[6.0]
  def change
    rename_column :bank_cards, :cvc_code, :ccv_code
  end
end
