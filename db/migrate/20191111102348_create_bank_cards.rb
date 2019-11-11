class CreateBankCards < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_cards do |t|
      t.string :name_on_card
      t.integer :long_card_number
      t.integer :cvc_code
      t.string :billing_address

      t.timestamps
    end
  end
end
