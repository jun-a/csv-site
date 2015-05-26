class Clients < ActiveRecord::Migration
  def change
    create_table  :clients do |t|
      t.string  :name
      t.string  :address
      t.string  :tel_number
      t.string  :client_email
      t.string  :client_president  #クライアントの社長名  
      t.string  :client_manager #クライアントの担当者
      t.text    :client_description #企業説明
      t.integer :price_per_employee  #ひとりあたりの寄付金額
      t.references  :contract_status  #リジョブとの契約関係
      t.references :image
      t.references :donation_purpose  #個別の寄付目的
      t.references :donation_pay_method #支払い方法

      t.timestamps  null: false
    end
  end
end

