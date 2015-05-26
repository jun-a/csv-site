class CreateReceiptOfMoneyStatuses < ActiveRecord::Migration
  def change
    create_table :receipt_of_money_statuses do |t|
      t.string :receipt_of_money_status
      

      t.timestamps null: false
    end
  end
end
