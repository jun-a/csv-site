class Donations < ActiveRecord::Migration
  def change
      create_table :donations do |t|
        t.string  :employee_name  #会社のメンバーの名前
        t.integer :price_per_employee  #ひとりあたりの寄付金額    
        t.string  :donations_purpose  #寄付目的
        t.string  :donation_pay_method  #寄付についての支払い方法
        t.references :client_user
        t.references  :client
        t.text  :donation_message #寄付ごとのメッセージ

        t.timestamp  null: false
    end
  end
end
