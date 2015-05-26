class Donations < ActiveRecord::Migration
  def change
      create_table :donations do |t|
         
        t.date  :donation_action_month #寄付の実行月    
        t.references :client_user #, :null => false
        t.references  :client
        t.references :receipt_of_money_status
        t.text  :donation_message #寄付ごとのメッセージ
        t.integer :donation_total_amount    #その寄付での合計金額(一旦保存のために使う別テーブルから引き出す)

        t.timestamp  null: false
    end
  end
end
