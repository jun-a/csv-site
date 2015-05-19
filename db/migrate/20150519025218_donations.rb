class Donations < ActiveRecord::Migration
  def change
      create_table :donations do |t|
        t.integer :price_per_employee  #ひとりあたりの寄付金額     
        t.references :client_user
        t.references  :client
        t.text  :donation_message #寄付ごとのメッセージ

        t.timestamp  null: false
    end
  end
end
