require File.expand_path("../../config/environment", __FILE__)
#coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Active_reportを作成

#emailに書き直し,contact_statusは別テーブルへ



#supporter_voiceを作成

#from_client_messageを作成




#Imageの作成



#Categoryの作成
  Category.create(name:"報告")
  Category.create(name:"news")
  Category.create(name:"その他")

#Donation_porposeの作成
  Donation_porpose.create(name:"人材の普及")
  Donation_porpose.create(name:"資源の供給")
  Donation_porpose.create(name:"途上国の発展")  

#Employeeの作成
  10.times do |number|
    Employee.create(name:"client_user#{number}", 
                    age: number + 20, 
                    client_position:"number for #{number}")
  end  

#Donation_pay_methodの作成
  Donation_pay_method.create(name:"現金振込")
  Donation_pay_method.create(name:"口座振替")
  Donation_pay_method.create(name:"請求書発行")   

#Sexの作成
  Sex.create(name:"男")
  Sex.create(name:"女")
  Sex.create(name:"その他")

#Contract_statusの作成
  Contract_status.create(name:"法人(新規)")
  Contract_status.create(name:"法人(既存の取引あり)")
  Contract_status.create(name:"その他")


#うまくいかなかったもの
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
    Donation.create(employee_name:"member-#{number}", 
                    price_per_employee: number * 1000, 
                    donation_message:"good luck! for #{number}")
  end

#Client_userを10個追加
  10.times do |number|
    Client_user.create(name:"client_user#{number}",
                       email:"client_user#{number}@sample.com", 
                       password:"sample#{number}")
  end


#Admin_userを10個追加
  10.times do |number|
    Admin_user.create(name:"admin_user#{number}",
                      email:"admin_user#{number}@sample.com", 
                      password:"sample#{number}")
  end

#Tagの作成
  Tag.create(name:"寄付金1億以上")
  Tag.create(name:"途上国")
  Tag.create(name:"カット関係")  











