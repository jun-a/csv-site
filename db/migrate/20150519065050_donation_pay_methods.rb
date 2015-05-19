class DonationPayMethods < ActiveRecord::Migration
  def change
    create_table  :donation_pay_methods  do |t|
      t.string  :donation_pay_method  #寄付についての支払い方法
      t.references  :client


      t.timestamps  null: false
    end 
  end
end
