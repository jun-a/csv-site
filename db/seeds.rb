
#coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#Todoタスク
#Active_reportを作成

#supporter_voiceを作成

#from_client_messageを作成

#Imageの作成



#Categoryの作成
  Category.create(name: "報告")
  Category.create(name: "news")
  Category.create(name: "その他")

#rake db:seed でエラーが出たので一時回避

#Donation_purposeの作成
  DonationPurpose.create(donation_purpose: "人材の普及")
  DonationPurpose.create(donation_purpose: "資源の供給")
  DonationPurpose.create(donation_purpose: "途上国の発展") 


#Client_userを10個追加
  10.times do |number|
    ClientUser.create(name:"client_user#{number}",
                       email:"client_user#{number}@sample.com", 
                       password:"sample#{number}")
  end

#Employeeの作成
  10.times do |number|
    Employee.create(name:"client_user#{number}", 
                    age: number + 20, 
                    client_position:"number for #{number}")
  end  

#Sexの作成
  Sex.create(sex:"男")
  Sex.create(sex:"女")
  Sex.create(sex:"その他")

#Contract_statusの作成
  ContractStatus.create(contract_status:"法人(新規)")
  ContractStatus.create(contract_status:"法人(既存の取引あり)")
  ContractStatus.create(contract_status:"その他")



#Clientを50個作成
  15.times do |number|
    Client.create(name:"client#{number}",
                  address:"東京都港区1-#{number}-#{number + 2}",
                  tel_number:"03-2324-321#{number}", 
                  email:"client#{number}@sample#{number}.com", 
                  client_president:"鈴木#{number}郎",
                  client_manager:"佐藤#{10 - number}郎") 
  end

#Donationの作成
  10.times do |number|
    Donation.create(
                    price_per_employee: number * 1000, 
                    donation_message:"good luck! for #{number}")
  end


#Admin_userを10個追加
  10.times do |number|
    AdminUser.create(name:"admin_user#{number}",
                      email:"admin_user#{number}@sample.com", 
                      password:"sample#{number}")
  end


#Tagの作成
  Tag.create(name:"寄付金1億以上")
  Tag.create(name:"途上国")
  Tag.create(name:"カット関係") 


#実行タスク

#emailに書き直し,contact_statusは別テーブルへ
#固定されるデータについては、別
#class Client < ActiveRecord::Base の書き換え

